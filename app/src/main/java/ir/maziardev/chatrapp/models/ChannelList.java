package ir.maziardev.chatrapp.models;

public class ChannelList {

    private String id;
    private int type;
    private String title;
    private String img;
    private String imgtmp;
    private String video;
    private String music;
    private String files;

    public ChannelList() {
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getImgtmp() {
        return imgtmp;
    }

    public void setImgtmp(String imgtmp) {
        this.imgtmp = imgtmp;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public String getMusic() {
        return music;
    }

    public void setMusic(String music) {
        this.music = music;
    }

    public String getFiles() {
        return files;
    }

    public void setFiles(String files) {
        this.files = files;
    }
}
