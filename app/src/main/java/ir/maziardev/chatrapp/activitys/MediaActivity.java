package ir.maziardev.chatrapp.activitys;


import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.StringRequest;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.adapter.ListTvAdapter;
import ir.maziardev.chatrapp.enums.MainType;
import ir.maziardev.chatrapp.models.ChannelModel;
import ir.maziardev.chatrapp.models.GridList;
import ir.maziardev.chatrapp.models.Lists;
import ir.maziardev.chatrapp.models.Mainlist;
import ir.maziardev.chatrapp.network.AppController;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class MediaActivity extends AppCompatActivity {

    private static final String TAG = MediaActivity.class.getSimpleName();
    private boolean mLoading = false;

    @BindView(R.id.recycler_media_music)
    RecyclerView recycler_it;

    @BindView(R.id.recycler_media_kodak)
    RecyclerView recycler_media_kodak;

    @BindView(R.id.recycler_media_movie)
    RecyclerView recycler_movie;

    @BindView(R.id.recycler_media_tv)
    RecyclerView recycler_tv;

    @BindView(R.id.recycler_media_radio)
    RecyclerView recycler_radio;


    private List<ChannelModel> menuList_kodak = new ArrayList<>();
    private List<ChannelModel> menuList_tv = new ArrayList<>();
    private List<ChannelModel> menuList_radio = new ArrayList<>();
    private List<ChannelModel> menuList_music = new ArrayList<>();
    private List<ChannelModel> menuList_movie = new ArrayList<>();
    private ListTvAdapter mAdapter_kodak, mAdapter_tv, mAdapter_radio, mAdapter_music, mAdapter_movie;

    LinearLayoutManager layoutManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_media);
        ButterKnife.bind(this);

        for (int i = 0; i < AppController.list_channel.size(); i++) {
            String id_category = AppController.list_channel.get(i).getId_category();
            switch (id_category){
                case "2": //movie and music
                    menuList_movie.add(AppController.list_channel.get(i));
                    break;
                case "12": //it & education
                    menuList_music.add(AppController.list_channel.get(i));
                    break;
                case "4": //kodak
                    menuList_kodak.add(AppController.list_channel.get(i));
                    break;
            }
        }

        init();
    }


    private void init() {

        //________________________________________TV
        mAdapter_tv = new ListTvAdapter(this, menuList_tv);
        LinearLayoutManager layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_tv.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_tv.setHasFixedSize(true);
        recycler_tv.setAdapter(mAdapter_tv);

        for (int i = 0; i < AppController.list_tv.size(); i++) {
            Lists media = AppController.list_tv.get(i);

            ChannelModel list = new ChannelModel();
            list.setCname(media.getTitle());
            list.setImg(media.getImg());
            list.setId_category("tv");

            /*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setUrl(media.getUrl());
            mainlist.setImg(media.getImg());
            mainlist.setMainType(MainType.TV);*/
            menuList_tv.add(list);
        }
        mAdapter_tv.notifyDataSetChanged();


        //__________________________________________RADIO
        mAdapter_radio = new ListTvAdapter(this, menuList_radio);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_radio.setLayoutManager(layoutManager);
        //recycler_radio.setItemAnimator(new DefaultItemAnimator());
        recycler_radio.setAdapter(mAdapter_radio);

        for (int i = 0; i < AppController.list_radio.size(); i++) {
            Lists media = AppController.list_radio.get(i);

            ChannelModel list = new ChannelModel();
            list.setCname(media.getTitle());
            list.setImg(media.getImg());
            list.setId_category("radio");

            /*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setMainType(MainType.RADIO);*/
            menuList_radio.add(list);
        }
        mAdapter_radio.notifyDataSetChanged();


        //__________________________________________movie and music
        mAdapter_movie = new ListTvAdapter(this, menuList_movie);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_movie.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_movie.setHasFixedSize(true);
        recycler_movie.setAdapter(mAdapter_movie);
        mAdapter_movie.notifyDataSetChanged();

        //________________________________________it & education
        mAdapter_music = new ListTvAdapter(this, menuList_music);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_it.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_it.setHasFixedSize(true);
        recycler_it.setAdapter(mAdapter_music);
        mAdapter_music.notifyDataSetChanged();


        //________________________________________kodak
        mAdapter_kodak = new ListTvAdapter(this, menuList_kodak);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_media_kodak.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_media_kodak.setHasFixedSize(true);
        recycler_media_kodak.setAdapter(mAdapter_kodak);
        mAdapter_kodak.notifyDataSetChanged();

    }


    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
