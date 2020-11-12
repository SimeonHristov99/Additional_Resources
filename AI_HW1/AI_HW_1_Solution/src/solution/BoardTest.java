package solution;

import java.util.Arrays;

public class BoardTest {

    public static void printState(State state) {
        if (state.getParent() == null) {
            System.out.println(state.getOperator());
            return;
        }

        System.out.println(state.getOperator());
        printState(state.getParent());
    }

    public static void main(String[] args) {
        Board exampleBoard = new Board();
        System.out.println(Arrays.toString(exampleBoard.getData()));

        System.out.println(exampleBoard);

        Board movedUp = exampleBoard.moveUp();
        if (movedUp != null) {
            System.out.println(movedUp);
        }
        System.out.println(exampleBoard.moveDown());
        System.out.println(exampleBoard.moveRight());
        System.out.println(exampleBoard.moveLeft());

        State exampleState = new State(exampleBoard, null, 0, 0, "start");

        int md = Heuristics.manhattanDistance(exampleState.getBoard());

        System.out.printf("MD for example board: %d\n", md);

        md = Heuristics.numberOfUnorderedBlocks(exampleState.getBoard());
        System.out.printf("NOB for example board: %d\n", md);

        long startTime = System.currentTimeMillis();
        State result = SearchStrategies.aStar(exampleState, Heuristics::manhattanDistance);
        long stopTime = System.currentTimeMillis();
        Runtime runtime = Runtime.getRuntime(); // Get the Java runtime
        runtime.gc();

        System.out.println("Time taken: " + (stopTime - startTime));
        System.out.println("Used memory in bytes: " + (runtime.totalMemory() - runtime.freeMemory()));

        if (result == null) {
            System.exit(0);
        }
        System.out.println(result);
        System.out.println("About the show path for MD");
        printState(result);

        startTime = System.currentTimeMillis();
        result = SearchStrategies.aStar(exampleState, Heuristics::numberOfUnorderedBlocks);
        stopTime = System.currentTimeMillis();
        runtime = Runtime.getRuntime(); // Get the Java runtime
        runtime.gc();


        if (result == null) {
            System.exit(0);
        }
        System.out.println("Time taken: " + (stopTime - startTime));
        System.out.println("Used memory in bytes: " + (runtime.totalMemory() - runtime.freeMemory()));
        System.out.println(result);
        System.out.println("\n\nAbout the show path for NOB");
        printState(result);

        System.out.println("\n\n\n\nTesting best-first\n\n\n\n");
        result = SearchStrategies.bestFirstSearch(exampleState, Heuristics::manhattanDistance);
        if (result == null) {
            System.exit(0);
        }
        System.out.println("About the print result from MD");
        printState(result);


        result = SearchStrategies.bestFirstSearch(exampleState, Heuristics::numberOfUnorderedBlocks);
        if (result == null) {
            System.exit(0);
        }
        System.out.println("About the print result from NOB");
        printState(result);

    }

}
