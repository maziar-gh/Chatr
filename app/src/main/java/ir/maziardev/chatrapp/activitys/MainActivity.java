package ir.maziardev.chatrapp.activitys;


import android.Manifest;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.core.app.ActivityCompat;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.StringRequest;
import com.denzcoskun.imageslider.ImageSlider;
import com.denzcoskun.imageslider.interfaces.ItemClickListener;
import com.denzcoskun.imageslider.models.SlideModel;
import com.google.firebase.analytics.FirebaseAnalytics;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

import butterknife.BindView;
import butterknife.ButterKnife;
import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.classes.SavePref;
import ir.maziardev.chatrapp.enums.Extras;
import ir.maziardev.chatrapp.live.LiveActivity;
import ir.maziardev.chatrapp.models.Update;
import ir.maziardev.chatrapp.network.AppController;
import ir.maziardev.chatrapp.network.UpdateApp;
import ir.maziardev.chatrapp.weather.WeatherActivity;
import ir.mirrajabi.persiancalendar.PersianCalendarView;
import ir.mirrajabi.persiancalendar.core.PersianCalendarHandler;
import ir.mirrajabi.persiancalendar.core.models.CalendarEvent;
import ir.mirrajabi.persiancalendar.core.models.PersianDate;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class MainActivity extends AppCompatActivity {

    private static final String TAG = MainActivity.class.getSimpleName();
    private SavePref save;

    private static final int REQUEST_STREAM = 1203;
    boolean authorized = false;
    private static String[] PERMISSIONS_STREAM = {
            Manifest.permission.CAMERA,
            Manifest.permission.RECORD_AUDIO,
            Manifest.permission.WRITE_EXTERNAL_STORAGE
    };

    @BindView(R.id.swip_main)
    SwipeRefreshLayout swip_main;
    @BindView(R.id.imageSlider)
    ImageSlider sliderView;
    @BindView(R.id.linear_support_main)
    LinearLayout linear_support;
    @BindView(R.id.linear_profile_main)
    LinearLayout linear_profile;
    @BindView(R.id.tv_calandar_main)
    TextView tv_calandar;
    @BindView(R.id.card_media_main)
    CardView card_media;
    @BindView(R.id.card_library_main)
    CardView card_library;
    @BindView(R.id.card_games_main)
    CardView card_games;
    @BindView(R.id.card_onlinepay_main)
    CardView card_onlinepay;
    @BindView(R.id.card_weather_main)
    CardView card_weather;
    @BindView(R.id.card_channel_main)
    CardView card_channel;
    @BindView(R.id.card_live_main)
    CardView card_live;
    @BindView(R.id.card_calendar_main)
    CardView card_calendar;
    @BindView(R.id.card_rss_main)
    CardView card_rss;
    @BindView(R.id.card_salamat_main)
    CardView card_salamat;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ButterKnife.bind(this);
        save = new SavePref(this);

        AppController.mFirebaseAnalytics.setUserProperty("user_id", save.load(AppController.SAVE_USER_id, "id"));
        AppController.mFirebaseAnalytics.setUserProperty("user_name", save.load(AppController.SAVE_USER_name, "name"));
        AppController.mFirebaseAnalytics.setUserProperty("user_phone", save.load(AppController.SAVE_USER_phone, "phone"));

        Bundle bundle = new Bundle();
        bundle.putString(FirebaseAnalytics.Param.ITEM_ID, save.load(AppController.SAVE_USER_id, "id"));
        bundle.putString(FirebaseAnalytics.Param.ITEM_NAME, save.load(AppController.SAVE_USER_name, "name"));
        bundle.putString(FirebaseAnalytics.Param.CONTENT_TYPE, "image");
        AppController.mFirebaseAnalytics.logEvent(FirebaseAnalytics.Event.SELECT_CONTENT, bundle);

        initSlider_load();

        final PersianCalendarView persianCalendarView = findViewById(R.id.persian_calendar_main);
        final PersianCalendarHandler calendar = persianCalendarView.getCalendar();
        final PersianDate today = calendar.getToday();
        AppController.today = today;
        calendar.addLocalEvent(new CalendarEvent(
                today, "امروز", false
        ));

        calendar.setHighlightOfficialEvents(true);
        String dayAndMonth = calendar.getWeekDayName(today) + " " + calendar.formatNumber(today.getDayOfMonth())
                + " " + calendar.getMonthName(today);
        tv_calandar.setText(dayAndMonth + " " + calendar.formatNumber(today.getYear()));

        card_media.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, MediaActivity.class));

            }
        });

        card_library.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, LibraryActivity.class));
            }
        });

        card_games.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, GamesActivity.class));
            }
        });

        card_onlinepay.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, OnlineServiceActivity.class));
            }
        });

        card_channel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, ChannelActivity.class);
                intent.putExtra("CHANNELID", "1");
                startActivity(intent);
            }
        });

        card_live.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showAuthorizedDialog();
            }
        });

        card_weather.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, WeatherActivity.class));
            }
        });
        card_calendar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, PersianCalendarActivity.class));
            }
        });
        card_rss.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, RssActivity.class));
            }
        });
        card_salamat.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, SalamatActivity.class));
            }
        });

        linear_support.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, SupportActivity.class));
            }
        });

        linear_profile.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ProfileDialogClass pd = new ProfileDialogClass(MainActivity.this,
                        save.load(AppController.SAVE_USER_name, "")
                );
                pd.show();
            }
        });


        swip_main.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
            @Override
            public void onRefresh() {
                Toast.makeText(MainActivity.this, "refresh", Toast.LENGTH_SHORT).show();
            }
        });


        isStoragePermissionGranted();
        updatecheck();

    }

    public boolean isAuthorizedGranted() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (checkSelfPermission(Manifest.permission.CAMERA)
                    == PackageManager.PERMISSION_GRANTED &&
                    checkSelfPermission(Manifest.permission.RECORD_AUDIO)
                            == PackageManager.PERMISSION_GRANTED&&
                    checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE)
                            == PackageManager.PERMISSION_GRANTED) {

                return true;
            } else {

                //showStorageDialog();
                //ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, 1);
                return false;
            }
        } else { //permission is automatically granted on sdk<23 upon installation
            Log.v(TAG, "Permission is granted");
            return true;
        }
    }

    public void verifyPermissions() {
        if(isAuthorizedGranted()){
            Intent intent = new Intent(MainActivity.this, LiveActivity.class);
            //intent.putExtra("CHANNELID", "1");
            startActivity(intent);
        }else {
            int CAMERA_permission = ActivityCompat.checkSelfPermission(MainActivity.this, Manifest.permission.CAMERA);
            int RECORD_AUDIO_permission = ActivityCompat.checkSelfPermission(MainActivity.this, Manifest.permission.RECORD_AUDIO);
            int WRITE_EXTERNAL_STORAGE_permission = ActivityCompat.checkSelfPermission(MainActivity.this, Manifest.permission.WRITE_EXTERNAL_STORAGE);
            if (CAMERA_permission != PackageManager.PERMISSION_GRANTED ||
                    RECORD_AUDIO_permission != PackageManager.PERMISSION_GRANTED ||
                    WRITE_EXTERNAL_STORAGE_permission != PackageManager.PERMISSION_GRANTED) {
                ActivityCompat.requestPermissions(
                        MainActivity.this,
                        PERMISSIONS_STREAM,
                        REQUEST_STREAM
                );
                authorized = false;
            } else {
                authorized = true;

                Intent intent = new Intent(MainActivity.this, LiveActivity.class);
                //intent.putExtra("CHANNELID", "1");
                startActivity(intent);
            }
        }

    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_STREAM && resultCode == RESULT_OK) {
            if(isAuthorizedGranted()){
                Intent intent = new Intent(MainActivity.this, LiveActivity.class);
                //intent.putExtra("CHANNELID", "1");
                startActivity(intent);
            }
        }
    }


    private void showAuthorizedDialog() {
        if(isAuthorizedGranted()){
            Intent intent = new Intent(MainActivity.this, LiveActivity.class);
            //intent.putExtra("CHANNELID", "1");
            startActivity(intent);
        }else {
            AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
            builder.setMessage("\n" +
                    "برای شروع پخش زنده نیاز به دسترسی های دوربین و صدا می باشد." +
                    "\n"
            ).setTitle("راهنما").setIcon(android.R.drawable.ic_menu_info_details);

            builder.setNegativeButton("متوجه شدم!", new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    save.save(AppController.SAVE_CAMERA_AUDIO_PERMISION, "1");
                    verifyPermissions();
                    dialog.dismiss();
                }
            });
            AlertDialog dialog = builder.create();
            dialog.show();
        }

    }


    public boolean isStoragePermissionGranted() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE)
                    == PackageManager.PERMISSION_GRANTED) {
                Log.v(TAG, "Permission is granted");
                return true;
            } else {

                Log.v(TAG, "Permission is revoked");
                ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, 1);
                return false;
            }
        } else { //permission is automatically granted on sdk<23 upon installation
            Log.v(TAG, "Permission is granted");
            return true;
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
            Log.v(TAG, "Permission: " + permissions[0] + "was " + grantResults[0]);
            //resume tasks needing this permission
        }
    }


    private void initSlider_load() {

        ArrayList<SlideModel> imageList = new ArrayList<>();
        for (int i = 0; i < AppController.arrayList_slider.size()-1; i++) {

            imageList.add(
                    new SlideModel(
                        AppController.arrayList_slider.get(i).getImg(),
                        AppController.arrayList_slider.get(i).getTitle(),
                            true
                    )
            );
        }
        sliderView.setImageList(imageList, true);



        sliderView.setItemClickListener(new ItemClickListener() {
            @Override
            public void onItemSelected(int i) {
                Intent intent = new Intent(MainActivity.this, DetailActivity.class);
                intent.putExtra(Extras.EXTRA_URL.toString(), AppController.arrayList_slider.get(i).getImg());
                intent.putExtra(Extras.EXTRA_ACTION.toString(), AppController.arrayList_slider.get(i).getAction());
                intent.putExtra(Extras.EXTRA_TITLE.toString(), AppController.arrayList_slider.get(i).getTitle());
                intent.putExtra(Extras.EXTRA_OP.toString(), AppController.arrayList_slider.get(i).getAction());
                intent.putExtra(Extras.EXTRA_DESCRIPTION.toString(), AppController.arrayList_slider.get(i).getDescription());
                intent.putExtra(Extras.EXTRA_DETAIL.toString(), AppController.arrayList_slider.get(i).getDetail());
                startActivity(intent);
            }
        });

    }

    private void updatecheck() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_UPDATE_URL,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {

                        try {
                            JSONObject object = new JSONObject(response);

                            Update update = new Update();
                            update.setId(object.getString("id"));
                            update.setVersion(object.getString("version"));
                            update.setVersion_code(object.getString("version_code"));
                            update.setDescription(object.getString("description"));
                            update.setUrl(object.getString("url"));

                            AppController.arrayList_update.add(update);

                            installupdate(update);

                        } catch (JSONException e) {
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
        AppController.getInstance().addToRequestQueue(req, "updatecheck");
    }

    private void installupdate(Update update) {
        if (Integer.parseInt(update.getVersion_code()) > Integer.parseInt(AppController.APP_VERSION_CODE)) {
            AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
            builder.setMessage("" +
                    "نسخه جدید برنامه آماده دریافت می باشد" +
                    "\n" +
                    "\n" +
                    "تغییرات:" +
                    "\n" +
                    update.getDescription() +
                    "\n" +
                    "\n" +
                    "بروز رسانی انجام شود؟"
            ).setTitle("بروزرسانی: " + "v" + update.getVersion()).setIcon(android.R.drawable.ic_menu_upload);

            builder.setPositiveButton("بروز رسانی", new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    if (isStoragePermissionGranted()) {
                        //downloadTask(update.getUrl());
                        UpdateApp atualizaApp = new UpdateApp();
                        atualizaApp.setContext(getApplicationContext());
                        atualizaApp.execute(update.getUrl());
                    }
                }
            });
            builder.setNegativeButton("بعدا", new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    dialog.dismiss();
                }
            });
            AlertDialog dialog = builder.create();
            dialog.show();
        }
    }


    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

}
