public class User {
    private String firstName;
    private String lastName;
    private String email;
    private String dateOfBirth;
    private String hear;
    private String askMail;
    private String contactOption;

    public User(String firstName, String lastName, String email, String dateOfBirth, String hear, String askMail, String contactOption) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.dateOfBirth = dateOfBirth;
        this.hear = hear;
        this.askMail = askMail;
        this.contactOption = contactOption;
    }

    // getter & setter cho tất cả
    public String getFirstName() { return firstName; }
    public void setFirstName(String firstName) { this.firstName = firstName; }
    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getDateOfBirth() { return dateOfBirth; }
    public void setDateOfBirth(String dateOfBirth) { this.dateOfBirth = dateOfBirth; }
    public String getHear() { return hear; }
    public void setHear(String hear) { this.hear = hear; }
    public String getAskMail() { return askMail; }
    public void setAskMail(String askMail) { this.askMail = askMail; }
    public String getContactOption() { return contactOption; }
    public void setContactOption(String contactOption) { this.contactOption = contactOption; }
}
