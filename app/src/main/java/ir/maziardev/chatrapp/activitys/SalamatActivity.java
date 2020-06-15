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

public class SalamatActivity extends AppCompatActivity {

    LinearLayoutManager layoutManager;

    @BindView(R.id.recycler_salamat_it)
    RecyclerView recycler_salamat_it;
    @BindView(R.id.recycler_salamat_edu)
    RecyclerView recycler_salamat_edu;
    @BindView(R.id.recycler_salamat_oshagh)
    RecyclerView recycler_salamat_oshagh;
    @BindView(R.id.recycler_salamat_sabk)
    RecyclerView recycler_salamat_sabk;
    @BindView(R.id.recycler_salamat_sport)
    RecyclerView recycler_salamat_sport;
    @BindView(R.id.recycler_salamat_work)
    RecyclerView recycler_salamat_work;

    @BindView(R.id.recycler_chef_salamat)
    RecyclerView recycler_chef;
    @BindView(R.id.recycler_pray_salamat)
    RecyclerView recycler_pray;
    /*@BindView(R.id.recycler_sport_salamat)
    RecyclerView recycler_sport;*/
    /*@BindView(R.id.recycler_food_salamat)
    RecyclerView recycler_food;*/
/*    @BindView(R.id.recycler_psychology_salamat)
    RecyclerView recycler_psychology;*/

    private List<ChannelModel> menuList_channel_it = new ArrayList<>();
    private List<ChannelModel> menuList_channel_edu = new ArrayList<>();
    private List<ChannelModel> menuList_channel_oshagh = new ArrayList<>();
    private List<ChannelModel> menuList_channel_sabk = new ArrayList<>();
    private List<ChannelModel> menuList_channel_sport = new ArrayList<>();
    private List<ChannelModel> menuList_channel_work = new ArrayList<>();

