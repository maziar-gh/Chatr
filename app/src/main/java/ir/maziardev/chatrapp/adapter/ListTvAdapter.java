package ir.maziardev.chatrapp.adapter;


import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.browser.customtabs.CustomTabsIntent;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.StringRequest;
import com.bumptech.glide.Glide;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.sufficientlysecure.htmltextview.HtmlHttpImageGetter;
import org.sufficientlysecure.htmltextview.HtmlResImageGetter;
import org.sufficientlysecure.htmltextview.HtmlTextView;

import java.util.ArrayList;
import java.util.List;

import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.activitys.ChannelActivity;
import ir.maziardev.chatrapp.activitys.GridListActivity;
import ir.maziardev.chatrapp.activitys.RssListActivity;
import ir.maziardev.chatrapp.activitys.SplashActivity;
import ir.maziardev.chatrapp.activitys.VideoActivity;
import ir.maziardev.chatrapp.activitys.WebActivity;
import ir.maziardev.chatrapp.classes.CircularImageView;
import ir.maziardev.chatrapp.classes.Pages;
import ir.maziardev.chatrapp.enums.Extras;
import ir.maziardev.chatrapp.enums.MainType;
import ir.maziardev.chatrapp.enums.PageType;
import ir.maziardev.chatrapp.models.ChannelList;
import ir.maziardev.chatrapp.models.ChannelModel;
import ir.maziardev.chatrapp.models.Lists;
import ir.maziardev.chatrapp.models.Mainlist;
import ir.maziardev.chatrapp.network.AppController;

public class ListTvAdapter extends RecyclerView.Adapter<ListTvAdapter.ViewHolder> {
    private static final String TAG = ListTvAdapter.class.getSimpleName();

    private List<ChannelModel> dataList;
    private Context mContext;
    private int lastPosition = -1;
    boolean isMoreDataAvailable = true;


    public static class ViewHolder extends RecyclerView.ViewHolder {
        public HtmlTextView tv_title;
        public ImageView tv_image;
        public CardView cardView;

        public ViewHolder(View v) {
            super(v);
            tv_title =  v.findViewById(R.id.tv_list_main);
            tv_image =  v.findViewById(R.id.img_list_main);
            cardView =  v.findViewById(R.id.card_list_main);
        }
    }

    public ListTvAdapter(Context context,  List<ChannelModel> dataList) {
        this.mContext = context;
        this.dataList = dataList;
    }

