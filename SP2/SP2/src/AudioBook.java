public class AudioBook extends Title {
    private int durationMinutes;
    private int copies;


    public AudioBook(String title, LiteratureType literatureType, int durationMinutes, int copies) {
        super(title, literatureType);
        this.durationMinutes = durationMinutes;
        this.copies = copies;
    }

    @Override
    public double calculatePoints() {
        return (durationMinutes * 0.5) * convertLiteratureType(literatureType) * copies;
    }
}
