public class LibraryRoyaltyCalculator {
    public static void main(String[] args) {

        Author olgaRavn = new Author("Olga Ravn");
        Title printed = new PrintedBook("Celestine", LiteratureType.SKØN, 140, 166);
        Title audio = new AudioBook("Celestine", LiteratureType.SKØN, 140, 192);
        Title poetry = new PrintedBook("Lyrikbog", LiteratureType.LYRIK, 80, 50);


        olgaRavn.addTitle(printed);
        olgaRavn.addTitle(audio);
        olgaRavn.addTitle(poetry);

        double royalities = olgaRavn.calculateRoyalties();
        System.out.println(olgaRavn.getName() + ": " + royalities + " kr.");

    }
}
