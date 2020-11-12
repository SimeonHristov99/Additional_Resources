package solution;

public class State implements Comparable<State> {

    private Board board;
    private State parent;
    private int heuristic; // h(n)
    private int pathCost; // g(n)
    private String operator;

    public State(Board board, State parent, int heuristic, int pathCost, String operator) {
        setBoard(board);
        setParent(parent);
        setPathCost(pathCost);
        setHeuristic(heuristic);
        setOperator(operator);
    }

    public State() {
        this(null, null, 0, 0, null);
    }

    public State(State rhs) {
        this(rhs.board, rhs.parent, rhs.heuristic, rhs.pathCost, rhs.operator);
    }

    public Board getBoard() {
        return board;
    }

    public void setBoard(Board board) {
        this.board = board;
    }

    public State getParent() {
        return parent;
    }

    public void setParent(State parent) {
        this.parent = parent;
    }

    public int getHeuristic() {
        return heuristic;
    }

    public void setHeuristic(int heuristic) {
        this.heuristic = Math.max(heuristic, 0);
    }

    public int getPathCost() {
        return pathCost;
    }

    public void setPathCost(int pathCost) {
        this.pathCost = pathCost;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator == null ? "start" : operator;
    }

    public boolean isGoal(){
        return board.isGoal();
    }

    @Override
    public int compareTo(State rhs) {
        if(pathCost + heuristic < rhs.pathCost + rhs.heuristic) {
            return -1;
        }
        return 1;
    }

    @Override
    public String toString() {
        return String.format("State = %s; h(n) = %d; g(n) = %d; operator = %s",
                board, heuristic, pathCost, operator);
    }
}
