package solution;

import java.util.*;

public class Board {

    private int indexOfZero;
    private int[] data;

    public Board(int indexOfZero, int[] data) {
        setData(data);
    }

    public Board() {
        this(0, null);
    }

    public Board(Board rhs) {
        this(rhs.indexOfZero, rhs.data);
    }

    public int getIndexOfZero() {
        return indexOfZero;
    }

    public int[] getData() {
        return data;
    }

    public void setData(int[] data) {
        if (data == null) {
            // this.data = new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8};
            this.data = new int[9];
            Integer[] toShuffle = {0, 1, 2, 3, 4, 5, 6, 7, 8};
            List<Integer> shuffle = new LinkedList<Integer>(Arrays.asList(toShuffle));
            Collections.shuffle(shuffle);
            shuffle.toArray(toShuffle);

            for (int i = 0; i < 9; i++) {
                this.data[i] = toShuffle[i];

                if(this.data[i] == 0) {
                    indexOfZero = i;
                }
            }
            return;
        }

        this.data = new int[9];

        for (int i = 0; i < 9; i++) {
            this.data[i] = data[i];

            if(this.data[i] == 0) {
                indexOfZero = i;
            }
        }
    }

    public boolean isGoal(){
        for (int i = 0; i < 9; i++) {
            if(this.data[i] != i) {
                return false;
            }
        }

        return true;
    }

    /*0 1 2 3 4 5 6 7 8*/
    /*
     * 0 1 2
     * 3 4 5
     * 6 7 8
     * */
    public Board moveLeft(){
        if(indexOfZero == 0 || indexOfZero == 3 || indexOfZero == 6){
            return null;
        }

        Board result = new Board(this);

        result.data[result.indexOfZero] = result.data[result.indexOfZero - 1];
        result.data[result.indexOfZero - 1] = 0;

        result.indexOfZero -= 1;

        return result;
    }

    public Board moveRight(){
        if(indexOfZero == 2 || indexOfZero == 5 || indexOfZero == 8) {
            return null;
        }

        Board result = new Board(this);

        result.data[result.indexOfZero] = result.data[result.indexOfZero + 1];
        result.data[result.indexOfZero + 1] = 0;

        result.indexOfZero += 1;

        return result;
    }

    public Board moveUp(){
        if(indexOfZero == 0 || indexOfZero == 1 || indexOfZero == 2) {
            return null;
        }

        Board result = new Board(this);

        result.data[result.indexOfZero] = result.data[result.indexOfZero - 3];
        result.data[result.indexOfZero - 3] = 0;

        result.indexOfZero -= 3;

        return result;
    }

    public Board moveDown(){
        if(indexOfZero == 6 || indexOfZero == 7 || indexOfZero == 8) {
            return null;
        }

        Board result = new Board(this);

        result.data[result.indexOfZero] = result.data[result.indexOfZero + 3];
        result.data[result.indexOfZero + 3] = 0;

        result.indexOfZero += 3;

        return result;
    }

    @Override
    public String toString() {
        return String.format("Board = %s; Position of zero = %d", Arrays.toString(data), indexOfZero);
    }
}
