public abstract class Title {

    protected String title;
    LiteratureType literatureType;
    protected static final double RATE = 0.067574;


    public Title(String title, LiteratureType literatureType) {
        this.title = title;
        this.literatureType = literatureType;
    }
    public abstract double calculatePoints();

    public double calculateRoyalty(){
        return calculatePoints() * RATE;
    }
 public double convertLiteratureType(LiteratureType literatureType){
        switch (literatureType){
            case BI, TE: return 3.0;
            case LYRIK: return 6.0;
            case SKØN: return 1.7;
            case FAG: return 1.0;
            default:return 0.0;
        }
 }
}
