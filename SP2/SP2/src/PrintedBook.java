public class PrintedBook extends Title {
    private int pages;
    private int copies;


    public PrintedBook(String title, LiteratureType literatureType, int pages, int copies) {
        super(title, literatureType);
        this.pages = pages;
        this.copies = copies;
    }

    @Override
    public double calculatePoints() {
        return pages * convertLiteratureType(literatureType) * copies;
    }
}
