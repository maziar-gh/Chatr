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

public class SalamatActivity extends AppCompatActivity {

    @BindView(R.id.recycler_chef_salamat)
    RecyclerView recycler_chef;
    @BindView(R.id.recycler_employ_salamat)
    RecyclerView recycler_employ;
    @BindView(R.id.recycler_pray_salamat)
    RecyclerView recycler_pray;
    @BindView(R.id.recycler_plant_salamat)
    RecyclerView recycler_plant;
    @BindView(R.id.recycler_sport_salamat)
    RecyclerView recycler_sport;
    @BindView(R.id.recycler_food_salamat)
    RecyclerView recycler_food;
    @BindView(R.id.recycler_psychology_salamat)
    RecyclerView recycler_psychology;

    private List<Mainlist> menuList_chef = new ArrayList<>();
    private List<Mainlist> menuList_employ = new ArrayList<>();
    private List<Mainlist> menuList_pray = new ArrayList<>();
    private List<Mainlist> menuList_plant = new ArrayList<>();
    private List<Mainlist> menuList_sport = new ArrayList<>();
    private List<Mainlist> menuList_food = new ArrayList<>();
    private List<Mainlist> menuList_psychology = new ArrayList<>();
    private ListTvAdapter mAdapter_chef, mAdapter_employ,
            mAdapter_pray, mAdapter_plant,
            mAdapter_sport, mAdapter_food,
            mAdapter_psychology;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_salamat);
        ButterKnife.bind(this);

        init();
    }

    private void init() {
        //________________________________________chef
        mAdapter_chef = new ListTvAdapter(this, menuList_chef);
        LinearLayoutManager layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_chef.setLayoutManager(layoutManager);
        recycler_chef.setItemAnimator(new DefaultItemAnimator());
        recycler_chef.setAdapter(mAdapter_chef);

        for (int i = 0; i < AppController.list_sa_chef.size(); i++) {
            Lists media = AppController.list_sa_chef.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setUrl(media.getUrl());
            mainlist.setAction(media.getAction());
            mainlist.setImg(media.getImg());
            mainlist.setMainType(MainType.MOVIE);
            menuList_chef.add(mainlist);
        }
        mAdapter_chef.notifyDataSetChanged();


        //__________________________________________employ
        mAdapter_employ = new ListTvAdapter(this, menuList_employ);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_employ.setLayoutManager(layoutManager);
        recycler_employ.setItemAnimator(new DefaultItemAnimator());
        recycler_employ.setAdapter(mAdapter_employ);

        for (int i = 0; i < AppController.list_sa_employ.size(); i++) {
            Lists media = AppController.list_sa_employ.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setAction(media.getAction());
            mainlist.setMainType(MainType.MOVIE);
            menuList_employ.add(mainlist);
        }
        mAdapter_employ.notifyDataSetChanged();


        //__________________________________________pray
        mAdapter_pray= new ListTvAdapter(this, menuList_pray);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_pray.setLayoutManager(layoutManager);
        recycler_pray.setItemAnimator(new DefaultItemAnimator());
        recycler_pray.setAdapter(mAdapter_pray);

        for (int i = 0; i < AppController.list_sa_pray.size(); i++) {
            Lists media = AppController.list_sa_pray.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setAction(media.getAction());
            mainlist.setMainType(MainType.MOVIE);
            menuList_pray.add(mainlist);
        }
        mAdapter_pray.notifyDataSetChanged();


        //__________________________________________plant
        mAdapter_plant = new ListTvAdapter(this, menuList_plant);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_plant.setLayoutManager(layoutManager);
        recycler_plant.setItemAnimator(new DefaultItemAnimator());
        recycler_plant.setAdapter(mAdapter_plant);

        for (int i = 0; i < AppController.list_sa_plant.size(); i++) {
            Lists media = AppController.list_sa_plant.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setAction(media.getAction());
            mainlist.setMainType(MainType.MOVIE);
            menuList_plant.add(mainlist);
        }
        mAdapter_plant.notifyDataSetChanged();


        //__________________________________________sport
        mAdapter_sport= new ListTvAdapter(this, menuList_sport);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_sport.setLayoutManager(layoutManager);
        recycler_sport.setItemAnimator(new DefaultItemAnimator());
        recycler_sport.setAdapter(mAdapter_sport);

        for (int i = 0; i < AppController.list_sa_sport.size(); i++) {
            Lists media = AppController.list_sa_sport.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setAction(media.getAction());
            mainlist.setMainType(MainType.MOVIE);
            menuList_sport.add(mainlist);
        }
        mAdapter_sport.notifyDataSetChanged();

        //__________________________________________food
        mAdapter_food= new ListTvAdapter(this, menuList_food);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_food.setLayoutManager(layoutManager);
        recycler_food.setItemAnimator(new DefaultItemAnimator());
        recycler_food.setAdapter(mAdapter_food);

        for (int i = 0; i < AppController.list_sa_food.size(); i++) {
            Lists media = AppController.list_sa_food.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setAction(media.getAction());
            mainlist.setMainType(MainType.MOVIE);
            menuList_food.add(mainlist);
        }
        mAdapter_food.notifyDataSetChanged();


        //__________________________________________psychology
        mAdapter_psychology= new ListTvAdapter(this, menuList_psychology);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_psychology.setLayoutManager(layoutManager);
        recycler_psychology.setItemAnimator(new DefaultItemAnimator());
        recycler_psychology.setAdapter(mAdapter_psychology);

        for (int i = 0; i < AppController.list_sa_psychology.size(); i++) {
            Lists media = AppController.list_sa_psychology.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setAction(media.getAction());
            mainlist.setMainType(MainType.MOVIE);
            menuList_psychology.add(mainlist);
        }
        mAdapter_psychology.notifyDataSetChanged();
    }


    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
