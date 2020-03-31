package ir.maziardev.chatrapp.models;


import ir.maziardev.chatrapp.enums.PageType;

public class GridList {

    private PageType pageType;
    private String title;
    private String img;
    private String url;
    private String actor;
    private String duration;
    private String category;
    private String seriesname;
    private boolean site;
    private boolean music;
    private boolean movie;
    private boolean series;

    public boolean isSite() {
        return site;
    }

    public void setSite(boolean site) {
        this.site = site;
    }

    public PageType getPageType() {
        return pageType;
    }

    public void setPageType(PageType pageType) {
        this.pageType = pageType;
    }

    public String getSeriesname() {
        return seriesname;
    }

    public void setSeriesname(String seriesname) {
        this.seriesname = seriesname;
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

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public boolean isMusic() {
        return music;
    }

    public void setMusic(boolean music) {
        this.music = music;
    }

    public boolean isMovie() {
        return movie;
    }

    public void setMovie(boolean movie) {
        this.movie = movie;
    }

    public boolean isSeries() {
        return series;
    }

    public void setSeries(boolean series) {
        this.series = series;
    }
}
