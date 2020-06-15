package ir.maziardev.chatrapp.activitys;


import android.content.Context;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.StringRequest;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.adapter.ChannelAdapter;
import ir.maziardev.chatrapp.models.ChannelList;
import ir.maziardev.chatrapp.network.AppController;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class ChannelActivity extends AppCompatActivity {

    private static final String TAG = ChannelActivity.class.getSimpleName();


    @BindView(R.id.recycler_list_channel)
    RecyclerView recyclerView;
    @BindView(R.id.fab_list_channel)
    FloatingActionButton fab_list;

    public ArrayList<ChannelList> arrayList = new ArrayList<>();
    public static MediaPlayer mediaPlayer = new MediaPlayer();
    private ChannelAdapter mAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_channel);
        ButterKnife.bind(this);

        ActionBar actionBar = getSupportActionBar();
        actionBar.setHomeButtonEnabled(true);
        actionBar.setDisplayHomeAsUpEnabled(true);


        arrayList.clear();
        Bundle ex = getIntent().getExtras();
        if (ex != null) {
            String id = ex.getString("CHANNELID", "0");
            initList(id);
        }

        mAdapter = new ChannelAdapter(ChannelActivity.this, arrayList);
        RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(getApplicationContext());
        recyclerView.setLayoutManager(mLayoutManager);
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        recyclerView.setAdapter(mAdapter);



        recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() {
            @Override
            public void onScrolled(RecyclerView recyclerView, int dx, int dy){
                if (dy<0 && !fab_list.isShown())
                    fab_list.show();
                else if(dy>0 && fab_list.isShown())
                    fab_list.hide();
            }

            @Override
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
            }
        });


        fab_list.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                recyclerView.smoothScrollToPosition(arrayList.size() - 1);
            }
        });
    }


    private List<ChannelList> getSampleData() {
        List<ChannelList> dataSet = new ArrayList<>();

        for (int i = 1; i <= 4; i++) {
            ChannelList data = new ChannelList();
            data.setTitle("title");
            data.setImgtmp("https://cdn.eso.org/images/thumb300y/eso1907a.jpg");

            dataSet.add(data);
        }

        return dataSet;
    }



    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
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
    protected void onDestroy() {
        ChannelActivity.mediaPlayer.stop();
        super.onDestroy();
    }



    private void initList(String tbl) {
        StringRequest req = new StringRequest(Request.Method.GET,
                AppController.API_BASE_URL + "channel/data/"+ tbl+"/1/30/8d91f1974ce167b2017422cf7df1a265",
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray listArray = obj.getJSONArray("list");
                            List<ChannelList> lists = new ArrayList<>();
                            ChannelList list;

                            for (int i = 0; i < listArray.length(); i++) {
                                JSONObject Object = listArray.getJSONObject(i);

                                list = new ChannelList();
                                list.setId(Object.getString("id"));
                                list.setType(Integer.parseInt(Object.getString("type")));
                                list.setTitle(Object.getString("title"));
                                list.setImg(Object.getString("img"));
                                list.setImgtmp(Object.getString("imgtmp"));
                                list.setVideo(Object.getString("video"));
                                list.setMusic(Object.getString("music"));
                                list.setFiles(Object.getString("files"));

                                lists.add(list);
                            }

                            arrayList.addAll(lists);
                            mAdapter.notifyDataSetChanged();

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
        AppController.getInstance().addToRequestQueue(req, "initList");

    }
}
