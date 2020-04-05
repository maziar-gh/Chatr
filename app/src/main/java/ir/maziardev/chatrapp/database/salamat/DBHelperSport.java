package ir.maziardev.chatrapp.database.salamat;

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

public class DBHelperSport extends SQLiteOpenHelper {

    public static final String DATABASE_NAME = AppController.DATABASE_NAME;

    public static final String TABLE_NAME = "tbl_sport";
    public static final String COLUMN_ID = "id";
    public static final String COLUMN_TITLE = "title";
    public static final String COLUMN_IMG = "img";
    public static final String COLUMN_ACTION = "act";
    public static final String COLUMN_DESCRIPTION = "descr";

    private HashMap hp;

    public DBHelperSport(Context context) {
        super(context, DATABASE_NAME, null, 1);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(
                "CREATE TABLE " + TABLE_NAME + "(" +
                        COLUMN_ID + " integer PRIMARY KEY, " +
                        COLUMN_TITLE + " text, " +
                        COLUMN_DESCRIPTION + " text, " +
                        COLUMN_IMG + " text, " +
                        COLUMN_ACTION + " text" +
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

    public boolean insertData(String title, String description, String img, String action) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_TITLE, title);
        contentValues.put(COLUMN_DESCRIPTION, description);
        contentValues.put(COLUMN_IMG, img);
        contentValues.put(COLUMN_ACTION, action);
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

    public ArrayList<Lists> getAllRows() {
        ArrayList<Lists> array_list = new ArrayList<>();

        //hp = new HashMap();
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor res = db.rawQuery("SELECT * FROM " + TABLE_NAME + " ", null);
        res.moveToFirst();

        while (res.isAfterLast() == false) {
            Lists lists = new Lists(
                    res.getString(res.getColumnIndex(COLUMN_TITLE)),
                    res.getString(res.getColumnIndex(COLUMN_DESCRIPTION)),
                    res.getString(res.getColumnIndex(COLUMN_IMG)),
                    res.getString(res.getColumnIndex(COLUMN_ACTION))
            );
            array_list.add(lists);
            res.moveToNext();
        }
        return array_list;
    }

}
