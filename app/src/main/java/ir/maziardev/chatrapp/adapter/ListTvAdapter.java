package ir.maziardev.chatrapp.adapter;


import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;

import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;

import java.util.List;

import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.activitys.GridListActivity;
import ir.maziardev.chatrapp.activitys.RssListActivity;
import ir.maziardev.chatrapp.activitys.VideoActivity;
import ir.maziardev.chatrapp.activitys.WebActivity;
import ir.maziardev.chatrapp.classes.CircularImageView;
import ir.maziardev.chatrapp.classes.Pages;
import ir.maziardev.chatrapp.enums.Extras;
import ir.maziardev.chatrapp.enums.PageType;
import ir.maziardev.chatrapp.models.Mainlist;

public class ListTvAdapter extends RecyclerView.Adapter<ListTvAdapter.ViewHolder> {

    private List<Mainlist> dataList;
    private Context mContext;
    private int lastPosition = -1;

    public static class ViewHolder extends RecyclerView.ViewHolder {
        public TextView tv_title;
        public CircularImageView tv_image;
        public CardView cardView;

        public ViewHolder(View v) {
            super(v);
            tv_title =  v.findViewById(R.id.tv_list_main);
            tv_image =  v.findViewById(R.id.img_list_main);
            cardView =  v.findViewById(R.id.card_list_main);
        }
    }

    public ListTvAdapter(Context context,  List<Mainlist> dataList) {
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
        Animation animation = AnimationUtils.loadAnimation(mContext,
                (position > lastPosition) ? R.anim.up_from_bottom
                        : R.anim.down_from_top);
        holder.itemView.startAnimation(animation);
        lastPosition = position;

        Mainlist mainlist = dataList.get(position);

        Glide.with(mContext)
                .load(mainlist.getImg())
                .centerCrop()
                .placeholder(R.drawable.noimage)
                .into(holder.tv_image);

        holder.tv_title.setText(mainlist.getTitle());


        holder.cardView.setOnClickListener(new onCardClick(holder.getAdapterPosition()));
    }


    class onCardClick implements View.OnClickListener {
        int position;

        public onCardClick(int adapterPosition) {
            this.position = adapterPosition;
        }

        @Override
        public void onClick(View view) {
            Mainlist mainlist = dataList.get(position);

            Intent intent = new Intent(mContext, WebActivity.class);

            switch (mainlist.getMainType()){
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
            }

        }
    }


    @Override
    public int getItemCount() {
        return this.dataList.size();
    }

}
