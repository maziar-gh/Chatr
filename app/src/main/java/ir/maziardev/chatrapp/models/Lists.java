package ir.maziardev.chatrapp.models;


import ir.maziardev.chatrapp.enums.DetailType;
import ir.maziardev.chatrapp.enums.PageType;

public class Lists {

    private DetailType detailType;
    private PageType pageType;
    private String title;
    private String img;
    private String url;
    private String id_category;
    private String action;
    private boolean flag;
    private boolean image;
    private boolean site;
    private boolean grid;
    private boolean tintcolor;
    private boolean radio;
    private boolean music;
    private boolean news;
    private boolean sub_page1;
    private boolean sub_page2;

    public Lists() {
    }

    public Lists(String title, String img, String url, String id_category, boolean site) {
        this.title = title;
        this.img = img;
        this.url = url;
        this.id_category = id_category;
        this.site = site;
    }

    public Lists(String title, String img, String url, boolean site) {
        this.title = title;
        this.img = img;
        this.url = url;
        this.site = site;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getId_category() {
        return id_category;
    }

    public void setId_category(String id_category) {
        this.id_category = id_category;
    }

    public DetailType getDetailType() {
        return detailType;
    }

    public void setDetailType(DetailType detailType) {
        this.detailType = detailType;
    }

    public boolean isNews() {
        return news;
    }

    public void setNews(boolean news) {
        this.news = news;
    }

    public boolean isRadio() {
        return radio;
    }

    public void setRadio(boolean radio) {
        this.radio = radio;
    }

    public boolean isMusic() {
        return music;
    }

    public void setMusic(boolean music) {
        this.music = music;
    }

    public PageType getPageType() {
        return pageType;
    }

    public void setPageType(PageType pageType) {
        this.pageType = pageType;
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    public boolean isImage() {
        return image;
    }

    public void setImage(boolean image) {
        this.image = image;
    }

    public boolean isSite() {
        return site;
    }

    public void setSite(boolean site) {
        this.site = site;
    }

    public boolean isGrid() {
        return grid;
    }

    public void setGrid(boolean grid) {
        this.grid = grid;
    }

    public boolean isTintcolor() {
        return tintcolor;
    }

    public void setTintcolor(boolean tintcolor) {
        this.tintcolor = tintcolor;
    }

    public boolean isSub_page1() {
        return sub_page1;
    }

    public void setSub_page1(boolean sub_page1) {
        this.sub_page1 = sub_page1;
    }

    public boolean isSub_page2() {
        return sub_page2;
    }

    public void setSub_page2(boolean sub_page2) {
        this.sub_page2 = sub_page2;
    }
}
