package ir.maziardev.chatrapp.activitys;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.adapter.GridListAdapter;
import ir.maziardev.chatrapp.classes.Pages;
import ir.maziardev.chatrapp.enums.PageType;
import ir.maziardev.chatrapp.models.GridList;
import ir.maziardev.chatrapp.network.AppController;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class GridListActivity extends AppCompatActivity {

    @BindView(R.id.recycler_gridlist)
    RecyclerView recyclerView;
    GridListAdapter mAdapter;

    private PageType pageType;
    private List<GridList> gridList = new ArrayList<>();

    private String seriesname = "";
    private String img = "";
    private String url = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_grid_list);
        ButterKnife.bind(this);

        ActionBar actionBar = getSupportActionBar();
        actionBar.setHomeButtonEnabled(true);
        actionBar.setDisplayHomeAsUpEnabled(true);

        Bundle ex = getIntent().getExtras();
        if (ex != null) {
            actionBar.setTitle(ex.getString(Pages.TITLE));
            pageType = (PageType) ex.get(Pages.PAGE);

            seriesname = ex.getString(Pages.SERIESNAME);
            img = ex.getString(Pages.IMG);
            url = ex.getString(Pages.URL);
        }

        mAdapter = new GridListAdapter(this, gridList);
        GridLayoutManager gridVertical = new GridLayoutManager(this, 2, GridLayoutManager.VERTICAL, false);
        RecyclerView.LayoutManager mLayoutManager = gridVertical;
        //RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(getApplicationContext());
        recyclerView.setLayoutManager(mLayoutManager);
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        recyclerView.setAdapter(mAdapter);

        switch (pageType) {
            case SUB:
                sub();
                break;
            case MUSIC:
                gridList.addAll(AppController.list_music);
                mAdapter.notifyDataSetChanged();
                break;
            case MOVIE:
                gridList.addAll(AppController.list_movie);
                mAdapter.notifyDataSetChanged();
                break;
            case SERIES:
                gridList.addAll(AppController.list_series);
                mAdapter.notifyDataSetChanged();
                break;
            case CARTON:
                gridList.addAll(AppController.list_carton);
                mAdapter.notifyDataSetChanged();
                break;
            case QURAN:
                gridList.addAll(AppController.list_quran);
                mAdapter.notifyDataSetChanged();
                break;
            case NOHE:
                gridList.addAll(AppController.list_nohe);
                mAdapter.notifyDataSetChanged();
                break;
        }
    }


    private void sub() {
        try {
            String[] ul = url.split("!");
            for (int i = 0; i < ul.length; i++) {
                GridList list = new GridList();
                list.setMovie(true);
                list.setTitle("قسمت " + (i + 1));
                list.setImg(img);
                list.setUrl(ul[i]);
                list.setSeries(true);
                gridList.add(list);
            }
            mAdapter.notifyDataSetChanged();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    @TargetApi(Build.VERSION_CODES.JELLY_BEAN_MR1)
    private void forceRTLIfSupported() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
            getWindow().getDecorView().setLayoutDirection(View.LAYOUT_DIRECTION_RTL);
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                //Write your logic here
                this.finish();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
