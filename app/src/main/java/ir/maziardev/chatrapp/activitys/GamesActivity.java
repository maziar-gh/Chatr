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

public class GamesActivity extends AppCompatActivity {

    @BindView(R.id.recycler_child_game)
    RecyclerView recycler_child;
    @BindView(R.id.recycler_teen_game)
    RecyclerView recycler_teen;
    @BindView(R.id.recycler_other_game)
    RecyclerView recycler_other;


    private List<Mainlist> menuList_child = new ArrayList<>();
    private List<Mainlist> menuList_teen = new ArrayList<>();
    private List<Mainlist> menuList_other = new ArrayList<>();
    private ListTvAdapter mAdapter_child, mAdapter_teen, mAdapter_other;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_games);
        ButterKnife.bind(this);

        init();
    }

    private void init() {

        //________________________________________child
        mAdapter_child = new ListTvAdapter(this, menuList_child);
        LinearLayoutManager layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_child.setLayoutManager(layoutManager);
        recycler_child.setItemAnimator(new DefaultItemAnimator());
        recycler_child.setAdapter(mAdapter_child);

        for (int i = 0; i < AppController.list_games.size(); i++) {
            Lists game = AppController.list_games.get(i);
            if(game.getId_category().equals("16")) {
                Mainlist mainlist = new Mainlist();
                mainlist.setTitle(game.getTitle());
                mainlist.setImg(game.getImg());
                mainlist.setUrl(game.getUrl());
                mainlist.setMainType(MainType.GAMES);
                menuList_child.add(mainlist);
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
                Mainlist mainlist = new Mainlist();
                mainlist.setTitle(game.getTitle());
                mainlist.setImg(game.getImg());
                mainlist.setUrl(game.getUrl());
                mainlist.setMainType(MainType.GAMES);
                menuList_teen.add(mainlist);
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
                Mainlist mainlist = new Mainlist();
                mainlist.setTitle(game.getTitle());
                mainlist.setImg(game.getImg());
                mainlist.setUrl(game.getUrl());
                mainlist.setMainType(MainType.GAMES);
                menuList_other.add(mainlist);
            }
        }
        mAdapter_other.notifyDataSetChanged();

    }


    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
