package snow.model;

public class Game {
    private int gameID;
    private String gameName;
    private String gameImage;
    private String gameFile;
    private String gameContent;
    private Long gameLuotChoi;
    private Long gameLuotYeuThich;
    private boolean gameHot;

    public Game() {
    }

    public Game(int gameID, String gameName, String gameImage, String gameFile, String gameContent, Long gameLuotChoi, Long gameLuotYeuThich, boolean gameHot) {
        this.gameID = gameID;
        this.gameName = gameName;
        this.gameImage = gameImage;
        this.gameFile = gameFile;
        this.gameContent = gameContent;
        this.gameLuotChoi = gameLuotChoi;
        this.gameLuotYeuThich = gameLuotYeuThich;
        this.gameHot = gameHot;
    }

    public int getGameID() {
        return gameID;
    }

    public void setGameID(int gameID) {
        this.gameID = gameID;
    }

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public String getGameImage() {
        return gameImage;
    }

    public void setGameImage(String gameImage) {
        this.gameImage = gameImage;
    }

    public String getGameFile() {
        return gameFile;
    }

    public void setGameFile(String gameFile) {
        this.gameFile = gameFile;
    }

    public String getGameContent() {
        return gameContent;
    }

    public void setGameContent(String gameContent) {
        this.gameContent = gameContent;
    }

    public Long getGameLuotChoi() {
        return gameLuotChoi;
    }

    public void setGameLuotChoi(Long gameLuotChoi) {
        this.gameLuotChoi = gameLuotChoi;
    }

    public Long getGameLuotYeuThich() {
        return gameLuotYeuThich;
    }

    public void setGameLuotYeuThich(Long gameLuotYeuThich) {
        this.gameLuotYeuThich = gameLuotYeuThich;
    }

    public boolean isGameHot() {
        return gameHot;
    }

    public void setGameHot(boolean gameHot) {
        this.gameHot = gameHot;
    }
}
