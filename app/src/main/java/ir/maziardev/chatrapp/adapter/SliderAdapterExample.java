package ir.maziardev.chatrapp.adapter;


import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.smarteist.autoimageslider.SliderViewAdapter;

import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.activitys.DetailActivity;
import ir.maziardev.chatrapp.enums.Extras;
import ir.maziardev.chatrapp.network.AppController;

public class SliderAdapterExample extends SliderViewAdapter<SliderAdapterExample.SliderAdapterVH> {

    private Context context;

    public SliderAdapterExample(Context context) {
        this.context = context;
    }

    @Override
    public SliderAdapterVH onCreateViewHolder(ViewGroup parent) {
        View inflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.image_slider_layout_item, null);
        return new SliderAdapterVH(inflate);
    }

    @Override
    public void onBindViewHolder(SliderAdapterVH viewHolder, int position) {

        viewHolder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(context, DetailActivity.class);
                intent.putExtra(Extras.EXTRA_URL.toString(), AppController.arrayList_slider.get(position).getImg());
                intent.putExtra(Extras.EXTRA_ACTION.toString(), AppController.arrayList_slider.get(position).getAction());
                intent.putExtra(Extras.EXTRA_TITLE.toString(), "تیتر روز");
                intent.putExtra(Extras.EXTRA_OP.toString(), AppController.arrayList_slider.get(position).getAction());
                intent.putExtra(Extras.EXTRA_DESCRIPTION.toString(), AppController.arrayList_slider.get(position).getDescription());
                intent.putExtra(Extras.EXTRA_DETAIL.toString(), AppController.arrayList_slider.get(position).getTitle());
                context.startActivity(intent);
            }
        });

        try{
            viewHolder.textViewDescription.setText(AppController.arrayList_slider.get(position).getTitle());
            Glide.with(viewHolder.itemView)
                    .load(AppController.arrayList_slider.get(position).getImg())
                    .into(viewHolder.imageViewBackground);
        }catch (Exception e){
            e.printStackTrace();
        }


    }

    @Override
    public int getCount() {
        //slider view count could be dynamic size
        return AppController.arrayList_slider.size();
    }


    class SliderAdapterVH extends SliderViewAdapter.ViewHolder {

        View itemView;
        ImageView imageViewBackground;
        TextView textViewDescription;

        public SliderAdapterVH(View itemView) {
            super(itemView);
            imageViewBackground = itemView.findViewById(R.id.iv_auto_image_slider);
            textViewDescription = itemView.findViewById(R.id.tv_slider_title);
            this.itemView = itemView;
        }
    }
}