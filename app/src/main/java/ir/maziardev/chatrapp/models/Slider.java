package ir.maziardev.chatrapp.models;


public class Slider {

    private String title;
    private String description;
    private String detail;
    private String img;
    private String action;

    public Slider() {
    }

    public Slider(String title, String description, String detail, String img, String action) {
        this.title = title;
        this.description = description;
        this.detail = detail;
        this.img = img;
        this.action = action;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }
}
