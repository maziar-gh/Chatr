package ir.maziardev.chatrapp.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.util.ArrayList;
import java.util.HashMap;

import ir.maziardev.chatrapp.models.Slider;
import ir.maziardev.chatrapp.models.WeatherCity;
import ir.maziardev.chatrapp.network.AppController;

public class DBHelperWeather extends SQLiteOpenHelper {

    public static final String DATABASE_NAME = AppController.DATABASE_NAME;

    public static final String TABLE_NAME = "tbl_weather";
    public static final String COLUMN_ID = "id";
    public static final String COLUMN_PROVINCE = "province";
    public static final String COLUMN_STATIONEN = "stationen";
    public static final String COLUMN_STATIONFA = "stationfa";
    public static final String COLUMN_STATIONEN_NUMBER = "stationnumber";
    public static final String COLUMN_ICAO = "icao";
    public static final String COLUMN_LAT = "lat";
    public static final String COLUMN_LNG = "lng";

    private HashMap hp;

    public DBHelperWeather(Context context) {
        super(context, DATABASE_NAME, null, 1);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(
                "CREATE TABLE " + TABLE_NAME + "(" +
                        COLUMN_ID + " integer PRIMARY KEY, " +
                        COLUMN_PROVINCE + " text, " +
                        COLUMN_STATIONEN + " text, " +
                        COLUMN_STATIONFA + " text, " +
                        COLUMN_STATIONEN_NUMBER + " text, " +
                        COLUMN_ICAO + " text, " +
                        COLUMN_LAT + " text, " +
                        COLUMN_LNG + " text" +
                        ")"
        );
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_NAME);
        onCreate(db);
    }

    @Override
    public void onOpen(SQLiteDatabase db) {
        try{
            onCreate(db);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public boolean insertData(String province, String station_en, String station_fa,
                              String station_number, String icao, String lat, String lng) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_PROVINCE, province);
        contentValues.put(COLUMN_STATIONEN, station_en);
        contentValues.put(COLUMN_STATIONFA, station_fa);
        contentValues.put(COLUMN_STATIONEN_NUMBER, station_number);
        contentValues.put(COLUMN_ICAO, icao);
        contentValues.put(COLUMN_LAT, lat);
        contentValues.put(COLUMN_LNG, lng);
        db.insert(TABLE_NAME, null, contentValues);
        return true;
    }

    public Cursor getData(int id) {
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor res = db.rawQuery("SELECT * FROM " + TABLE_NAME + " WHERE " +
                COLUMN_ID + "=" + id + "", null);
        return res;
    }

    public int numberOfRows() {
        SQLiteDatabase db = this.getReadableDatabase();
        int numRows = (int) DatabaseUtils.queryNumEntries(db, TABLE_NAME);
        return numRows;
    }

    public Integer deleteItem(Integer id) {
        SQLiteDatabase db = this.getWritableDatabase();
        return db.delete(TABLE_NAME,
                " " + COLUMN_ID + " = ? ",
                new String[]{Integer.toString(id)});
    }

    public void deleteAllRecord() {
        SQLiteDatabase db = this.getWritableDatabase();
        db.execSQL(
                "DELETE FROM " + TABLE_NAME
        );
    }

    public ArrayList<WeatherCity> getAllRows() {
        ArrayList<WeatherCity> array_list = new ArrayList<>();

        //hp = new HashMap();
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor res = db.rawQuery("SELECT * FROM " + TABLE_NAME + " ", null);
        res.moveToFirst();

        while (res.isAfterLast() == false) {
            WeatherCity weatherCity = new WeatherCity(
                    res.getString(res.getColumnIndex(COLUMN_PROVINCE)),
                    res.getString(res.getColumnIndex(COLUMN_STATIONEN)),
                    res.getString(res.getColumnIndex(COLUMN_STATIONFA)),
                    res.getString(res.getColumnIndex(COLUMN_STATIONEN_NUMBER)),
                    res.getString(res.getColumnIndex(COLUMN_ICAO)),
                    res.getString(res.getColumnIndex(COLUMN_LAT)),
                    res.getString(res.getColumnIndex(COLUMN_LNG))
            );
            array_list.add(weatherCity);
            res.moveToNext();
        }
        return array_list;
    }

}