    private List<ChannelModel> menuList_chef = new ArrayList<>();
    private List<ChannelModel> menuList_pray = new ArrayList<>();
    private List<ChannelModel> menuList_sport = new ArrayList<>();
    private List<ChannelModel> menuList_food = new ArrayList<>();
    private List<ChannelModel> menuList_psychology = new ArrayList<>();
    private ListTvAdapter mAdapter_channel_it, mAdapter_channel_edu, mAdapter_channel_oghagh, mAdapter_channel_sabk,
            mAdapter_channel_sport, mAdapter_channel_work, mAdapter_chef,
            mAdapter_pray, mAdapter_sport, mAdapter_food, mAdapter_psychology;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_salamat);
        ButterKnife.bind(this);

        for (int i = 0; i < AppController.list_channel.size(); i++) {
            String id_category = AppController.list_channel.get(i).getId_category();
            switch (id_category){
                case "14": //movie and music
                    menuList_channel_oshagh.add(AppController.list_channel.get(i));
                    break;
                case "6": //movie and music
                    menuList_channel_sabk.add(AppController.list_channel.get(i));
                    break;
                case "1": //it & education
                    menuList_channel_sport.add(AppController.list_channel.get(i));
                    break;
                case "5": //it & education
                    menuList_channel_work.add(AppController.list_channel.get(i));
                    break;
                case "3": //it & education
                    menuList_channel_edu.add(AppController.list_channel.get(i));
                    break;
                case "13": //it & education
                    menuList_channel_it.add(AppController.list_channel.get(i));
                    break;
                case "15": //it & education
                    menuList_chef.add(AppController.list_channel.get(i));
                    break;
            }
        }

        init();
    }

    private void init() {

        //__________________________________________channel_chef
        mAdapter_chef = new ListTvAdapter(this, menuList_chef);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_chef.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_chef.setHasFixedSize(true);
        recycler_chef.setAdapter(mAdapter_chef);
        mAdapter_chef.notifyDataSetChanged();

        //__________________________________________channel_it
        mAdapter_channel_it = new ListTvAdapter(this, menuList_channel_it);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_salamat_it.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_salamat_it.setHasFixedSize(true);
        recycler_salamat_it.setAdapter(mAdapter_channel_it);
        mAdapter_channel_it.notifyDataSetChanged();


        //__________________________________________channel_edu
        mAdapter_channel_edu = new ListTvAdapter(this, menuList_channel_edu);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_salamat_edu.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_salamat_edu.setHasFixedSize(true);
        recycler_salamat_edu.setAdapter(mAdapter_channel_edu);
        mAdapter_channel_edu.notifyDataSetChanged();


        //__________________________________________channel_oshagh
        mAdapter_channel_oghagh = new ListTvAdapter(this, menuList_channel_oshagh);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_salamat_oshagh.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_salamat_oshagh.setHasFixedSize(true);
        recycler_salamat_oshagh.setAdapter(mAdapter_channel_oghagh);
        mAdapter_channel_oghagh.notifyDataSetChanged();

        //__________________________________________channel_sport
        mAdapter_channel_sport = new ListTvAdapter(this, menuList_channel_sport);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_salamat_sport.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_salamat_sport.setHasFixedSize(true);
        recycler_salamat_sport.setAdapter(mAdapter_channel_sport);
        mAdapter_channel_sport.notifyDataSetChanged();


        //__________________________________________channel_sabk
        mAdapter_channel_sabk = new ListTvAdapter(this, menuList_channel_sabk);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_salamat_sabk.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_salamat_sabk.setHasFixedSize(true);
        recycler_salamat_sabk.setAdapter(mAdapter_channel_sabk);
        mAdapter_channel_sabk.notifyDataSetChanged();


        //__________________________________________channel_work
        mAdapter_channel_work = new ListTvAdapter(this, menuList_channel_work);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_salamat_work.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_salamat_work.setHasFixedSize(true);
        recycler_salamat_work.setAdapter(mAdapter_channel_work);
        mAdapter_channel_work.notifyDataSetChanged();


        //__________________________________________pray
        mAdapter_pray= new ListTvAdapter(this, menuList_pray);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_pray.setLayoutManager(layoutManager);
        recycler_pray.setItemAnimator(new DefaultItemAnimator());
        recycler_pray.setAdapter(mAdapter_pray);

        for (int i = 0; i < AppController.list_sa_pray.size(); i++) {
            Lists media = AppController.list_sa_pray.get(i);

            ChannelModel list = new ChannelModel();
            list.setCname(media.getTitle());
            list.setImg(media.getImg());
            list.setId_category("pray");

            /*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setAction(media.getAction());
            mainlist.setMainType(MainType.MOVIE);*/
            menuList_pray.add(list);
        }
        mAdapter_pray.notifyDataSetChanged();

        //__________________________________________sport
        /*mAdapter_sport= new ListTvAdapter(this, menuList_sport);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_sport.setLayoutManager(layoutManager);
        recycler_sport.setItemAnimator(new DefaultItemAnimator());
        recycler_sport.setAdapter(mAdapter_sport);

        for (int i = 0; i < AppController.list_sa_sport.size(); i++) {
            Lists media = AppController.list_sa_sport.get(i);

            ChannelModel list = new ChannelModel();
            list.setCname(media.getTitle());
            list.setImg(media.getImg());
            list.setId_category("sport");

            *//*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setAction(media.getAction());
            mainlist.setMainType(MainType.MOVIE);*//*
            menuList_sport.add(list);
        }
        mAdapter_sport.notifyDataSetChanged();*/

        //__________________________________________food
        /*mAdapter_food= new ListTvAdapter(this, menuList_food);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_food.setLayoutManager(layoutManager);
        recycler_food.setItemAnimator(new DefaultItemAnimator());
        recycler_food.setAdapter(mAdapter_food);

        for (int i = 0; i < AppController.list_sa_food.size(); i++) {
            Lists media = AppController.list_sa_food.get(i);

            ChannelModel list = new ChannelModel();
            list.setCname(media.getTitle());
            list.setImg(media.getImg());
            list.setId_category("food");

            *//*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setAction(media.getAction());
            mainlist.setMainType(MainType.MOVIE);*//*
            menuList_food.add(list);
        }
        mAdapter_food.notifyDataSetChanged();*/


        //__________________________________________psychology
        /*mAdapter_psychology= new ListTvAdapter(this, menuList_psychology);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_psychology.setLayoutManager(layoutManager);
        recycler_psychology.setItemAnimator(new DefaultItemAnimator());
        recycler_psychology.setAdapter(mAdapter_psychology);

        for (int i = 0; i < AppController.list_sa_psychology.size(); i++) {
            Lists media = AppController.list_sa_psychology.get(i);

            ChannelModel list = new ChannelModel();
            list.setCname(media.getTitle());
            list.setImg(media.getImg());
            list.setId_category("psychology");

            *//*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setAction(media.getAction());
            mainlist.setMainType(MainType.MOVIE);*//*
            menuList_psychology.add(list);
        }
        mAdapter_psychology.notifyDataSetChanged();*/
    }


    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
