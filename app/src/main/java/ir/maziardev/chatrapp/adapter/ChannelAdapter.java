package ir.maziardev.chatrapp.adapter;


import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.bumptech.glide.request.RequestOptions;

import org.sufficientlysecure.htmltextview.HtmlHttpImageGetter;
import org.sufficientlysecure.htmltextview.HtmlTextView;

import java.util.ArrayList;

import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.activitys.ChannelActivity;
import ir.maziardev.chatrapp.activitys.ImageViewerActivity;
import ir.maziardev.chatrapp.activitys.VideoActivity;
import ir.maziardev.chatrapp.classes.BlurRender;
import ir.maziardev.chatrapp.enums.ChannelType;
import ir.maziardev.chatrapp.enums.Extras;
import ir.maziardev.chatrapp.models.ChannelList;
import ir.maziardev.chatrapp.models.ChannelModel;
import ir.maziardev.chatrapp.network.AppController;
import jp.wasabeef.glide.transformations.BlurTransformation;


public class ChannelAdapter extends RecyclerView.Adapter<ChannelAdapter.ViewHolder> {

    private ArrayList<ChannelList> dataList;
    private Context mContext;
    private boolean btnPlay = false;

    public class ViewHolder extends RecyclerView.ViewHolder {
        ImageView img_main_img;
        HtmlTextView txt_channel_img;
        CardView cardView_img;

        ImageView img_main_video;
        HtmlTextView txt_channel_video;
        CardView cardView_video;

        HtmlTextView txt_channel_music, tv_music_text_channel_music;
        ImageView img_music_controll;
        CardView cardView_music;

        HtmlTextView txt_channel_txt;
        CardView cardView_txt;

        public ViewHolder(View view) {
            super(view);
            txt_channel_img = (HtmlTextView) view.findViewById(R.id.tv_channel_image);
            img_main_img = (ImageView) view.findViewById(R.id.img_picture_channel);
            cardView_img = (CardView) view.findViewById(R.id.card_channel_image);

            txt_channel_video = (HtmlTextView) view.findViewById(R.id.tv_channel_video);
            img_main_video = (ImageView) view.findViewById(R.id.img_video_channel);
            cardView_video = (CardView) view.findViewById(R.id.card_channel_video);

            txt_channel_music = (HtmlTextView) view.findViewById(R.id.tv_music_channel);
            tv_music_text_channel_music = (HtmlTextView) view.findViewById(R.id.tv_music_text_channel);
            img_music_controll = (ImageView) view.findViewById(R.id.img_music_controll);
            cardView_music = (CardView) view.findViewById(R.id.card_channel_music);

            txt_channel_txt = (HtmlTextView) view.findViewById(R.id.tv_text_channel);
            cardView_txt = (CardView) view.findViewById(R.id.card_channel_text);
        }
    }

    public ChannelAdapter(Context context, ArrayList<ChannelList> dataList) {
        this.dataList = dataList;
        this.mContext = context;
    }

