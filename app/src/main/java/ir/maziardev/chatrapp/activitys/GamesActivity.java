package ir.maziardev.chatrapp.activitys;


import android.content.Context;
import android.os.Bundle;
import android.util.Log;

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

public class GamesActivity extends AppCompatActivity {

    @BindView(R.id.recycler_child_sargarmi)
    RecyclerView recycler_child_sargarmi;
    @BindView(R.id.recycler_child_game)
    RecyclerView recycler_child;
    @BindView(R.id.recycler_teen_game)
    RecyclerView recycler_teen;
    @BindView(R.id.recycler_other_game)
    RecyclerView recycler_other;


    private List<ChannelModel> menuList_sargarmi = new ArrayList<>();
    private List<ChannelModel> menuList_child = new ArrayList<>();
    private List<ChannelModel> menuList_teen = new ArrayList<>();
    private List<ChannelModel> menuList_other = new ArrayList<>();
    private ListTvAdapter mAdapter_sargarmi, mAdapter_child, mAdapter_teen, mAdapter_other;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_games);
        ButterKnife.bind(this);

        for (int i = 0; i < AppController.list_channel.size(); i++) {
            String id_category = AppController.list_channel.get(i).getId_category();
            switch (id_category){
                case "7": //movie and music
                    menuList_sargarmi.add(AppController.list_channel.get(i));
                    break;
            }
        }

        init();
    }

    private void init() {

        //__________________________________________sargarmi
        mAdapter_sargarmi = new ListTvAdapter(this, menuList_sargarmi);
        LinearLayoutManager layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_child_sargarmi.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_child_sargarmi.setHasFixedSize(true);
        recycler_child_sargarmi.setAdapter(mAdapter_sargarmi);
        mAdapter_sargarmi.notifyDataSetChanged();



        //________________________________________child
        mAdapter_child = new ListTvAdapter(this, menuList_child);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_child.setLayoutManager(layoutManager);
        recycler_child.setItemAnimator(new DefaultItemAnimator());
        recycler_child.setAdapter(mAdapter_child);

        for (int i = 0; i < AppController.list_games.size(); i++) {
            Lists game = AppController.list_games.get(i);
            if(game.getId_category().equals("16")) {

                ChannelModel list = new ChannelModel();
                list.setCname(game.getTitle());
                list.setImg(game.getImg());
                list.setId_category("child");

                AppController.list_games_child.add(game);

                /*Mainlist mainlist = new Mainlist();
                mainlist.setTitle(game.getTitle());
                mainlist.setImg(game.getImg());
                mainlist.setUrl(game.getUrl());
                mainlist.setMainType(MainType.GAMES);*/
                menuList_child.add(list);
            }
        }
        mAdapter_child.notifyDataSetChanged();


        //________________________________________teen
        mAdapter_teen = new ListTvAdapter(this, menuList_teen);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_teen.setLayoutManager(layoutManager);
        recycler_teen.setItemAnimator(new DefaultItemAnimator());
        recycler_teen.setAdapter(mAdapter_teen);

        for (int i = 0; i < AppController.list_games.size(); i++) {
            Lists game = AppController.list_games.get(i);
            if(game.getId_category().equals("17")) {

                ChannelModel list = new ChannelModel();
                list.setCname(game.getTitle());
                list.setImg(game.getImg());
                list.setId_category("teen");

                AppController.list_games_teen.add(game);

                /*Mainlist mainlist = new Mainlist();
                mainlist.setTitle(game.getTitle());
                mainlist.setImg(game.getImg());
                mainlist.setUrl(game.getUrl());
                mainlist.setMainType(MainType.GAMES);*/
                menuList_teen.add(list);
            }
        }
        mAdapter_teen.notifyDataSetChanged();


        //________________________________________other
        mAdapter_other = new ListTvAdapter(this, menuList_other);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_other.setLayoutManager(layoutManager);
        recycler_other.setItemAnimator(new DefaultItemAnimator());
        recycler_other.setAdapter(mAdapter_other);

        for (int i = 0; i < AppController.list_games.size(); i++) {
            Lists game = AppController.list_games.get(i);
            if(game.getId_category().equals("5")) {

                ChannelModel list = new ChannelModel();
                list.setCname(game.getTitle());
                list.setImg(game.getImg());
                list.setId_category("other");

                AppController.list_games_other.add(game);


                /*Mainlist mainlist = new Mainlist();
                mainlist.setTitle(game.getTitle());
                mainlist.setImg(game.getImg());
                mainlist.setUrl(game.getUrl());
                mainlist.setMainType(MainType.GAMES);*/
                menuList_other.add(list);
            }
        }
        mAdapter_other.notifyDataSetChanged();

    }


    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
