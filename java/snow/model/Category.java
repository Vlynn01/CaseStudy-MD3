package snow.model;

public class Category {
    private int categoryID;
    private String categoryName;
    private boolean visiableMenu;

    public Category() {
    }

    public Category(int categoryID, String categoryName, boolean visiableMenu) {
        this.categoryID = categoryID;
        this.categoryName = categoryName;
        this.visiableMenu = visiableMenu;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public boolean isVisiableMenu() {
        return visiableMenu;
    }

    public void setVisiableMenu(boolean visiableMenu) {
        this.visiableMenu = visiableMenu;
    }

}