    @Override
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.image_type, parent, false);

        ViewHolder vh = new ViewHolder(v);
        return vh;
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        ChannelList object = dataList.get(position);
        if (object != null) {
            switch (object.getType()) {
                case 1:
                    Glide.with(mContext)
                            .load(object.getImgtmp())
                            .apply(RequestOptions.bitmapTransform(new BlurTransformation(100, 100)))
                            .centerCrop()
                            .into(holder.img_main_img);

                    holder.txt_channel_img.setHtml(object.getTitle(),
                            new HtmlHttpImageGetter(holder.txt_channel_img));

                    holder.cardView_img.setVisibility(View.VISIBLE);
                    holder.cardView_video.setVisibility(View.GONE);
                    holder.cardView_music.setVisibility(View.GONE);
                    holder.cardView_txt.setVisibility(View.GONE);
                    break;

                case 2:
                    Glide.with(mContext)
                            .load(object.getImgtmp())
                            .apply(RequestOptions.bitmapTransform(new BlurTransformation(100, 100)))
                            .centerCrop()
                            .into(holder.img_main_video);
                    holder.txt_channel_video.setHtml(object.getTitle(),
                            new HtmlHttpImageGetter(holder.txt_channel_video));

                    holder.cardView_img.setVisibility(View.GONE);
                    holder.cardView_video.setVisibility(View.VISIBLE);
                    holder.cardView_music.setVisibility(View.GONE);
                    holder.cardView_txt.setVisibility(View.GONE);
                    break;

                case 3:
                    holder.tv_music_text_channel_music.setHtml(object.getTitle(),
                            new HtmlHttpImageGetter(holder.tv_music_text_channel_music));
                    holder.txt_channel_music.setHtml(object.getTitle(),
                            new HtmlHttpImageGetter(holder.txt_channel_music));

                    holder.cardView_img.setVisibility(View.GONE);
                    holder.cardView_video.setVisibility(View.GONE);
                    holder.cardView_music.setVisibility(View.VISIBLE);
                    holder.cardView_txt.setVisibility(View.GONE);
                    break;

                default:
                    holder.txt_channel_txt.setHtml(object.getTitle(),
                            new HtmlHttpImageGetter(holder.txt_channel_music));

                    holder.cardView_img.setVisibility(View.GONE);
                    holder.cardView_video.setVisibility(View.GONE);
                    holder.cardView_music.setVisibility(View.GONE);
                    holder.cardView_txt.setVisibility(View.VISIBLE);
                    break;
            }
        }


        holder.cardView_img.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(mContext, ImageViewerActivity.class);
                intent.putExtra(Extras.EXTRA_URL.toString(), object.getImg());
                intent.putExtra(Extras.EXTRA_TITLE.toString(), "");
                mContext.startActivity(intent);
            }
        });


        holder.cardView_video.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(mContext, VideoActivity.class);
                intent.putExtra(Extras.EXTRA_TITLE.toString(), "");
                intent.putExtra(Extras.EXTRA_URL.toString(), object.getVideo());
                mContext.startActivity(intent);
            }
        });

        holder.cardView_music.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                player(mContext, object.getMusic(), holder.img_music_controll );
            }
        });
    }




    /*@Override
    public void onBindViewHolder(MyViewHolder holder, int position) {
        ChannelModel list = dataList.get(position);

        switch (list.getType()) {
            case PHONE:
                setVisiblity(holder, holder.linear_phone);
                holder.tv_phone.setText(list.getPhone());
                break;
            case LOCATION:
                setVisiblity(holder, holder.linear_location);
                holder.tv_location.setText("مشاهده بر روی نقشه");
                break;
            case PICTURE:
                setVisiblity(holder, holder.linear_picture);
                Glide.with(mContext).load(list.getImg()).override(AppController.SIZE_W, AppController.SIZE_H).into(holder.img_main);
                break;
            case MOVIE:
                setVisiblity(holder, holder.frm_movie);
                Glide.with(mContext).load(list.getImg()).override(AppController.SIZE_W, AppController.SIZE_H).into(holder.img_movie);
                break;
            case MUSIC:
                setVisiblity(holder, holder.linear_music);
                holder.tv_music.setText("برای پخش کلیک کنید");
                break;
            case SURVEY:
                setVisiblity(holder, holder.linear_survey);
                String survey[] = list.getSurvey().split(",");
                holder.rb_one.setText(survey[0]);
                holder.rb_two.setText(survey[1]);
                holder.rb_three.setText(survey[2]);
                holder.rb_four.setText(survey[3]);
                break;
            default:
                allGone(holder);
        }
        holder.txt_channel.setText(list.getTitle());

        holder.btn_sendSurvey.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dataList.remove(position);
                notifyDataSetChanged();
                Toast.makeText(mContext, "ارسال شد.", Toast.LENGTH_SHORT).show();
            }
        });

        *//*if(list.isTintcolor()){
            holder.card_items.setCardBackgroundColor(Color.parseColor("#93E0D4"));
        }*//*

        holder.card_items.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = null;
                switch (list.getType()) {
                    case PHONE:
                        intent = new Intent(Intent.ACTION_DIAL);
                        intent.setData(Uri.parse("tel:" + list.getPhone()));
                        mContext.startActivity(intent);
                        break;
                    case LOCATION:
                        Uri gmmIntentUri = Uri.parse("google.navigation:q=" +
                                list.getLocation().split(",")[0].trim() + "," +
                                list.getLocation().split(",")[1].trim() + "&mode=b");
                        intent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
                        intent.setPackage("com.google.android.apps.maps");
                        mContext.startActivity(intent);
                        break;
                    case PICTURE:
                        intent = new Intent(mContext, ImageViewerActivity.class);
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), list.getTitle());
                        intent.putExtra(Extras.EXTRA_URL.toString(), list.getImg());
                        mContext.startActivity(intent);
                        break;
                    case MOVIE:
                        intent = new Intent(mContext, VideoActivity.class);
                        intent.putExtra(Extras.EXTRA_TITLE.toString(), list.getTitle());
                        intent.putExtra(Extras.EXTRA_URL.toString(), list.getMovie());
                        mContext.startActivity(intent);
                        break;
                    case MUSIC:
                        player(mContext, list.getMusic(), holder.img_music);
                        break;

                }

            }

        });
    }*/


    private void player(Context mContext, String url, ImageView img_music) {
        if (btnPlay) { //pause
            if (ChannelActivity.mediaPlayer.isPlaying()) {
                btnPlay = !btnPlay;
                ChannelActivity.mediaPlayer.stop();
                img_music.setImageResource(R.drawable.white_play);
                img_music.setPadding(23,20,20,20);

            }
        } else { //play
            btnPlay = !btnPlay;
            img_music.setImageResource(R.drawable.pause);
            LinearLayout.LayoutParams params = (LinearLayout.LayoutParams)img_music.getLayoutParams();
            img_music.setPadding(20,20,20,20);
            img_music.setLayoutParams(params);

            ChannelActivity.mediaPlayer.setAudioStreamType(AudioManager.STREAM_MUSIC);
            try {
                ChannelActivity.mediaPlayer = MediaPlayer.create(mContext, Uri.parse(url));
            } catch (Exception e) {
                e.printStackTrace();
            }
            ChannelActivity.mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
                @Override
                public void onCompletion(MediaPlayer mediaPlayer) {
                    mediaPlayer.stop();
                    mediaPlayer.reset();
                }
            });
            ChannelActivity.mediaPlayer.start();

        }

        /*if (mediaPlayer.isPlaying()) {
            img_music.setImageResource(R.drawable.white_play);
            mediaPlayer.stop();
            //mediaPlayer.reset();
        } else {
            img_music.setImageResource(R.drawable.pause);
            mediaPlayer.setAudioStreamType(AudioManager.STREAM_MUSIC);
            try {
                mediaPlayer = MediaPlayer.create(mContext, Uri.parse(url));
            } catch (Exception e) {
                e.printStackTrace();
            }
            mediaPlayer.reset();
        }
        mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
            @Override
            public void onCompletion(MediaPlayer mediaPlayer) {
                mediaPlayer.stop();
                mediaPlayer.reset();
            }
        });
        mediaPlayer.start();*/
    }




    @Override
    public int getItemCount() {
        return dataList.size();
    }


}