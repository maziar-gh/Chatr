package ir.maziardev.chatrapp.activitys;


import android.content.Context;
import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.adapter.ListTvAdapter;
import ir.maziardev.chatrapp.enums.MainType;
import ir.maziardev.chatrapp.models.Lists;
import ir.maziardev.chatrapp.models.Mainlist;
import ir.maziardev.chatrapp.network.AppController;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class RssActivity extends AppCompatActivity {

    /*@BindView(R.id.recycler_fars_news)
    RecyclerView recycler_fars;*/
    @BindView(R.id.recycler_isna_news)
    RecyclerView recycler_isna;
    @BindView(R.id.recycler_jamjam_news)
    RecyclerView recycler_jamjam;
    /*@BindView(R.id.recycler_tabnak_news)
    RecyclerView recycler_tabnak;*/
    @BindView(R.id.recycler_tasnim_news)
    RecyclerView recycler_tasnim;
   /* @BindView(R.id.recycler_varzesh90_news)
    RecyclerView recycler_varzesh90;*/
//    @BindView(R.id.recycler_varzesh3_news)
//    RecyclerView recycler_varzesh3;
    /*@BindView(R.id.recycler_yjc_news)
    RecyclerView recycler_yjc;*/

    private List<Mainlist> menuList_fars = new ArrayList<>();
    private List<Mainlist> menuList_isna = new ArrayList<>();
    private List<Mainlist> menuList_jamjam = new ArrayList<>();
    private List<Mainlist> menuList_tabnak = new ArrayList<>();
    private List<Mainlist> menuList_tasnim = new ArrayList<>();
    private List<Mainlist> menuList_varzesh90 = new ArrayList<>();
    private List<Mainlist> menuList_varzesh3 = new ArrayList<>();
    private List<Mainlist> menuList_yjc = new ArrayList<>();
    private ListTvAdapter mAdapter_fars, mAdapter_isna, mAdapter_jamjam, mAdapter_tabnak
            , mAdapter_tasnim, mAdapter_varzesh90, mAdapter_varzesh3, mAdapter_yjc;

    LinearLayoutManager layoutManager;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_rss);
        ButterKnife.bind(this);

        init();
    }

    private void init() {

        //________________________________________fars
        /*mAdapter_fars = new ListTvAdapter(this, menuList_fars);
        LinearLayoutManager layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        *//*LinearLayoutManager layoutManager = new GridLayoutManager(this, 2);*//*
        recycler_fars.setLayoutManager(layoutManager);
        recycler_fars.setItemAnimator(new DefaultItemAnimator());
        recycler_fars.setAdapter(mAdapter_fars);

        for (int i = 0; i < AppController.list_ne_fars.size(); i++) {
            Lists news = AppController.list_ne_fars.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(news.getTitle());
            mainlist.setImg(news.getImg());
            mainlist.setUrl(news.getUrl());
            mainlist.setMainType(MainType.NEWS);
            menuList_fars.add(mainlist);
        }
        mAdapter_fars.notifyDataSetChanged();*/

        //________________________________________isna
        mAdapter_isna = new ListTvAdapter(this, menuList_isna);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        /*LinearLayoutManager layoutManager = new GridLayoutManager(this, 2);*/
        recycler_isna.setLayoutManager(layoutManager);
        recycler_isna.setItemAnimator(new DefaultItemAnimator());
        recycler_isna.setAdapter(mAdapter_isna);

        for (int i = 0; i < AppController.list_ne_isna.size(); i++) {
            Lists news = AppController.list_ne_isna.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(news.getTitle());
            mainlist.setImg(news.getImg());
            mainlist.setUrl(news.getUrl());
            mainlist.setMainType(MainType.NEWS);
            menuList_isna.add(mainlist);
        }
        mAdapter_isna.notifyDataSetChanged();

        //________________________________________jamjam
        mAdapter_jamjam = new ListTvAdapter(this, menuList_jamjam);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        /*LinearLayoutManager layoutManager = new GridLayoutManager(this, 2);*/
        recycler_jamjam.setLayoutManager(layoutManager);
        recycler_jamjam.setItemAnimator(new DefaultItemAnimator());
        recycler_jamjam.setAdapter(mAdapter_jamjam);

        for (int i = 0; i < AppController.list_ne_jamjam.size(); i++) {
            Lists news = AppController.list_ne_jamjam.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(news.getTitle());
            mainlist.setImg(news.getImg());
            mainlist.setUrl(news.getUrl());
            mainlist.setMainType(MainType.NEWS);
            menuList_jamjam.add(mainlist);
        }
        mAdapter_jamjam.notifyDataSetChanged();

        //________________________________________tabnak
        /*mAdapter_tabnak = new ListTvAdapter(this, menuList_tabnak);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        *//*LinearLayoutManager layoutManager = new GridLayoutManager(this, 2);*//*
        recycler_tabnak.setLayoutManager(layoutManager);
        recycler_tabnak.setItemAnimator(new DefaultItemAnimator());
        recycler_tabnak.setAdapter(mAdapter_tabnak);

        for (int i = 0; i < AppController.list_ne_tabnak.size(); i++) {
            Lists news = AppController.list_ne_tabnak.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(news.getTitle());
            mainlist.setImg(news.getImg());
            mainlist.setUrl(news.getUrl());
            mainlist.setMainType(MainType.NEWS);
            menuList_tabnak.add(mainlist);
        }
        mAdapter_tabnak.notifyDataSetChanged();*/

        //________________________________________tasnim
        mAdapter_tasnim = new ListTvAdapter(this, menuList_tasnim);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        /*LinearLayoutManager layoutManager = new GridLayoutManager(this, 2);*/
        recycler_tasnim.setLayoutManager(layoutManager);
        recycler_tasnim.setItemAnimator(new DefaultItemAnimator());
        recycler_tasnim.setAdapter(mAdapter_tasnim);

        for (int i = 0; i < AppController.list_ne_tasnim.size(); i++) {
            Lists news = AppController.list_ne_tasnim.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(news.getTitle());
            mainlist.setImg(news.getImg());
            mainlist.setUrl(news.getUrl());
            mainlist.setMainType(MainType.NEWS);
            menuList_tasnim.add(mainlist);
        }
        mAdapter_tasnim.notifyDataSetChanged();

        //________________________________________varzesh90
       /* mAdapter_varzesh90 = new ListTvAdapter(this, menuList_varzesh90);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        *//*LinearLayoutManager layoutManager = new GridLayoutManager(this, 2);*//*
        recycler_varzesh90.setLayoutManager(layoutManager);
        recycler_varzesh90.setItemAnimator(new DefaultItemAnimator());
        recycler_varzesh90.setAdapter(mAdapter_varzesh90);

        for (int i = 0; i < AppController.list_ne_varzeshnavad.size(); i++) {
            Lists news = AppController.list_ne_varzeshnavad.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(news.getTitle());
            mainlist.setImg(news.getImg());
            mainlist.setUrl(news.getUrl());
            mainlist.setMainType(MainType.NEWS);
            menuList_varzesh90.add(mainlist);
        }
        mAdapter_varzesh90.notifyDataSetChanged();*/

        //________________________________________varzesh3
       /* mAdapter_varzesh3 = new ListTvAdapter(this, menuList_varzesh3);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        *//*LinearLayoutManager layoutManager = new GridLayoutManager(this, 2);*//*
        recycler_varzesh3.setLayoutManager(layoutManager);
        recycler_varzesh3.setItemAnimator(new DefaultItemAnimator());
        recycler_varzesh3.setAdapter(mAdapter_varzesh3);

        for (int i = 0; i < AppController.list_ne_varzeshthree.size(); i++) {
            Lists news = AppController.list_ne_varzeshthree.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(news.getTitle());
            mainlist.setImg(news.getImg());
            mainlist.setUrl(news.getUrl());
            mainlist.setMainType(MainType.NEWS);
            menuList_varzesh3.add(mainlist);
        }
        mAdapter_varzesh3.notifyDataSetChanged();*/

        //________________________________________yjc
        /*mAdapter_yjc = new ListTvAdapter(this, menuList_yjc);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        *//*LinearLayoutManager layoutManager = new GridLayoutManager(this, 2);*//*
        recycler_yjc.setLayoutManager(layoutManager);
        recycler_yjc.setItemAnimator(new DefaultItemAnimator());
        recycler_yjc.setAdapter(mAdapter_yjc);

        for (int i = 0; i < AppController.list_ne_yjc.size(); i++) {
            Lists news = AppController.list_ne_yjc.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(news.getTitle());
            mainlist.setImg(news.getImg());
            mainlist.setUrl(news.getUrl());
            mainlist.setMainType(MainType.NEWS);
            menuList_yjc.add(mainlist);
        }
        mAdapter_yjc.notifyDataSetChanged();*/
    }



    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
