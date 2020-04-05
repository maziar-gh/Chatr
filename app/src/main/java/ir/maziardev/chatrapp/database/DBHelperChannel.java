package ir.maziardev.chatrapp.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.util.ArrayList;
import java.util.HashMap;

import ir.maziardev.chatrapp.enums.ChannelType;
import ir.maziardev.chatrapp.models.Channell;
import ir.maziardev.chatrapp.models.Slider;
import ir.maziardev.chatrapp.network.AppController;

public class DBHelperChannel extends SQLiteOpenHelper {

    public static final String DATABASE_NAME = AppController.DATABASE_NAME;

    public static final String TABLE_NAME = "tbl_channel";
    public static final String COLUMN_ID = "id";
    public static final String COLUMN_TITLE = "title";
    public static final String COLUMN_IMG = "img";
    public static final String COLUMN_MUSIC = "music";
    public static final String COLUMN_MOVIE = "movie";
    public static final String COLUMN_SURVEY = "survey";
    public static final String COLUMN_LOCATION = "location";
    public static final String COLUMN_PHONE = "phone";
    public static final String COLUMN_TYPE = "type";

    private HashMap hp;

    public DBHelperChannel(Context context) {
        super(context, DATABASE_NAME, null, 1);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(
                "CREATE TABLE " + TABLE_NAME + "(" +
                        COLUMN_ID + " integer PRIMARY KEY, " +
                        COLUMN_TITLE + " text, " +
                        COLUMN_IMG + " text, " +
                        COLUMN_MUSIC + " text, " +
                        COLUMN_MOVIE + " text, " +
                        COLUMN_SURVEY + " text, " +
                        COLUMN_LOCATION + " text, " +
                        COLUMN_PHONE + " text," +
                        COLUMN_TYPE + " text" +
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
        try {
            onCreate(db);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean insertData(String title, String img, String music, String movie,
                              String survey, String location, String phone, String type) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_TITLE, title);
        contentValues.put(COLUMN_IMG, img);
        contentValues.put(COLUMN_MUSIC, music);
        contentValues.put(COLUMN_MOVIE, movie);
        contentValues.put(COLUMN_SURVEY, survey);
        contentValues.put(COLUMN_LOCATION, location);
        contentValues.put(COLUMN_PHONE, phone);
        contentValues.put(COLUMN_TYPE, type);
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

    public ArrayList<Channell> getAllRows() {
        ArrayList<Channell> array_list = new ArrayList<>();

        //hp = new HashMap();
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor res = db.rawQuery("SELECT * FROM " + TABLE_NAME + " ", null);
        res.moveToFirst();

        while (res.isAfterLast() == false) {

            ChannelType type = null;
            switch (res.getString(res.getColumnIndex(COLUMN_TYPE))) {
                case "1":
                    type = (ChannelType.TEXT);
                    break;
                case "2":
                    type = (ChannelType.PICTURE);
                    break;
                case "3":
                    type = (ChannelType.MUSIC);
                    break;
                case "4":
                    type = (ChannelType.MOVIE);
                    break;
                case "5":
                    type = (ChannelType.SURVEY);
                    break;
                case "6":
                    type = (ChannelType.LOCATION);
                    break;
                case "7":
                    type = (ChannelType.PHONE);
                    break;
            }

            Channell channell = new Channell(
                    res.getString(res.getColumnIndex(COLUMN_TITLE)),
                    res.getString(res.getColumnIndex(COLUMN_IMG)),
                    res.getString(res.getColumnIndex(COLUMN_MUSIC)),
                    res.getString(res.getColumnIndex(COLUMN_MOVIE)),
                    res.getString(res.getColumnIndex(COLUMN_SURVEY)),
                    res.getString(res.getColumnIndex(COLUMN_LOCATION)),
                    res.getString(res.getColumnIndex(COLUMN_PHONE)),
                    type
            );
            array_list.add(channell);
            res.moveToNext();
        }
        return array_list;
    }

}
