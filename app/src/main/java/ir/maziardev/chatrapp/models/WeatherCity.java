package ir.maziardev.chatrapp.models;


public class WeatherCity {
    private String province;
    private String stationEn;
    private String stationFa;
    private String stationNumber;
    private String iCAO;
    private String lat;
    private String lng;

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getStationEn() {
        return stationEn;
    }

    public void setStationEn(String stationEn) {
        this.stationEn = stationEn;
    }

    public String getStationFa() {
        return stationFa;
    }

    public void setStationFa(String stationFa) {
        this.stationFa = stationFa;
    }

    public String getStationNumber() {
        return stationNumber;
    }

    public void setStationNumber(String stationNumber) {
        this.stationNumber = stationNumber;
    }

    public String getiCAO() {
        return iCAO;
    }

    public void setiCAO(String iCAO) {
        this.iCAO = iCAO;
    }

    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

    public String getLng() {
        return lng;
    }

    public void setLng(String lng) {
        this.lng = lng;
    }
}
