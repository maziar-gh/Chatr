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
import ir.maziardev.chatrapp.models.ChannelModel;
import ir.maziardev.chatrapp.models.Lists;
import ir.maziardev.chatrapp.models.Mainlist;
import ir.maziardev.chatrapp.network.AppController;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class RssActivity extends AppCompatActivity {

    @BindView(R.id.recycler_media_official)
    RecyclerView recycler_official;
    @BindView(R.id.recycler_news_channel)
    RecyclerView recycler_news_channel;
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

    private List<ChannelModel> menuList_official = new ArrayList<>();
    private List<ChannelModel> menuList_channel = new ArrayList<>();
    private List<ChannelModel> menuList_isna = new ArrayList<>();
    private List<ChannelModel> menuList_jamjam = new ArrayList<>();
    private List<ChannelModel> menuList_tabnak = new ArrayList<>();
    private List<ChannelModel> menuList_tasnim = new ArrayList<>();
    private List<ChannelModel> menuList_varzesh90 = new ArrayList<>();
    private List<ChannelModel> menuList_varzesh3 = new ArrayList<>();
    private List<ChannelModel> menuList_yjc = new ArrayList<>();
    private ListTvAdapter mAdapter_channel, mAdapter_isna, mAdapter_jamjam, mAdapter_official, mAdapter_tabnak
            , mAdapter_tasnim, mAdapter_varzesh90, mAdapter_varzesh3, mAdapter_yjc;

    LinearLayoutManager layoutManager;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_rss);
        ButterKnife.bind(this);

        for (int i = 0; i < AppController.list_channel.size(); i++) {
            String id_category = AppController.list_channel.get(i).getId_category();
            switch (id_category){
                case "8": //movie and music
                    menuList_channel.add(AppController.list_channel.get(i));
                    break;
                case "10": //official
                    menuList_official.add(AppController.list_channel.get(i));
                    break;
            }
        }

        init();
    }

    private void init() {

        //__________________________________________news
        mAdapter_channel = new ListTvAdapter(this, menuList_channel);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_news_channel.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_news_channel.setHasFixedSize(true);
        recycler_news_channel.setAdapter(mAdapter_channel);
        mAdapter_channel.notifyDataSetChanged();


        //________________________________________official
        mAdapter_official = new ListTvAdapter(this, menuList_official);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_official.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_official.setHasFixedSize(true);
        recycler_official.setAdapter(mAdapter_official);
        mAdapter_official.notifyDataSetChanged();


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

            ChannelModel list = new ChannelModel();
            list.setCname(news.getTitle());
            list.setImg(news.getImg());
            list.setId_category("isna");

            /*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(news.getTitle());
            mainlist.setImg(news.getImg());
            mainlist.setUrl(news.getUrl());
            mainlist.setMainType(MainType.NEWS);*/
            menuList_isna.add(list);
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

            ChannelModel list = new ChannelModel();
            list.setCname(news.getTitle());
            list.setImg(news.getImg());
            list.setId_category("jamjam");

            /*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(news.getTitle());
            mainlist.setImg(news.getImg());
            mainlist.setUrl(news.getUrl());
            mainlist.setMainType(MainType.NEWS);*/
            menuList_jamjam.add(list);
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

            ChannelModel list = new ChannelModel();
            list.setCname(news.getTitle());
            list.setImg(news.getImg());
            list.setId_category("tasnim");

            /*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(news.getTitle());
            mainlist.setImg(news.getImg());
            mainlist.setUrl(news.getUrl());
            mainlist.setMainType(MainType.NEWS);*/
            menuList_tasnim.add(list);
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