    @Override
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.main_list_item, parent, false);

        ViewHolder vh = new ViewHolder(v);
        return vh;
    }

    @Override
    public void onBindViewHolder(ViewHolder holder, int position) {
        /*Animation animation = AnimationUtils.loadAnimation(mContext,
                (position > lastPosition) ? R.anim.up_from_bottom
                        : R.anim.down_from_top);
        holder.itemView.startAnimation(animation);
        lastPosition = position;*/

        ChannelModel channelModel = dataList.get(position);

        try{
            Glide.with(mContext)
                    .load(channelModel.getImg())
                    .override(AppController.SIZE_W, AppController.SIZE_H)
                    .centerCrop()
                    .placeholder(R.drawable.noimage)
                    .into(holder.tv_image);
        }catch (Exception e){
            e.printStackTrace();
        }

        holder.tv_title.setHtml(channelModel.getCname(),
                new HtmlHttpImageGetter(holder.tv_title));

        holder.cardView.setOnClickListener(new onCardClick(holder.getAdapterPosition()));
    }


    class onCardClick implements View.OnClickListener {
        int position;

        public onCardClick(int adapterPosition) {
            this.position = adapterPosition;
        }

        @Override
        public void onClick(View view) {
            ChannelModel channelModel = dataList.get(position);

            if(channelModel.getId_category().equals("audio")){

                Lists media = AppController.list_li_audio.get(position);
                Mainlist mainlist = new Mainlist();
                mainlist.setTitle(media.getTitle());
                mainlist.setImg(media.getImg());
                mainlist.setUrl(media.getUrl());
                mainlist.setMainType(MainType.GOYABOOK);

                Intent intent = new Intent(mContext, WebActivity.class);
                intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                mContext.startActivity(intent);


            }else if(channelModel.getId_category().equals("quran")){

                Lists media = AppController.list_li_quran.get(position);
                Mainlist mainlist = new Mainlist();
                mainlist.setTitle(media.getTitle());
                mainlist.setImg(media.getImg());
                mainlist.setUrl(media.getUrl());
                mainlist.setMainType(MainType.LI_QURAN);

                Intent intent = new Intent(mContext, WebActivity.class);
                intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                mContext.startActivity(intent);

            }else if(channelModel.getId_category().equals("mafatih")){

                Lists media = AppController.list_li_mafatih.get(position);
                Mainlist mainlist = new Mainlist();
                mainlist.setTitle(media.getTitle());
                mainlist.setImg(media.getImg());
                mainlist.setUrl(media.getUrl());
                mainlist.setMainType(MainType.LI_MAFATIH);

                Intent intent = new Intent(mContext, WebActivity.class);
                intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                mContext.startActivity(intent);

            }else if(channelModel.getId_category().equals("nahj")){

                Lists media = AppController.list_li_nahj.get(position);
                Mainlist mainlist = new Mainlist();
                mainlist.setTitle(media.getTitle());
                mainlist.setImg(media.getImg());
                mainlist.setUrl(media.getUrl());
                mainlist.setMainType(MainType.LI_NAHJ);

                Intent intent = new Intent(mContext, WebActivity.class);
                intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                mContext.startActivity(intent);

            }else if(channelModel.getId_category().equals("resaleh")){

                Lists media = AppController.list_li_resale.get(position);
                Mainlist mainlist = new Mainlist();
                mainlist.setTitle(media.getTitle());
                mainlist.setImg(media.getImg());
                mainlist.setUrl(media.getUrl());
                mainlist.setMainType(MainType.LI_RESALE);

                Intent intent = new Intent(mContext, WebActivity.class);
                intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                mContext.startActivity(intent);

            }else if(channelModel.getId_category().equals("tv")){

                Lists media = AppController.list_tv.get(position);
                Mainlist mainlist = new Mainlist();
                mainlist.setTitle(media.getTitle());
                mainlist.setImg(media.getImg());
                mainlist.setUrl(media.getUrl());
                mainlist.setMainType(MainType.TV);

                Intent intent = new Intent(mContext, WebActivity.class);
                try{
                    if(mainlist.getAction().equals("0")){
                        intent = new Intent(mContext, VideoActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }else if(mainlist.getAction().equals("1")){
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }
                }catch (Exception e){
                    intent = new Intent(mContext, VideoActivity.class);
                    intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                    intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                    mContext.startActivity(intent);
                }

            }else if(channelModel.getId_category().equals("radio")){

                Lists media = AppController.list_radio.get(position);
                Mainlist mainlist = new Mainlist();
                mainlist.setTitle(media.getTitle());
                mainlist.setImg(media.getImg());
                mainlist.setUrl(media.getUrl());
                mainlist.setMainType(MainType.RADIO);

                Intent intent = new Intent(mContext, WebActivity.class);
                intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                mContext.startActivity(intent);

            }else if(channelModel.getId_category().equals("child")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_games_child.size(); i++) {
                    Lists game = AppController.list_games_child.get(i);
                    if(game.getTitle().equals(channelModel.getCname())) {
                        Lists media = AppController.list_games_child.get(position);
                        mainlist = new Mainlist();
                        mainlist.setTitle(media.getTitle());
                        mainlist.setImg(media.getImg());
                        mainlist.setUrl(media.getUrl());
                        mainlist.setMainType(MainType.GAMES);
                    }
                }
                Uri uri = Uri.parse(mainlist.getUrl());
                CustomTabsIntent.Builder intentBuilder = new CustomTabsIntent.Builder();
                intentBuilder.setToolbarColor(ContextCompat.getColor(mContext, R.color.colorPrimary));
                intentBuilder.setSecondaryToolbarColor(ContextCompat.getColor(mContext, R.color.colorPrimaryDark));
                intentBuilder.setExitAnimations(mContext, android.R.anim.slide_in_left,
                        android.R.anim.slide_out_right);
                CustomTabsIntent customTabsIntent = intentBuilder.build();
                customTabsIntent.launchUrl(mContext, uri);

            }else if(channelModel.getId_category().equals("teen")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_games_teen.size(); i++) {
                    Lists game = AppController.list_games_teen.get(i);

                    if(game.getTitle().equals(channelModel.getCname())) {
                        Lists media = AppController.list_games_teen.get(position);
                        mainlist = new Mainlist();
                        mainlist.setTitle(media.getTitle());
                        mainlist.setImg(media.getImg());
                        mainlist.setUrl(media.getUrl());
                        mainlist.setMainType(MainType.GAMES);
                    }
                }
                Uri uri = Uri.parse(mainlist.getUrl());
                CustomTabsIntent.Builder intentBuilder = new CustomTabsIntent.Builder();
                intentBuilder.setToolbarColor(ContextCompat.getColor(mContext, R.color.colorPrimary));
                intentBuilder.setSecondaryToolbarColor(ContextCompat.getColor(mContext, R.color.colorPrimaryDark));
                intentBuilder.setExitAnimations(mContext, android.R.anim.slide_in_left,
                        android.R.anim.slide_out_right);
                CustomTabsIntent customTabsIntent = intentBuilder.build();
                customTabsIntent.launchUrl(mContext, uri);

            }else if(channelModel.getId_category().equals("other")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_games_other.size(); i++) {
                    Lists game = AppController.list_games_other.get(i);
                    if(game.getTitle().equals(channelModel.getCname())) {
                        Lists media = AppController.list_games_other.get(position);
                        mainlist = new Mainlist();
                        mainlist.setTitle(media.getTitle());
                        mainlist.setImg(media.getImg());
                        mainlist.setUrl(media.getUrl());
                        mainlist.setMainType(MainType.GAMES);
                    }
                }

                Uri uri = Uri.parse(mainlist.getUrl());
                CustomTabsIntent.Builder intentBuilder = new CustomTabsIntent.Builder();
                intentBuilder.setToolbarColor(ContextCompat.getColor(mContext, R.color.colorPrimary));
                intentBuilder.setSecondaryToolbarColor(ContextCompat.getColor(mContext, R.color.colorPrimaryDark));
                intentBuilder.setExitAnimations(mContext, android.R.anim.slide_in_left,
                        android.R.anim.slide_out_right);
                CustomTabsIntent customTabsIntent = intentBuilder.build();
                customTabsIntent.launchUrl(mContext, uri);


            }else if(channelModel.getId_category().equals("pay")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_services_pay.size(); i++) {
                    Lists game = AppController.list_services_pay.get(i);
                    if(game.getTitle().equals(channelModel.getCname())) {
                        Lists service = AppController.list_services_pay.get(position);
                        mainlist = new Mainlist();
                        mainlist.setTitle(service.getTitle());
                        mainlist.setImg(service.getImg());
                        mainlist.setUrl(service.getUrl());
                        mainlist.setMainType(MainType.SERVICE);
                    }
                }
                Intent intent = new Intent(mContext, WebActivity.class);
                intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                mContext.startActivity(intent);

            }else if(channelModel.getId_category().equals("ticket")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_services_ticket.size(); i++) {
                    Lists game = AppController.list_services_ticket.get(i);
                    if(game.getTitle().equals(channelModel.getCname())) {
                        Lists service = AppController.list_services_ticket.get(position);
                        mainlist = new Mainlist();
                        mainlist.setTitle(service.getTitle());
                        mainlist.setImg(service.getImg());
                        mainlist.setUrl(service.getUrl());
                        mainlist.setMainType(MainType.SERVICE);
                    }
                }
                Intent intent = new Intent(mContext, WebActivity.class);
                intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                mContext.startActivity(intent);

            }else if(channelModel.getId_category().equals("isna")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_ne_isna.size(); i++) {
                    Lists game = AppController.list_ne_isna.get(i);
                    if(game.getTitle().equals(channelModel.getCname())) {
                        Lists news = AppController.list_ne_isna.get(position);
                        mainlist = new Mainlist();
                        mainlist.setTitle(news.getTitle());
                        mainlist.setImg(news.getImg());
                        mainlist.setUrl(news.getUrl());
                        mainlist.setMainType(MainType.NEWS);
                    }
                }
                Intent intent = new Intent(mContext, RssListActivity.class);
                intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                mContext.startActivity(intent);

            }else if(channelModel.getId_category().equals("jamjam")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_ne_jamjam.size(); i++) {
                        Lists news = AppController.list_ne_jamjam.get(position);
                        mainlist = new Mainlist();
                        mainlist.setTitle(news.getTitle());
                        mainlist.setImg(news.getImg());
                        mainlist.setUrl(news.getUrl());
                        mainlist.setMainType(MainType.NEWS);
                }
                Intent intent = new Intent(mContext, RssListActivity.class);
                intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                mContext.startActivity(intent);

            }else if(channelModel.getId_category().equals("tasnim")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_ne_tasnim.size(); i++) {
                    Lists news = AppController.list_ne_tasnim.get(position);
                    mainlist = new Mainlist();
                    mainlist.setTitle(news.getTitle());
                    mainlist.setImg(news.getImg());
                    mainlist.setUrl(news.getUrl());
                    mainlist.setMainType(MainType.NEWS);
                }
                Intent intent = new Intent(mContext, RssListActivity.class);
                intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                mContext.startActivity(intent);

            }else if(channelModel.getId_category().equals("chef")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_sa_chef.size(); i++) {
                    Lists media = AppController.list_sa_chef.get(position);
                    mainlist = new Mainlist();
                    mainlist.setTitle(media.getTitle());
                    mainlist.setUrl(media.getUrl());
                    mainlist.setAction(media.getAction());
                    mainlist.setImg(media.getImg());
                    mainlist.setMainType(MainType.MOVIE);
                }

                try{
                    if(mainlist.getAction().equals("0")){
                        Intent intent = new Intent(mContext, VideoActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }else if(mainlist.getAction().equals("1")){
                        Intent intent = new Intent(mContext, WebActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }
                }catch (Exception e){
                    Intent intent = new Intent(mContext, VideoActivity.class);
                    intent = new Intent(mContext, VideoActivity.class);
                    intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                    intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                    mContext.startActivity(intent);
                }

            }else if(channelModel.getId_category().equals("employ")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_sa_employ.size(); i++) {
                    Lists media = AppController.list_sa_employ.get(position);
                    mainlist = new Mainlist();
                    mainlist.setTitle(media.getTitle());
                    mainlist.setUrl(media.getUrl());
                    mainlist.setAction(media.getAction());
                    mainlist.setImg(media.getImg());
                    mainlist.setMainType(MainType.MOVIE);
                }

                try{
                    if(mainlist.getAction().equals("0")){
                        Intent intent = new Intent(mContext, VideoActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }else if(mainlist.getAction().equals("1")){
                        Intent intent = new Intent(mContext, WebActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }
                }catch (Exception e){
                    Intent intent = new Intent(mContext, VideoActivity.class);
                    intent = new Intent(mContext, VideoActivity.class);
                    intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                    intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                    mContext.startActivity(intent);
                }

            }else if(channelModel.getId_category().equals("pray")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_sa_pray.size(); i++) {
                    Lists media = AppController.list_sa_pray.get(position);
                    mainlist = new Mainlist();
                    mainlist.setTitle(media.getTitle());
                    mainlist.setUrl(media.getUrl());
                    mainlist.setAction(media.getAction());
                    mainlist.setImg(media.getImg());
                    mainlist.setMainType(MainType.MOVIE);
                }

                try{
                    if(mainlist.getAction().equals("0")){
                        Intent intent = new Intent(mContext, VideoActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }else if(mainlist.getAction().equals("1")){
                        Intent intent = new Intent(mContext, WebActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }
                }catch (Exception e){
                    Intent intent = new Intent(mContext, VideoActivity.class);
                    intent = new Intent(mContext, VideoActivity.class);
                    intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                    intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                    mContext.startActivity(intent);
                }

            }else if(channelModel.getId_category().equals("plant")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_sa_plant.size(); i++) {
                    Lists media = AppController.list_sa_plant.get(position);
                    mainlist = new Mainlist();
                    mainlist.setTitle(media.getTitle());
                    mainlist.setUrl(media.getUrl());
                    mainlist.setAction(media.getAction());
                    mainlist.setImg(media.getImg());
                    mainlist.setMainType(MainType.MOVIE);
                }

                try{
                    if(mainlist.getAction().equals("0")){
                        Intent intent = new Intent(mContext, VideoActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }else if(mainlist.getAction().equals("1")){
                        Intent intent = new Intent(mContext, WebActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }
                }catch (Exception e){
                    Intent intent = new Intent(mContext, VideoActivity.class);
                    intent = new Intent(mContext, VideoActivity.class);
                    intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                    intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                    mContext.startActivity(intent);
                }

            }else if(channelModel.getId_category().equals("sport")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_sa_sport.size(); i++) {
                    Lists media = AppController.list_sa_sport.get(position);
                    mainlist = new Mainlist();
                    mainlist.setTitle(media.getTitle());
                    mainlist.setUrl(media.getUrl());
                    mainlist.setAction(media.getAction());
                    mainlist.setImg(media.getImg());
                    mainlist.setMainType(MainType.MOVIE);
                }

                try{
                    if(mainlist.getAction().equals("0")){
                        Intent intent = new Intent(mContext, VideoActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }else if(mainlist.getAction().equals("1")){
                        Intent intent = new Intent(mContext, WebActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }
                }catch (Exception e){
                    Intent intent = new Intent(mContext, VideoActivity.class);
                    intent = new Intent(mContext, VideoActivity.class);
                    intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                    intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                    mContext.startActivity(intent);
                }

            }else if(channelModel.getId_category().equals("food")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_sa_food.size(); i++) {
                    Lists media = AppController.list_sa_food.get(position);
                    mainlist = new Mainlist();
                    mainlist.setTitle(media.getTitle());
                    mainlist.setUrl(media.getUrl());
                    mainlist.setAction(media.getAction());
                    mainlist.setImg(media.getImg());
                    mainlist.setMainType(MainType.MOVIE);
                }

                try{
                    if(mainlist.getAction().equals("0")){
                        Intent intent = new Intent(mContext, VideoActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }else if(mainlist.getAction().equals("1")){
                        Intent intent = new Intent(mContext, WebActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }
                }catch (Exception e){
                    Intent intent = new Intent(mContext, VideoActivity.class);
                    intent = new Intent(mContext, VideoActivity.class);
                    intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                    intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                    mContext.startActivity(intent);
                }

            }else if(channelModel.getId_category().equals("psychology")){
                Mainlist mainlist = null;
                for (int i = 0; i < AppController.list_sa_psychology.size(); i++) {
                    Lists media = AppController.list_sa_psychology.get(position);
                    mainlist = new Mainlist();
                    mainlist.setTitle(media.getTitle());
                    mainlist.setUrl(media.getUrl());
                    mainlist.setAction(media.getAction());
                    mainlist.setImg(media.getImg());
                    mainlist.setMainType(MainType.MOVIE);
                }

                try{
                    if(mainlist.getAction().equals("0")){
                        Intent intent = new Intent(mContext, VideoActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }else if(mainlist.getAction().equals("1")){
                        Intent intent = new Intent(mContext, WebActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }
                }catch (Exception e){
                    Intent intent = new Intent(mContext, VideoActivity.class);
                    intent = new Intent(mContext, VideoActivity.class);
                    intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                    intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                    mContext.startActivity(intent);
                }

            }else {
                AppController.list_items_channel.clear();

                Intent intent = new Intent(mContext, ChannelActivity.class);
                intent.putExtra("CHANNELID", channelModel.getId());
                mContext.startActivity(intent);
            }




            //Intent intent = new Intent(mContext, WebActivity.class);

            /*switch (mainlist.getMainType()){
                case GAMES:
                case SERVICE:
                case LI_MAFATIH:
                case LI_NAHJ:
                case LI_QURAN:
                case LI_RESALE:
                case MUSIC:
                case QURAN:
                case NOHE:
                case GOYABOOK:
                case RADIO:
                    intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                    intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                    mContext.startActivity(intent);
                    break;
                case MOVIE:
                case TV:
                    try{
                        if(mainlist.getAction().equals("0")){
                            intent = new Intent(mContext, VideoActivity.class);
                            intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                            intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                            mContext.startActivity(intent);
                        }else if(mainlist.getAction().equals("1")){
                            intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                            intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                            mContext.startActivity(intent);
                        }
                    }catch (Exception e){
                        intent = new Intent(mContext, VideoActivity.class);
                        intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                        mContext.startActivity(intent);
                    }

                    break;
                case CARTON:
                case SERIES:
                    intent = new Intent(mContext, GridListActivity.class);
                    intent.putExtra(Pages.PAGE, PageType.SUB);
                    intent.putExtra(Pages.TITLE, mainlist.getTitle());
                    intent.putExtra(Pages.SERIESNAME, mainlist.getTitle());
                    intent.putExtra(Pages.IMG, mainlist.getImg());
                    intent.putExtra(Pages.URL, mainlist.getUrl());
                    mContext.startActivity(intent);
                    break;
                case NEWS:
                    intent = new Intent(mContext, RssListActivity.class);
                    intent.putExtra(Extras.EXTRA_TITLE.toString(), mainlist.getTitle());
                    intent.putExtra(Extras.EXTRA_URL.toString(), mainlist.getUrl());
                    mContext.startActivity(intent);
                    break;
            }*/

        }
    }


    @Override
    public int getItemCount() {
        return this.dataList.size();
    }


    public void setMoreDataAvailable(boolean moreDataAvailable) {
        isMoreDataAvailable = moreDataAvailable;
    }

    public boolean getMoreDataAvailable() {
        return isMoreDataAvailable;
    }


}
