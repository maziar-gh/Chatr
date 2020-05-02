package ir.maziardev.chatrapp.activitys;


import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Toast;

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
import ir.maziardev.chatrapp.models.GridList;
import ir.maziardev.chatrapp.models.Lists;
import ir.maziardev.chatrapp.models.Mainlist;
import ir.maziardev.chatrapp.network.AppController;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class MediaActivity extends AppCompatActivity {

    private static final String TAG = MediaActivity.class.getSimpleName();
    private boolean mLoading = false;
    private boolean loading = true;
    private int visibleThreshold = 5;
    int firstVisibleItem, visibleItemCount, totalItemCount;

    @BindView(R.id.progress_tv)
    ProgressBar progress_tv;

    @BindView(R.id.recycler_tv_media)
    RecyclerView recycler_tv;
    @BindView(R.id.recycler_radio_media)
    RecyclerView recycler_radio;
    @BindView(R.id.recycler_movie_media)
    RecyclerView recycler_movie;
    @BindView(R.id.recycler_series_media)
    RecyclerView recycler_series;
    @BindView(R.id.recycler_carton_media)
    RecyclerView recycler_carton;
    @BindView(R.id.recycler_music_media)
    RecyclerView recycler_music;
    @BindView(R.id.recycler_quran_media)
    RecyclerView recycler_quran;
    @BindView(R.id.recycler_nohe_media)
    RecyclerView recycler_nohe;

    private List<Mainlist> menuList_tv = new ArrayList<>();
    private List<Mainlist> menuList_radio = new ArrayList<>();
    private List<Mainlist> menuList_movie = new ArrayList<>();
    private List<Mainlist> menuList_series = new ArrayList<>();
    private List<Mainlist> menuList_carton = new ArrayList<>();
    private List<Mainlist> menuList_music = new ArrayList<>();
    private List<Mainlist> menuList_quran = new ArrayList<>();
    private List<Mainlist> menuList_nohe = new ArrayList<>();
    private ListTvAdapter mAdapter_tv, mAdapter_radio,
            mAdapter_movie, mAdapter_series,
            mAdapter_carton, mAdapter_music,
            mAdapter_quran, mAdapter_nohe;

    private List<Mainlist> menuList_filter = new ArrayList<>();
    private List<Mainlist> backup_filter = new ArrayList<>();

    private FloatingActionButton fab_search;
    private BottomSheetBehavior sheetBehavior;
    private LinearLayout bottom_sheet;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_media);
        ButterKnife.bind(this);

        progress_tv.clearAnimation();
        progress_tv.setVisibility(View.GONE);

        init();

    }

    private void find(String charString) {
        if (charString.isEmpty()) {
            backup_filter = menuList_tv;
        } else {
            List<Mainlist> filteredList = new ArrayList<>();
            for (Mainlist row : backup_filter) {

                // name match condition. this might differ depending on your requirement
                // here we are looking for name or phone number match
                if (row.getTitle().toLowerCase().contains(charString.toLowerCase())) {
                    filteredList.add(row);
                }
            }

            menuList_filter = filteredList;

            menuList_tv.clear();
            menuList_tv = menuList_filter;

            mAdapter_tv.notifyDataSetChanged();
        }

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

        for (int i = 0; i < AppController.list_tel.size(); i++) {
            Lists media = AppController.list_tel.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setUrl(media.getUrl());
            mainlist.setImg(media.getImg());
            mainlist.setMainType(MainType.TV);
            menuList_tv.add(mainlist);
        }
        mAdapter_tv.notifyDataSetChanged();


        LinearLayoutManager finalLayoutManager = layoutManager;
        recycler_tv.setOnScrollListener(new RecyclerView.OnScrollListener() {

            @Override
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                super.onScrolled(recyclerView, dx, dy);
                int totalItem = finalLayoutManager.getItemCount();
                int lastVisibleItem = finalLayoutManager.findLastVisibleItemPosition();

                if (mAdapter_tv.getMoreDataAvailable() && !mLoading && lastVisibleItem == totalItem - 1) {
                    mLoading = true;

                    AppController.PAGE_TV += 1;
                    loadMore(1, AppController.PAGE_TV);
                }
            }
        });



        //__________________________________________RADIO
        mAdapter_radio = new ListTvAdapter(this, menuList_radio);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_radio.setLayoutManager(layoutManager);
        recycler_radio.setItemAnimator(new DefaultItemAnimator());
        recycler_radio.setAdapter(mAdapter_radio);

        for (int i = 0; i < AppController.list_radio.size(); i++) {
            Lists media = AppController.list_radio.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setMainType(MainType.RADIO);
            menuList_radio.add(mainlist);
        }
        mAdapter_radio.notifyDataSetChanged();


        //__________________________________________movie
        mAdapter_movie = new ListTvAdapter(this, menuList_movie);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_movie.setLayoutManager(layoutManager);
        recycler_movie.setItemAnimator(new DefaultItemAnimator());
        recycler_movie.setAdapter(mAdapter_movie);

        for (int i = 0; i < AppController.list_movie.size(); i++) {
            GridList media = AppController.list_movie.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setMainType(MainType.MOVIE);
            menuList_movie.add(mainlist);
        }
        mAdapter_movie.notifyDataSetChanged();


        //__________________________________________series
        mAdapter_series = new ListTvAdapter(this, menuList_series);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_series.setLayoutManager(layoutManager);
        recycler_series.setItemAnimator(new DefaultItemAnimator());
        recycler_series.setAdapter(mAdapter_series);

        for (int i = 0; i < AppController.list_series.size(); i++) {
            GridList media = AppController.list_series.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setMainType(MainType.SERIES);
            menuList_series.add(mainlist);
        }
        mAdapter_series.notifyDataSetChanged();


        //__________________________________________carton
        mAdapter_carton = new ListTvAdapter(this, menuList_carton);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_carton.setLayoutManager(layoutManager);
        recycler_carton.setItemAnimator(new DefaultItemAnimator());
        recycler_carton.setAdapter(mAdapter_carton);

        for (int i = 0; i < AppController.list_carton.size(); i++) {
            GridList media = AppController.list_carton.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setMainType(MainType.CARTON);
            menuList_carton.add(mainlist);
        }
        mAdapter_carton.notifyDataSetChanged();

        //__________________________________________music
        mAdapter_music = new ListTvAdapter(this, menuList_music);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_music.setLayoutManager(layoutManager);
        recycler_music.setItemAnimator(new DefaultItemAnimator());
        recycler_music.setAdapter(mAdapter_music);

        for (int i = 0; i < AppController.list_music.size(); i++) {
            GridList media = AppController.list_music.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setMainType(MainType.MUSIC);
            menuList_music.add(mainlist);
        }
        mAdapter_music.notifyDataSetChanged();


        //__________________________________________quran
        mAdapter_quran = new ListTvAdapter(this, menuList_quran);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_quran.setLayoutManager(layoutManager);
        recycler_quran.setItemAnimator(new DefaultItemAnimator());
        recycler_quran.setAdapter(mAdapter_quran);

        for (int i = 0; i < AppController.list_quran.size(); i++) {
            GridList media = AppController.list_quran.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setMainType(MainType.QURAN);
            menuList_quran.add(mainlist);
        }
        mAdapter_quran.notifyDataSetChanged();


        //__________________________________________nohe
        mAdapter_nohe = new ListTvAdapter(this, menuList_nohe);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_nohe.setLayoutManager(layoutManager);
        recycler_nohe.setItemAnimator(new DefaultItemAnimator());
        recycler_nohe.setAdapter(mAdapter_nohe);

        for (int i = 0; i < AppController.list_nohe.size(); i++) {
            GridList media = AppController.list_nohe.get(i);
            Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setMainType(MainType.NOHE);
            menuList_nohe.add(mainlist);
        }
        mAdapter_nohe.notifyDataSetChanged();
    }


    private void loadMore(int type, int index) {
        switch (type) {
            case 1:
                progress_tv.clearAnimation();
                progress_tv.setVisibility(View.VISIBLE);
                loadMoreTV(index);
                break;
            case 2:

                break;
            case 3:

                break;
            case 4:

                break;
            case 5:

                break;
            case 6:

                break;
            case 7:

                break;
            case 8:

                break;
        }
    }



    private void loadMoreTV(int page){
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_MEDIA_URL + "tv/" + page + "/" + AppController.API_BASE_LIMIT + "/" + AppController.APP_TOKEN,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray telArray = obj.getJSONArray("tel");

                            if(telArray.length()== 0 || telArray.length()>= 10){
                                mAdapter_tv.setMoreDataAvailable(false);
                                AppController.PAGE_TV -= 1;
                            }

                            for (int i = 0; i < telArray.length(); i++) {
                                JSONObject Object = telArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                media.setSite(true);
                                media.setFlag(true);
                                media.setTintcolor(true);

                                /*dbHelperTvMedia.insertData(
                                        media.getId_category(),
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        true
                                );*/

                                AppController.list_tel.add(media);
                                Mainlist mainlist = new Mainlist();
                                mainlist.setTitle(media.getTitle());
                                mainlist.setUrl(media.getUrl());
                                mainlist.setImg(media.getImg());
                                mainlist.setMainType(MainType.TV);
                                menuList_tv.add(mainlist);
                            }


                            mLoading = false;
                            mAdapter_tv.notifyDataSetChanged();

                            progress_tv.clearAnimation();
                            progress_tv.setVisibility(View.GONE);

                        } catch (JSONException e) {
                            e.printStackTrace();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                VolleyLog.d(TAG, "Error: " + error.getMessage());
            }
        });
        req.setShouldCache(false);
        AppController.getInstance().addToRequestQueue(req, "loadMoreTv");
    }


    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
