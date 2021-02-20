package solution;

import java.util.HashSet;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.function.Function;

public class SearchStrategies {

    public static State bestFirstSearch(State initial, Function<Board, Integer> heuristic) {
        PriorityQueue<State> frontier = new PriorityQueue<>();

        frontier.add(initial);

        while (!frontier.isEmpty()) {

//            if(frontier.size() >= 1_000_000) {
//                System.out.println("Going to run out of memory.");
//                return null;
//            }

            State currentState = frontier.poll();

            if (currentState.isGoal()) {
                System.out.println("Found goal");
                return currentState;
            }

            Board currentBoard = currentState.getBoard();
            String lastMove = currentState.getOperator();

            Board left = null;
            Board right = null;
            Board up = null;
            Board down = null;

            switch (lastMove) {
                case "left": {
                    left = currentBoard.moveLeft();
                    up = currentBoard.moveUp();
                    down = currentBoard.moveDown();
                    break;
                }
                case "up": {
                    left = currentBoard.moveLeft();
                    up = currentBoard.moveUp();
                    right = currentBoard.moveRight();
                    break;
                }
                case "down": {
                    left = currentBoard.moveLeft();
                    right = currentBoard.moveRight();
                    down = currentBoard.moveDown();
                    break;
                }
                case "right": {
                    right = currentBoard.moveRight();
                    down = currentBoard.moveDown();
                    up = currentBoard.moveUp();
                    break;
                }
                default: {
                    right = currentBoard.moveRight();
                    down = currentBoard.moveDown();
                    up = currentBoard.moveUp();
                    left = currentBoard.moveLeft();
                }
            }

            if(left != null) {
                frontier.add(new State(left, currentState, heuristic.apply(left), 0, "left"));
            }

            if(right != null) {
                frontier.add(new State(right, currentState, heuristic.apply(right), 0, "right"));
            }

            if(up != null) {
                frontier.add(new State(up, currentState, heuristic.apply(up), 0, "up"));
            }

            if(down != null) {
                frontier.add(new State(down, currentState, heuristic.apply(down), 0, "down"));
            }
        }

        System.out.println("ERROR: ! QUEUE WAS EMPTY !");
        return null;
    }

    /*
    * Initilialze priority queue
    * Insert the initial state
    *
    * while the priority queue has at least one element:
    *   current = pop the frnont of the queue
    *   if current is goal:
    *       return current
    *
    * */

    public static State aStar(State initial, Function<Board, Integer> heuristic) {
        PriorityQueue<State> frontier = new PriorityQueue<>();

        frontier.add(initial);

        while (!frontier.isEmpty()) {

            State currentState = frontier.poll();

            if (currentState.isGoal()) {
                System.out.println("Found goal");
                return currentState;
            }

            Board currentBoard = currentState.getBoard();
            String lastMove = currentState.getOperator();

            Board left = null;
            Board right = null;
            Board up = null;
            Board down = null;

            switch (lastMove) {
                case "left": {
                    left = currentBoard.moveLeft();
                    up = currentBoard.moveUp();
                    down = currentBoard.moveDown();
                    break;
                }
                case "up": {
                    left = currentBoard.moveLeft();
                    up = currentBoard.moveUp();
                    right = currentBoard.moveRight();
                    break;
                }
                case "down": {
                    left = currentBoard.moveLeft();
                    right = currentBoard.moveRight();
                    down = currentBoard.moveDown();
                    break;
                }
                case "right": {
                    right = currentBoard.moveRight();
                    down = currentBoard.moveDown();
                    up = currentBoard.moveUp();
                    break;
                }
                default: {
                    right = currentBoard.moveRight();
                    down = currentBoard.moveDown();
                    up = currentBoard.moveUp();
                    left = currentBoard.moveLeft();
                }
            }

            if(left != null) {
                frontier.add(new State(left, currentState, heuristic.apply(left), currentState.getPathCost() + 1, "left"));
            }

            if(right != null) {
                frontier.add(new State(right, currentState, heuristic.apply(right), currentState.getPathCost() + 1, "right"));
            }

            if(up != null) {
                frontier.add(new State(up, currentState, heuristic.apply(up), currentState.getPathCost() + 1, "up"));
            }

            if(down != null) {
                frontier.add(new State(down, currentState, heuristic.apply(down), currentState.getPathCost() + 1, "down"));
            }
        }

        System.out.println("ERROR: ! QUEUE WAS EMPTY !");
        return null;
    }

}
