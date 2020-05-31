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
import ir.maziardev.chatrapp.models.ChannelList;
import ir.maziardev.chatrapp.models.ChannelModel;
import ir.maziardev.chatrapp.models.Lists;
import ir.maziardev.chatrapp.models.Mainlist;
import ir.maziardev.chatrapp.network.AppController;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class LibraryActivity extends AppCompatActivity {

    @BindView(R.id.recycler_library_din)
    RecyclerView recycler_library_din;
    @BindView(R.id.recycler_lib_dars)
    RecyclerView recycler_lib_dars;
    @BindView(R.id.recycler_goya_library)
    RecyclerView recycler_goya;
    @BindView(R.id.recycler_nahj_library)
    RecyclerView recycler_nahj;
    @BindView(R.id.recycler_quran_library)
    RecyclerView recycler_quran;
    @BindView(R.id.recycler_resaleh_library)
    RecyclerView recycler_resaleh;
    @BindView(R.id.recycler_mafatih_library)
    RecyclerView recycler_mafatih;


    private List<ChannelModel> menuList_din = new ArrayList<>();
    private List<ChannelModel> menuList_dars = new ArrayList<>();
    private List<ChannelModel> menuList_goya = new ArrayList<>();
    private List<ChannelModel> menuList_nahj = new ArrayList<>();
    private List<ChannelModel> menuList_quran = new ArrayList<>();
    private List<ChannelModel> menuList_resaleh = new ArrayList<>();
    private List<ChannelModel> menuList_mafatih = new ArrayList<>();
    private ListTvAdapter mAdapter_din, mAdapter_dars, mAdapter_goya, mAdapter_nahj,
            mAdapter_quran, mAdapter_resaleh,
            mAdapter_mafatih;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_library);
        ButterKnife.bind(this);

        for (int i = 0; i < AppController.list_channel.size(); i++) {
            String id_category = AppController.list_channel.get(i).getId_category();
            switch (id_category){
                case "11": //movie and music
                    menuList_dars.add(AppController.list_channel.get(i));
                    break;
                case "9": //din
                    menuList_din.add(AppController.list_channel.get(i));
                    break;
            }
        }

        init();
    }

    private void init() {

        //__________________________________________din
        mAdapter_din = new ListTvAdapter(this, menuList_din);
        LinearLayoutManager layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_library_din.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_library_din.setHasFixedSize(true);
        recycler_library_din.setAdapter(mAdapter_din);
        mAdapter_din.notifyDataSetChanged();

        //__________________________________________dars
        mAdapter_dars = new ListTvAdapter(this, menuList_dars);
        layoutManager = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_lib_dars.setLayoutManager(layoutManager);
        //recycler_tv.setItemAnimator(new DefaultItemAnimator());
        recycler_lib_dars.setHasFixedSize(true);
        recycler_lib_dars.setAdapter(mAdapter_dars);
        mAdapter_dars.notifyDataSetChanged();

        //________________________________________goya
        mAdapter_goya = new ListTvAdapter(this, menuList_goya);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_goya.setLayoutManager(layoutManager);
        recycler_goya.setItemAnimator(new DefaultItemAnimator());
        recycler_goya.setAdapter(mAdapter_goya);

        for (int i = 0; i < AppController.list_li_audio.size(); i++) {
            Lists media = AppController.list_li_audio.get(i);

            ChannelModel list = new ChannelModel();
            list.setCname(media.getTitle());
            list.setImg(media.getImg());
            list.setId_category("audio");

            /*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setMainType(MainType.GOYABOOK);*/
            menuList_goya.add(list);


        }
        mAdapter_goya.notifyDataSetChanged();


        //________________________________________quran
        mAdapter_quran = new ListTvAdapter(this, menuList_quran);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_quran.setLayoutManager(layoutManager);
        recycler_quran.setItemAnimator(new DefaultItemAnimator());
        recycler_quran.setAdapter(mAdapter_quran);

        for (int i = 0; i < AppController.list_li_quran.size(); i++) {
            Lists media = AppController.list_li_quran.get(i);

            ChannelModel list = new ChannelModel();
            list.setCname(media.getTitle());
            list.setImg(media.getImg());
            list.setId_category("quran");

            /*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setMainType(MainType.LI_QURAN);*/
            menuList_quran.add(list);
        }
        mAdapter_quran.notifyDataSetChanged();


        //________________________________________mafatih
        mAdapter_mafatih = new ListTvAdapter(this, menuList_mafatih);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_mafatih.setLayoutManager(layoutManager);
        recycler_mafatih.setItemAnimator(new DefaultItemAnimator());
        recycler_mafatih.setAdapter(mAdapter_mafatih);

        for (int i = 0; i < AppController.list_li_mafatih.size(); i++) {
            Lists media = AppController.list_li_mafatih.get(i);

            ChannelModel list = new ChannelModel();
            list.setCname(media.getTitle());
            list.setImg(media.getImg());
            list.setId_category("mafatih");

            /*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setMainType(MainType.LI_MAFATIH);*/
            menuList_mafatih.add(list);
        }
        mAdapter_mafatih.notifyDataSetChanged();


        //________________________________________nahj
        mAdapter_nahj = new ListTvAdapter(this, menuList_nahj);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_nahj.setLayoutManager(layoutManager);
        recycler_nahj.setItemAnimator(new DefaultItemAnimator());
        recycler_nahj.setAdapter(mAdapter_nahj);

        for (int i = 0; i < AppController.list_li_nahj.size(); i++) {
            Lists media = AppController.list_li_nahj.get(i);

            ChannelModel list = new ChannelModel();
            list.setCname(media.getTitle());
            list.setImg(media.getImg());
            list.setId_category("nahj");

            /*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setMainType(MainType.LI_NAHJ);*/
            menuList_nahj.add(list);
        }
        mAdapter_nahj.notifyDataSetChanged();


        //________________________________________resale
        mAdapter_resaleh = new ListTvAdapter(this, menuList_resaleh);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_resaleh.setLayoutManager(layoutManager);
        recycler_resaleh.setItemAnimator(new DefaultItemAnimator());
        recycler_resaleh.setAdapter(mAdapter_resaleh);

        for (int i = 0; i < AppController.list_li_resale.size(); i++) {
            Lists media = AppController.list_li_resale.get(i);

            ChannelModel list = new ChannelModel();
            list.setCname(media.getTitle());
            list.setImg(media.getImg());
            list.setId_category("resaleh");

            /*Mainlist mainlist = new Mainlist();
            mainlist.setTitle(media.getTitle());
            mainlist.setImg(media.getImg());
            mainlist.setUrl(media.getUrl());
            mainlist.setMainType(MainType.LI_RESALE);*/
            menuList_resaleh.add(list);
        }
        mAdapter_resaleh.notifyDataSetChanged();

    }


    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
