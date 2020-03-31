package ir.maziardev.chatrapp.adapter;


import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
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

import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;

import java.util.ArrayList;

import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.activitys.ChannelActivity;
import ir.maziardev.chatrapp.activitys.ImageViewerActivity;
import ir.maziardev.chatrapp.activitys.VideoActivity;
import ir.maziardev.chatrapp.enums.Extras;
import ir.maziardev.chatrapp.models.Channell;


public class ChannelAdapter extends RecyclerView.Adapter<ChannelAdapter.MyViewHolder> {

    private ArrayList<Channell> dataList;
    private Context mContext;
    private boolean btnPlay = false;

    public class MyViewHolder extends RecyclerView.ViewHolder {
        public ImageView img_main, img_movie, img_music;
        public TextView txt_channel, tv_time, tv_phone, tv_location, tv_music;
        public CardView card_items;
        public LinearLayout linear_music, linear_picture,
                linear_survey, linear_location, linear_phone;
        public FrameLayout frm_movie;
        public RadioButton rb_one, rb_two, rb_three, rb_four;
        public Button btn_sendSurvey;
        public RadioGroup rb_group;

        public MyViewHolder(View view) {
            super(view);
            card_items = (CardView) view.findViewById(R.id.card_channel_main);

            txt_channel = (TextView) view.findViewById(R.id.tv_channel_main);
            tv_time = (TextView) view.findViewById(R.id.tv_time_channel);

            linear_music = (LinearLayout) view.findViewById(R.id.linear_music_channel);
            tv_music = (TextView) view.findViewById(R.id.tv_music_channel);
            img_music = (ImageView) view.findViewById(R.id.img_music_channel);

            frm_movie = (FrameLayout) view.findViewById(R.id.frm_video_channel);
            img_movie = (ImageView) view.findViewById(R.id.img_video_channel);

            linear_picture = (LinearLayout) view.findViewById(R.id.linear_image_channel);
            img_main = (ImageView) view.findViewById(R.id.img_picture_channel);

            linear_survey = (LinearLayout) view.findViewById(R.id.linear_survey_channel);
            rb_group = (RadioGroup) view.findViewById(R.id.rb_group_channel);
            rb_one = (RadioButton) view.findViewById(R.id.rb_one_channel);
            rb_two = (RadioButton) view.findViewById(R.id.rb_two_channel);
            rb_three = (RadioButton) view.findViewById(R.id.rb_three_channel);
            rb_four = (RadioButton) view.findViewById(R.id.rb_four_channel);
            btn_sendSurvey = (Button) view.findViewById(R.id.btn_sendsurvey_channel);

            linear_location = (LinearLayout) view.findViewById(R.id.linear_location_channel);
            tv_location = (TextView) view.findViewById(R.id.tv_location_channel);

            linear_phone = (LinearLayout) view.findViewById(R.id.linear_contact_channel);
            tv_phone = (TextView) view.findViewById(R.id.tv_phone_channel);
        }
    }

    public ChannelAdapter(Context context, ArrayList<Channell> dataList) {
        this.dataList = dataList;
        this.mContext = context;

    }

    @Override
    public MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.list_channel_item, parent, false);

        return new MyViewHolder(itemView);
    }


    @Override
    public void onBindViewHolder(MyViewHolder holder, int position) {
        Channell list = dataList.get(position);

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
                Glide.with(mContext).load(list.getImg()).into(holder.img_main);
                break;
            case MOVIE:
                setVisiblity(holder, holder.frm_movie);
                Glide.with(mContext).load(list.getImg()).into(holder.img_movie);
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

        /*if(list.isTintcolor()){
            holder.card_items.setCardBackgroundColor(Color.parseColor("#93E0D4"));
        }*/

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
    }

    private void setVisiblity(MyViewHolder holder, ViewGroup linearLayout) {
        holder.linear_phone.setVisibility(View.GONE);
        holder.linear_location.setVisibility(View.GONE);
        holder.linear_picture.setVisibility(View.GONE);
        holder.frm_movie.setVisibility(View.GONE);
        holder.linear_music.setVisibility(View.GONE);
        holder.linear_survey.setVisibility(View.GONE);

        linearLayout.setVisibility(View.VISIBLE);
    }

    private void allGone(MyViewHolder holder) {
        holder.linear_phone.setVisibility(View.GONE);
        holder.linear_location.setVisibility(View.GONE);
        holder.linear_picture.setVisibility(View.GONE);
        holder.frm_movie.setVisibility(View.GONE);
        holder.linear_music.setVisibility(View.GONE);
        holder.linear_survey.setVisibility(View.GONE);
    }

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