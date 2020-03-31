package ir.maziardev.chatrapp.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.util.ArrayList;
import java.util.HashMap;

import ir.maziardev.chatrapp.models.Categoryy;
import ir.maziardev.chatrapp.network.AppController;

public class DBHelperCategory extends SQLiteOpenHelper {

    public static final String DATABASE_NAME = AppController.DATABASE_NAME;

    public static final String CONTACTS_TABLE_NAME = "tbl_category";
    public static final String CONTACTS_COLUMN_ID = "id";
    public static final String CONTACTS_COLUMN_IDD = "idd";
    public static final String CONTACTS_COLUMN_TITLE = "title";

    private HashMap hp;

    public DBHelperCategory(Context context) {
        super(context, DATABASE_NAME, null, 1);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(
                "create table " + CONTACTS_TABLE_NAME + "(" +
                        CONTACTS_COLUMN_ID + " integer primary key, " +
                        CONTACTS_COLUMN_IDD + " text, " +
                        CONTACTS_COLUMN_TITLE + " text" +
                        ")"
        );
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + CONTACTS_TABLE_NAME);
        onCreate(db);
    }

    public boolean insertData(String id, String title) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(CONTACTS_COLUMN_IDD, id);
        contentValues.put(CONTACTS_COLUMN_TITLE, title);
        db.insert(CONTACTS_TABLE_NAME, null, contentValues);
        return true;
    }

    public Cursor getData(int id) {
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor res = db.rawQuery("select * from " + CONTACTS_TABLE_NAME + " where " +
                CONTACTS_COLUMN_ID + "=" + id + "", null);
        return res;
    }

    public int numberOfRows() {
        SQLiteDatabase db = this.getReadableDatabase();
        int numRows = (int) DatabaseUtils.queryNumEntries(db, CONTACTS_TABLE_NAME);
        return numRows;
    }

    public Integer deleteItem(Integer id) {
        SQLiteDatabase db = this.getWritableDatabase();
        return db.delete(CONTACTS_TABLE_NAME,
                " " + CONTACTS_COLUMN_ID + " = ? ",
                new String[]{Integer.toString(id)});
    }

    public ArrayList<Categoryy> getAllRows() {
        ArrayList<Categoryy> array_list = new ArrayList<>();

        //hp = new HashMap();
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor res = db.rawQuery("select * from " + CONTACTS_TABLE_NAME + " ", null);
        res.moveToFirst();

        while (res.isAfterLast() == false) {
            Categoryy item = new Categoryy(
                    res.getString(res.getColumnIndex(CONTACTS_COLUMN_IDD)),
                    res.getString(res.getColumnIndex(CONTACTS_COLUMN_TITLE))
            );
            array_list.add(item);
            res.moveToNext();
        }
        return array_list;
    }

}
