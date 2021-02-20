public class Individual {
    private final int x;
    private final int y;
    private final int classification;

    public Individual(int x, int y, int classification) {
        this.x = x <= 0 ? 1000 : x;
        this.y = y < 0 ? 2 : y;
        this.classification = classification;
    }

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }

    public int getClassification() {
        return classification;
    }

    public double euclDistance(Individual rhs) {
        double xDist = x - rhs.x;
        double yDist = y - rhs.y;
        return Math.sqrt(xDist * xDist + yDist * yDist);
    }
}
