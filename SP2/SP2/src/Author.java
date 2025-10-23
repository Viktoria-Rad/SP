import java.util.ArrayList;

public class Author {
    private String name;
    ArrayList<Title> titles = new ArrayList<>();

    public Author(String name) {
        this.name = name;

    }

    public void addTitle(Title title) {
        titles.add(title);
    }

    public double calculateRoyalties() {
        double totalRoyalties = 0.0;
        for (Title title : titles) {
            totalRoyalties += title.calculateRoyalty();
        }
        return Math.round(totalRoyalties * 100.0) / 100.0; // Rounding to 2 decimal places
    }

    public String getName() {
        return name;
    }
}
