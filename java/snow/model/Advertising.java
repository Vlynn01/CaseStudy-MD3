package snow.model;

public class Advertising {
    private int adsID;
    private String adsTitle;
    private String adsFile;
    private String adsTarget;
    private String adsURL;

    public Advertising() {
    }

    public Advertising(int adsID, String adsTitle, String adsFile, String adsTarget, String adsURL) {
        this.adsID = adsID;
        this.adsTitle = adsTitle;
        this.adsFile = adsFile;
        this.adsTarget = adsTarget;
        this.adsURL = adsURL;
    }

    public int getAdsID() {
        return adsID;
    }

    public void setAdsID(int adsID) {
        this.adsID = adsID;
    }

    public String getAdsTitle() {
        return adsTitle;
    }

    public void setAdsTitle(String adsTitle) {
        this.adsTitle = adsTitle;
    }

    public String getAdsFile() {
        return adsFile;
    }

    public void setAdsFile(String adsFile) {
        this.adsFile = adsFile;
    }

    public String getAdsTarget() {
        return adsTarget;
    }

    public void setAdsTarget(String adsTarget) {
        this.adsTarget = adsTarget;
    }

    public String getAdsURL() {
        return adsURL;
    }

    public void setAdsURL(String adsURL) {
        this.adsURL = adsURL;
    }
}
