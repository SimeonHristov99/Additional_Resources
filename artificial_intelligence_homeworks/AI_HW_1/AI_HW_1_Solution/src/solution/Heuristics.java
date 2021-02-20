package solution;

public class Heuristics {

    // | x1 - x2 | + | y1 - y2 |
    public static int manhattanDistance(Board board) {
        int result = 0;

        int[] data = board.getData();

        for (int i = 0; i < 9; i++) {
            if(data[i] != i && data[i] != 0) {
                result += Math.abs(data[i] % 3 - i % 3) + Math.abs(data[i] / 3 - i / 3);
            }
        }

        return result;
    }

    public static int numberOfUnorderedBlocks(Board board) {
        int result = 0;

        int[] data = board.getData();

        for (int i = 0; i < 9; i++) {
            if(data[i] != 0 && data[i] != i) {
                result += 1;
            }
        }

        return result;
    }

}
