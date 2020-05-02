package ir.maziardev.chatrapp.adapter;


import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;

import java.util.List;

import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.activitys.GridListActivity;
import ir.maziardev.chatrapp.activitys.ImageViewerActivity;
import ir.maziardev.chatrapp.activitys.VideoActivity;
import ir.maziardev.chatrapp.activitys.WebActivity;
import ir.maziardev.chatrapp.classes.Pages;
import ir.maziardev.chatrapp.enums.Extras;
import ir.maziardev.chatrapp.models.GridList;
import ir.maziardev.chatrapp.network.AppController;

public class GridListAdapter extends RecyclerView.Adapter<GridListAdapter.MyViewHolder> {

    private List<GridList> dataList;
    private Context mContext;

    public class MyViewHolder extends RecyclerView.ViewHolder {
        public ImageView img_main, img_line;
        public TextView tv_title, tv_actor, tv_category;
        public FrameLayout frm_list;
        public CardView card_items;

        public MyViewHolder(View view) {
            super(view);
            img_main = (ImageView) view.findViewById(R.id.img_grid_list);
            img_line = (ImageView) view.findViewById(R.id.img_grid_line);
            tv_title = (TextView) view.findViewById(R.id.tv_grid_list_title);
            tv_actor = (TextView) view.findViewById(R.id.tv_grid_list_actor);
            tv_category = (TextView) view.findViewById(R.id.tv_grid_list_category);
            frm_list = (FrameLayout) view.findViewById(R.id.frm_grid_list);
            card_items = (CardView) view.findViewById(R.id.card_grid_list);
        }
    }

    public GridListAdapter(Context context, List<GridList> dataList) {
        this.dataList = dataList;
        this.mContext = context;
    }

    @Override
    public MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.grid_list_row, parent, false);

        return new MyViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(MyViewHolder holder, int position) {
        GridList list = dataList.get(position);

        holder.tv_title.setText(list.getTitle());
        Glide.with(mContext).load(list.getImg()).override(AppController.SIZE_W, AppController.SIZE_H).into(holder.img_main);

        if (list.isMusic()) {
            holder.tv_actor.setText("خواننده: " + list.getActor());
            holder.tv_category.setText("سبک: " + list.getCategory());
            holder.tv_actor.setVisibility(View.VISIBLE);
            holder.tv_category.setVisibility(View.VISIBLE);
            holder.img_line.setVisibility(View.VISIBLE);

            holder.frm_list.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent(mContext, WebActivity.class);
                    intent.putExtra(Extras.EXTRA_URL.toString(), list.getUrl());
                    intent.putExtra(Extras.EXTRA_TITLE.toString(), list.getTitle());
                    mContext.startActivity(intent);
                }
            });



        }else if(list.isSeries()){

            holder.frm_list.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent(mContext, VideoActivity.class);
                    /*intent.putExtra(Pages.PAGE, list.getPageType());
                    intent.putExtra(Pages.TITLE, list.getTitle());
                    intent.putExtra(Pages.SERIESNAME, list.getSeriesname());
                    intent.putExtra(Pages.IMG, list.getImg());
                    intent.putExtra(Pages.URL, list.getUrl());
*/
                    intent.putExtra(Extras.EXTRA_URL.toString(), list.getUrl());
                    intent.putExtra(Extras.EXTRA_TITLE.toString(), list.getTitle());

                    mContext.startActivity(intent);
                }
            });
        }else {


            holder.frm_list.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent(mContext, ImageViewerActivity.class);
                    intent.putExtra(Extras.EXTRA_URL.toString(), list.getImg());
                    intent.putExtra(Extras.EXTRA_TITLE.toString(), list.getTitle());
                    mContext.startActivity(intent);
                }
            });
        }


    }

    @Override
    public int getItemCount() {
        return dataList.size();
    }
}