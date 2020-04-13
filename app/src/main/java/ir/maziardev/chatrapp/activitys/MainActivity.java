package ir.maziardev.chatrapp.activitys;


import android.Manifest;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

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
import com.dcastalia.localappupdate.DownloadApk;
import com.smarteist.autoimageslider.IndicatorAnimations;
import com.smarteist.autoimageslider.IndicatorView.draw.controller.DrawController;
import com.smarteist.autoimageslider.SliderAnimations;
import com.smarteist.autoimageslider.SliderView;

import org.json.JSONException;
import org.json.JSONObject;

import butterknife.BindView;
import butterknife.ButterKnife;
import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.adapter.SliderAdapterExample;
import ir.maziardev.chatrapp.network.DownloadData;
import ir.maziardev.chatrapp.classes.SavePref;
import ir.maziardev.chatrapp.models.Update;
import ir.maziardev.chatrapp.network.AppController;
import ir.maziardev.chatrapp.weather.WeatherActivity;
import ir.mirrajabi.persiancalendar.PersianCalendarView;
import ir.mirrajabi.persiancalendar.core.PersianCalendarHandler;
import ir.mirrajabi.persiancalendar.core.models.CalendarEvent;
import ir.mirrajabi.persiancalendar.core.models.PersianDate;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class MainActivity extends AppCompatActivity {

    private static final String TAG = MainActivity.class.getSimpleName();
    private SavePref save;

    @BindView(R.id.swip_main)
    SwipeRefreshLayout swip_main;
    @BindView(R.id.imageSlider_2)
    SliderView sliderView;
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

        initSlider_load();

        final PersianCalendarView persianCalendarView = findViewById(R.id.persian_calendar_main);
        final PersianCalendarHandler calendar = persianCalendarView.getCalendar();
        final PersianDate today = calendar.getToday();
        AppController.today = today;
        calendar.addLocalEvent(new CalendarEvent(
                today, "امروز", false
        ));

        calendar.setHighlightOfficialEvents(true);
        String dayAndMonth = calendar.getWeekDayName(today) +" "+ calendar.formatNumber(today.getDayOfMonth())
                +" "+ calendar.getMonthName(today);
        tv_calandar.setText(dayAndMonth + " " + calendar.formatNumber(today.getYear()));

        card_media.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this,MediaActivity.class));

            }
        });

        card_library.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this,LibraryActivity.class));
            }
        });

        card_games.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this,GamesActivity.class));
            }
        });

        card_onlinepay.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this,OnlineServiceActivity.class));
            }
        });

        card_channel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, ChannelActivity.class));
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
                        save.load(AppController.SAVE_USER_dgree, ""),
                        save.load(AppController.SAVE_USER_name, ""),
                        save.load(AppController.SAVE_USER_pcode, "")
                );
                pd.show();
            }
        });


        swip_main.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
            @Override
            public void onRefresh() {
                new DownloadData(MainActivity.this);
                swip_main.setRefreshing(false);
            }
        });


        isStoragePermissionGranted();
        updatecheck();
    }



    /*private void gpsTracker() {

        GPSTracker mGPS = new GPSTracker(this);
        if (ActivityCompat.checkSelfPermission(MainActivity.this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(MainActivity.this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(MainActivity.this, new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, 1);
            if (mGPS.canGetLocation()) {
                mGPS.getLocation();
                Toast.makeText(MainActivity.this, ("Lat" + mGPS.getLatitude() + "Lon" + mGPS.getLongitude()), Toast.LENGTH_SHORT).show();
            } *//*else {
                Toast.makeText(MainActivity.this, "Unabletofind", Toast.LENGTH_SHORT).show();
            }*//*
        }
    }*/


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
        final SliderAdapterExample adapter = new SliderAdapterExample(this);
        sliderView.setSliderAdapter(adapter);

        sliderView.setIndicatorAnimation(IndicatorAnimations.SLIDE); //set indicator animation by using SliderLayout.IndicatorAnimations. :WORM or THIN_WORM or COLOR or DROP or FILL or NONE or SCALE or SCALE_DOWN or SLIDE and SWAP!!
        sliderView.setSliderTransformAnimation(SliderAnimations.CUBEINROTATIONTRANSFORMATION);
        sliderView.setAutoCycleDirection(SliderView.AUTO_CYCLE_DIRECTION_BACK_AND_FORTH);
        sliderView.setIndicatorSelectedColor(Color.WHITE);
        sliderView.setIndicatorUnselectedColor(Color.GRAY);
        sliderView.startAutoCycle();

        sliderView.setOnIndicatorClickListener(new DrawController.ClickListener() {
            @Override
            public void onIndicatorClicked(int position) {
                sliderView.setCurrentPagePosition(position);
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
                        downloadTask(update.getUrl());
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


    private void downloadTask(String url) {
        DownloadApk downloadApk = new DownloadApk(MainActivity.this);
        downloadApk.startDownloadingApk(url);
    }


    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

}
