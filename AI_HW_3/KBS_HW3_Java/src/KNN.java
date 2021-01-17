import java.io.BufferedReader;
import java.io.FileReader;
import java.util.*;

public class KNN {

    private static final int k = 3;
    private static final ArrayList<Individual> individuals = new ArrayList<>();
    private static final Map<String, Integer> map = new HashMap<>() {{
        put("Rarely", 0);
        put("Sometimes", 1);
        put("Often", 2);
        put("Very often", 3);
    }};

    public static void main(String[] args) {
        read();

        Random random = new Random();

        for (int i = 0; i < 10; i++) {
            System.out.println(500 + random.nextInt(1000));
            System.out.println(random.nextInt(4));
        }

        System.out.println(predict(859, "Rarely") == 0); // 0 (725, 925, 952)
        System.out.println(predict(550, "Often") == 0); // 0
        System.out.println(predict(1254, "Rarely") == 1); // 1
        System.out.println(predict(525, "Sometimes") == 0); // 0
        System.out.println(predict(724, "Very often") == 0); // 0
        System.out.println(predict(1477, "Rarely") == 1); // 1
        System.out.println(predict(975, "Rarely") == 0); // 0
        System.out.println(predict(1148, "Rarely") == 0); // 0 (1213, 1213, 1215)
        System.out.println(predict(1315, "Sometimes") == 1); // 1
        System.out.println(predict(869, "Very often") == 0); // 0

        System.out.println(predict(1400, "Very often") == 1); // 1
        System.out.println(predict(1200, "Often") == 0); // 0 (1213, 1213, 1215)
        System.out.println(predict(1000, "Often") == 0); // 0 (978, 982, 1071)
        System.out.println(predict(960, "Sometimes") == 1); // 1 (952, 959, 978)
    }

    private static int predict(int amount, String frequency) {

        Individual toClassify = new Individual(amount, map.get(frequency.strip()), 0);

        PriorityQueue<Individual> allDistances = new PriorityQueue<>((i1, i2) -> {
            double distanceI1 = toClassify.euclDistance(i1);
            double distanceI2 = toClassify.euclDistance(i2);

            if (distanceI1 < distanceI2) {
                return -1;
            } else if (distanceI1 == distanceI2) {
                return 0;
            }
            return 1;
        });

        allDistances.addAll(individuals);

        ArrayList<Integer> classifications = new ArrayList<>();


        for (int i = 0; i < k; i++) {
            classifications.add(Objects.requireNonNull(allDistances.poll()).getClassification());
        }

        int counterZero = 0;
        int counterOne = 0;

        for (int i : classifications) {
            switch (i) {
                case 0:
                    ++counterZero;
                    break;
                case 1:
                    ++counterOne;
                    break;
            }
        }

        return counterZero > counterOne ? 0 : 1;
    }

    private static void read() {
        try {
            BufferedReader fin;

            String file = "categorized.csv";
            fin = new BufferedReader(new FileReader(file));
            fin.readLine();

            String line = "";
            while ((line = fin.readLine()) != null) {
                String[] currentLine = line.split(";");


                if (currentLine.length > 0) {

                    individuals.add(new Individual(
                            Integer.parseInt(currentLine[0]),
                            map.get(currentLine[1].strip()),
                            Integer.parseInt(currentLine[2])
                    ));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
