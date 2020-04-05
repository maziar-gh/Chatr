package ir.maziardev.chatrapp.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.util.ArrayList;
import java.util.HashMap;

import ir.maziardev.chatrapp.models.Lists;
import ir.maziardev.chatrapp.network.AppController;

public class DBHelperGames extends SQLiteOpenHelper {

    public static final String DATABASE_NAME = AppController.DATABASE_NAME;

    public static final String TABLE_NAME = "tbl_games";
    public static final String COLUMN_ID = "id";
    public static final String COLUMN_ID_CATEGORY = "id_category";
    public static final String COLUMN_TITLE = "title";
    public static final String COLUMN_IMG = "img";
    public static final String COLUMN_URL = "url";
    public static final String COLUMN_SITE = "site";

    private HashMap hp;

    public DBHelperGames(Context context) {
        super(context, DATABASE_NAME, null, 1);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(
                "create table " + TABLE_NAME + "(" +
                        COLUMN_ID + " integer primary key, " +
                        COLUMN_ID_CATEGORY + " text, " +
                        COLUMN_TITLE + " text, " +
                        COLUMN_IMG + " text, " +
                        COLUMN_URL + " text ," +
                        COLUMN_SITE + " text " +
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

    public boolean insertData(String id_category, String title, String img, String url, boolean site) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_ID_CATEGORY, id_category);
        contentValues.put(COLUMN_TITLE, title);
        contentValues.put(COLUMN_IMG, img);
        contentValues.put(COLUMN_URL, url);
        contentValues.put(COLUMN_SITE, (site)? "1" : "0");
        db.insert(TABLE_NAME, null, contentValues);
        return true;
    }

    public Cursor getData(int id) {
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor res = db.rawQuery("select * from " + TABLE_NAME + " where " +
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
                "delete from " + TABLE_NAME
        );
    }

    public ArrayList<Lists> getAllRows() {
        ArrayList<Lists> array_list = new ArrayList<>();

        //hp = new HashMap();
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor res = db.rawQuery("select * from " + TABLE_NAME + " ", null);
        res.moveToFirst();

        while (res.isAfterLast() == false) {
            Lists library = new Lists(
                    res.getString(res.getColumnIndex(COLUMN_TITLE)),
                    res.getString(res.getColumnIndex(COLUMN_IMG)),
                    res.getString(res.getColumnIndex(COLUMN_URL)),
                    res.getString(res.getColumnIndex(COLUMN_ID_CATEGORY)),
                    (res.getString(res.getColumnIndex(COLUMN_SITE)).equals("1"))
            );
            array_list.add(library);
            res.moveToNext();
        }
        return array_list;
    }

}
