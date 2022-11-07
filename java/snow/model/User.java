package snow.model;

public class User {
    private int userId;
    private String userUserName;
    private String userPassword;
    private String userEmail;
    private String userFullName;
    private String Sex;
    private String userBirthday;
    private String userAddress;


    public User() {
    }

    public User(int userId, String userUserName, String userPassword, String userEmail, String userFullName, String sex, String userBirthday, String userAddress) {
        this.userId = userId;
        this.userUserName = userUserName;
        this.userPassword = userPassword;
        this.userEmail = userEmail;
        this.userFullName = userFullName;
        Sex = sex;
        this.userBirthday = userBirthday;
        this.userAddress = userAddress;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserUserName() {
        return userUserName;
    }

    public void setUserUserName(String userUserName) {
        this.userUserName = userUserName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserFullName() {
        return userFullName;
    }

    public void setUserFullName(String userFullName) {
        this.userFullName = userFullName;
    }

    public String getSex() {
        return Sex;
    }

    public void setSex(String sex) {
        Sex = sex;
    }

    public String getUserBirthday() {
        return userBirthday;
    }

    public void setUserBirthday(String userBirthday) {
        this.userBirthday = userBirthday;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }
}
