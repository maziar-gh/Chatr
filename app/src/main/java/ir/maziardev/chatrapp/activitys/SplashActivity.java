package ir.maziardev.chatrapp.activitys;

import android.Manifest;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.StringRequest;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.classes.SavePref;

import ir.maziardev.chatrapp.classes.Utility;
import ir.maziardev.chatrapp.models.Categoryy;
import ir.maziardev.chatrapp.models.ChannelModel;
import ir.maziardev.chatrapp.models.Lists;
import ir.maziardev.chatrapp.models.Magazin;
import ir.maziardev.chatrapp.models.Slider;
import ir.maziardev.chatrapp.models.WeatherCity;
import ir.maziardev.chatrapp.network.AppController;
import ir.mirrajabi.persiancalendar.PersianCalendarView;
import ir.mirrajabi.persiancalendar.core.PersianCalendarHandler;
import ir.mirrajabi.persiancalendar.core.models.CalendarEvent;
import ir.mirrajabi.persiancalendar.core.models.PersianDate;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class SplashActivity extends AppCompatActivity {

    private static final String TAG = SplashActivity.class.getSimpleName();
    private byte downloaditem = 0;
    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);
    private SavePref save;
    private Utility utility;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);
        save = new SavePref(this);
        utility = new Utility();

        AppController.APP_TOKEN = save.load(AppController.SAVE_USER_token, "0");

        if (save.load(AppController.SAVE_STORAGE_PERMISION, "0").equals("0")) showStorageDialog();

        //initDb();
        if (isNetworkConnected()) {
            //initClearDb();
            scheduler.scheduleAtFixedRate(new CustomTask(), 1000, 1000, TimeUnit.MILLISECONDS);
        } else {
            Toast.makeText(this, "اتصال به اینترنت برقرار نیست!", Toast.LENGTH_LONG).show();
           /* getAllDataFromDB();
            startActivity(new Intent(SplashActivity.this, MainActivity.class));
            scheduler.shutdown();
            finish();*/
        }

    }

    private void showStorageDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(SplashActivity.this);
        builder.setMessage("\n" +
                "برای کار بدون اینترنت برنامه نیاز به مجوز استفاده از حافظه برای ذخیره سازی مورد نیاز می باشد." +
                "\n"
        ).setTitle("راهنما").setIcon(android.R.drawable.ic_menu_info_details);

        builder.setNegativeButton("متوجه شدم!", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int id) {
                save.save(AppController.SAVE_STORAGE_PERMISION, "1");
                isStoragePermissionGranted();
                dialog.dismiss();
            }
        });
        AlertDialog dialog = builder.create();
        dialog.show();
    }


    public boolean isStoragePermissionGranted() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE)
                    == PackageManager.PERMISSION_GRANTED) {

                return true;
            } else {

                //showStorageDialog();
                ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, 1);
                return false;
            }
        } else { //permission is automatically granted on sdk<23 upon installation
            Log.v(TAG, "Permission is granted");
            return true;
        }
    }

    public class CustomTask extends TimerTask {
        public CustomTask() {
            init();
        }

        public void run() {
            try {
                if (isNetworkConnected()) {

                    if (downloaditem >= 11) {
                        startActivity(new Intent(SplashActivity.this, MainActivity.class));
                        scheduler.shutdown();
                        finish();
                    }
                } else
                    Toast.makeText(SplashActivity.this, "اتصال به اینترنت برقرار نیست!", Toast.LENGTH_LONG).show();
            } catch (Exception ex) {
                init();
                System.out.println("error running thread " + ex.getMessage());
            }
        }
    }

    private void init() {
        downloaditem = 0;
        clearOldData();
        initCategory();
    }

    private void initAll() {
        initUser();
        initSlider();
        initMagazin();
        initServices();
        initLibrary();
        initMedia();
        initSalamat();
        initGames();
        initNews();
        initWeatherCity();
    }

    private void clearOldData() {
        AppController.arrayList_weather_city.clear();

        AppController.list_series.clear();
        AppController.list_movie.clear();
        AppController.list_radio.clear();
        AppController.list_music.clear();
        AppController.list_channel.clear();
        AppController.list_carton.clear();
        AppController.list_nohe.clear();
        AppController.list_quran.clear();
        AppController.list_services.clear();
        AppController.list_games.clear();

        AppController.arrayList_slider.clear();
        AppController.arrayList_channel.clear();
        AppController.arrayList_category.clear();
        AppController.arrayList_update.clear();
        AppController.arrayList_magazin.clear();

        AppController.list_sa_chef.clear();
        AppController.list_sa_employ.clear();
        AppController.list_sa_sport.clear();

        AppController.list_sa_food.clear();
        AppController.list_sa_plant.clear();
        AppController.list_sa_pray.clear();
        AppController.list_sa_psychology.clear();
        AppController.list_li_quran.clear();
        AppController.list_li_nahj.clear();
        AppController.list_li_mafatih.clear();
        AppController.list_li_resale.clear();
        AppController.list_li_audio.clear();

        AppController.list_ne_fars.clear();
        AppController.list_ne_isna.clear();
        AppController.list_ne_jamjam.clear();
        AppController.list_ne_tabnak.clear();
        AppController.list_ne_tasnim.clear();
        AppController.list_ne_varzeshthree.clear();
        AppController.list_ne_varzeshnavad.clear();
        AppController.list_ne_yjc.clear();
    }

    private void initCategory() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_CATEGORY_URL + AppController.APP_TOKEN,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray catArray = obj.getJSONArray("category");

                            for (int i = 0; i < catArray.length(); i++) {
                                JSONObject object = catArray.getJSONObject(i);

                                Categoryy category = new Categoryy();
                                category.setId(object.getString("id"));
                                category.setTitle(object.getString("title"));

                                /*dbCategory.insertData(
                                        category.getId(),
                                        category.getTitle()
                                );*/
                                AppController.arrayList_category.add(category);
                            }
                            //dbCategory.close();

                            initAll();

                            downloaditem++;
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
        AppController.getInstance().addToRequestQueue(req, "initCategory");
    }

    private void initLibrary() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_LIBRARY_URL + "1/" + AppController.API_BASE_LIMIT + "/" + AppController.APP_TOKEN,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray audioJsonList = obj.getJSONArray("audiobook");
                            JSONArray quranJsonList = obj.getJSONArray("quran");
                            JSONArray mafatihJsonList = obj.getJSONArray("mafatih");
                            JSONArray nahjJsonList = obj.getJSONArray("nahj");
                            JSONArray resaleJsonList = obj.getJSONArray("resale");

                            for (int i = 0; i < audioJsonList.length(); i++) {
                                JSONObject object = audioJsonList.getJSONObject(i);

                                Lists library = new Lists();
                                library.setTitle(object.getString("title"));
                                library.setSite(true);
                                library.setId_category(object.getString("id_category"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                /*dbAudiobookLib.insertData(
                                        library.getId_category(),
                                        library.getTitle(),
                                        library.getImg(),
                                        library.getUrl(),
                                        library.isSite()
                                );*/
                                AppController.list_li_audio.add(library);
                            }
                            //dbAudiobookLib.close();

                            for (int i = 0; i < quranJsonList.length(); i++) {
                                JSONObject object = quranJsonList.getJSONObject(i);

                                Lists library = new Lists();
                                library.setTitle(object.getString("title"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                /*dbQuranLib.insertData(
                                        library.getTitle(),
                                        library.getImg(),
                                        library.getUrl(),
                                        library.isSite()
                                );*/

                                AppController.list_li_quran.add(library);
                            }
                            //dbQuranLib.close();

                            for (int i = 0; i < mafatihJsonList.length(); i++) {
                                JSONObject object = mafatihJsonList.getJSONObject(i);

                                Lists library = new Lists();
                                library.setTitle(object.getString("title"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                /*dbMafatihLib.insertData(
                                        library.getTitle(),
                                        library.getImg(),
                                        library.getUrl(),
                                        library.isSite()
                                );*/
                                AppController.list_li_mafatih.add(library);
                            }
                            //dbMafatihLib.close();

                            for (int i = 0; i < nahjJsonList.length(); i++) {
                                JSONObject object = nahjJsonList.getJSONObject(i);

                                Lists library = new Lists();
                                library.setTitle(object.getString("title"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                /*dbNahjLib.insertData(
                                        library.getTitle(),
                                        library.getImg(),
                                        library.getUrl(),
                                        library.isSite()
                                );*/
                                AppController.list_li_nahj.add(library);
                            }
                            //dbNahjLib.close();

                            for (int i = 0; i < resaleJsonList.length(); i++) {
                                JSONObject object = resaleJsonList.getJSONObject(i);

                                Lists library = new Lists();
                                library.setTitle(object.getString("title"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                /*dbResaleLib.insertData(
                                        library.getTitle(),
                                        library.getImg(),
                                        library.getUrl(),
                                        library.isSite()
                                );*/
                                AppController.list_li_resale.add(library);
                            }
                            //dbResaleLib.close();

                            downloaditem++;
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
        AppController.getInstance().addToRequestQueue(req, "initLibrary");
    }

    private void initServices() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_SERVICES_URL + "1/" + AppController.API_BASE_LIMIT + "/" + AppController.APP_TOKEN,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray catArray = obj.getJSONArray("onlineservices");

                            for (int i = 0; i < catArray.length(); i++) {
                                JSONObject object = catArray.getJSONObject(i);

                                Lists service = new Lists();

                                service.setTitle(object.getString("title"));
                                service.setId_category(object.getString("id_category"));
                                service.setImg(object.getString("img"));
                                service.setUrl(object.getString("url"));

                                /*dbService.insertData(
                                        service.getId_category(),
                                        service.getTitle(),
                                        service.getImg(),
                                        service.getUrl(),
                                        service.isSite()
                                );*/
                                AppController.list_services.add(service);
                            }
                            //dbService.close();

                            downloaditem++;

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
        AppController.getInstance().addToRequestQueue(req, "initLibrary");
    }

    private void initGames() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_GAMES_URL + "1/" + AppController.API_BASE_LIMIT + "/" + AppController.APP_TOKEN,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray catArray = obj.getJSONArray("game");

                            for (int i = 0; i < catArray.length(); i++) {
                                JSONObject object = catArray.getJSONObject(i);

                                Lists game = new Lists();

                                //Log.e("GAMESSSSSSSSSSS", object.getString("title"));

                                game.setTitle(object.getString("title"));
                                game.setSite(true);
                                game.setFlag(true);
                                game.setImg(object.getString("img"));
                                game.setId_category(object.getString("id_category"));
                                game.setUrl(object.getString("url"));

                                /*dbGames.insertData(
                                        game.getId_category(),
                                        game.getTitle(),
                                        game.getImg(),
                                        game.getUrl(),
                                        game.isSite()
                                );*/
                                AppController.list_games.add(game);
                            }
                            //dbGames.close();

                            downloaditem++;
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
        AppController.getInstance().addToRequestQueue(req, "initGames");
    }

    private void initMagazin() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_MAGAZIN_URL + "1/" + AppController.API_BASE_LIMIT + "/" + AppController.APP_TOKEN,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray catArray = obj.getJSONArray("magazin");

                            for (int i = 0; i < catArray.length(); i++) {
                                JSONObject object = catArray.getJSONObject(i);

                                Magazin magazin = new Magazin();
                                magazin.setId(object.getString("id"));
                                magazin.setTitle(object.getString("title"));
                                magazin.setUrl(object.getString("url"));

                                /*dbMagazin.insertData(
                                        magazin.getTitle(),
                                        magazin.getUrl()
                                );*/
                                AppController.arrayList_magazin.add(magazin);
                            }
                            //dbMagazin.close();

                            downloaditem++;
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
        AppController.getInstance().addToRequestQueue(req, "initMagazin");
    }

    private void initSlider() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_SLIDER_URL + AppController.APP_TOKEN,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray SliderArray = obj.getJSONArray("slider");

                            //----------------------------------news paper
                            /*String all = "";
                            String names = "";
                            String d = utility.getCurrentShamsidate();
                            for (int i = 0; i < AppController.news.length; i++) {
                                all += "https://www.pishkhan.com/Archive/"+
                                        d.substring(0, d.length()-2)+
                                        utility.getCurrentShamsidate().replace("/","")+
                                        "/" + AppController.news[i] + ".jpg!";
                                names +=AppController.name[i]+"!";
                            }
                            all = all.substring(0, all.length() - 1);
                            names = names.substring(0, names.length() - 1);

                            Log.e("TAG----", all);

                            Slider slider = new Slider();
                            slider.setTitle("");
                            slider.setDetail(names);
                            slider.setDescription(all);
                            slider.setImg("http://chatr.anzalepoxy.ir/img/newsss.jpg");
                            slider.setAction("5");

                            AppController.arrayList_slider.add(slider);*/

                            //----------------------------------news paper

                            for (int i = 0; i < SliderArray.length(); i++) {
                                JSONObject sliderObject = SliderArray.getJSONObject(i);

                                //Log.e("SLIDERRRRRRRRRRRR", sliderObject.getString("img"));

                                Slider slider = new Slider();
                                slider.setTitle(sliderObject.getString("title"));
                                slider.setDescription(sliderObject.getString("description"));
                                slider.setImg(sliderObject.getString("img"));
                                slider.setAction(sliderObject.getString("action"));

                                AppController.arrayList_slider.add(slider);
                            }



                            downloaditem++;
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
        AppController.getInstance().addToRequestQueue(req, "initSlider");
    }


    private void initWeatherCity() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.WEATHER_CITY_URL,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray weatherArray = obj.getJSONArray("Items");

                            for (int i = 0; i < weatherArray.length(); i++) {
                                JSONObject object = weatherArray.getJSONObject(i);

                                WeatherCity weatherCity = new WeatherCity();
                                weatherCity.setProvince(object.getString("Province"));
                                weatherCity.setStationEn(object.getString("StationEn"));
                                weatherCity.setStationFa(object.getString("StationFa"));
                                weatherCity.setStationNumber(object.getString("StationNumber"));
                                weatherCity.setiCAO(object.getString("ICAO"));
                                weatherCity.setLat(object.getString("lat"));
                                weatherCity.setLng(object.getString("lng"));

//                                dbHelperWeather.insertData(
//                                        weatherCity.getProvince(),
//                                        weatherCity.getStationEn(),
//                                        weatherCity.getStationFa(),
//                                        weatherCity.getStationNumber(),
//                                        weatherCity.getiCAO(),
//                                        weatherCity.getLat(),
//                                        weatherCity.getLng()
//                                );
                                AppController.arrayList_weather_city.add(weatherCity);
                            }

                            downloaditem++;
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
        AppController.getInstance().addToRequestQueue(req, "initWeatherCity");
    }

    private void initMedia() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_CHANNEL_URL + "1/" + AppController.API_BASE_LIMIT + "/" + AppController.APP_TOKEN,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray channelArray = obj.getJSONArray("channel");

                            for (int i = 0; i < channelArray.length(); i++) {
                                JSONObject Object = channelArray.getJSONObject(i);

                                //Log.e("TAG---", Object.getString("cname"));

                                ChannelModel channel = new ChannelModel();
                                channel.setId(Object.getString("id"));
                                channel.setId_category(Object.getString("id_category"));
                                channel.setCid(Object.getString("cid"));
                                channel.setCname(Object.getString("cname").replace("h1", "div"));
                                channel.setImg(Object.getString("img"));
                                channel.setDescription(Object.getString("description"));

                                AppController.list_channel.add(channel);
                            }
                            downloaditem++;

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
        AppController.getInstance().addToRequestQueue(req, "initMedia");


        req = new StringRequest(Request.Method.GET, AppController.API_TV_URL + "1/" + AppController.API_BASE_LIMIT + "/" + AppController.APP_TOKEN,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray telArray = obj.getJSONArray("tel");

                            for (int i = 0; i < telArray.length(); i++) {
                                JSONObject Object = telArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                media.setSite(true);
                                media.setFlag(true);
                                media.setTintcolor(true);

                                /*dbHelperTvMedia.insertData(
                                        media.getId_category(),
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        media.isSite()
                                );*/
                                AppController.list_tv.add(media);
                            }
                            downloaditem++;

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
        AppController.getInstance().addToRequestQueue(req, "initTv");


        req = new StringRequest(Request.Method.GET, AppController.API_RADIO_URL + "1/" + AppController.API_BASE_LIMIT + "/" + AppController.APP_TOKEN,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {

                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray radioArray = obj.getJSONArray("radio");

                            for (int i = 0; i < radioArray.length(); i++) {
                                JSONObject Object = radioArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                media.setSite(true);
                                media.setFlag(true);
                                media.setRadio(true);

                                /*dbHelperRadioMedia.insertData(
                                        media.getId_category(),
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        media.isSite()
                                );*/
                                AppController.list_radio.add(media);
                            }
                            downloaditem++;

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
        AppController.getInstance().addToRequestQueue(req, "initRadio");

    }

    private void initSalamat() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_SALAMAT_URL + "1/" + AppController.API_BASE_LIMIT + "/" + AppController.APP_TOKEN,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            //JSONArray chefArray = obj.getJSONArray("chef");
                            //JSONArray employArray = obj.getJSONArray("employ");
                            //JSONArray sportArray = obj.getJSONArray("sport");
                            //JSONArray foodArray = obj.getJSONArray("food");
                            //JSONArray plantArray = obj.getJSONArray("plant");
                            JSONArray prayArray = obj.getJSONArray("pray");
                            //JSONArray psychologyArray = obj.getJSONArray("psychology");

                            /*for (int i = 0; i < chefArray.length(); i++) {
                                JSONObject Object = chefArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                *//*dbHelperChef.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );*//*
                                AppController.list_sa_chef.add(media);
                            }*/

                            /*for (int i = 0; i < employArray.length(); i++) {
                                JSONObject Object = employArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                *//*dbHelperEmploy.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );*//*
                                AppController.list_sa_employ.add(media);
                            }*/

                            /*for (int i = 0; i < sportArray.length(); i++) {
                                JSONObject Object = sportArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                *//*dbHelperSport.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );*//*
                                AppController.list_sa_sport.add(media);
                            }*/

                            /*for (int i = 0; i < foodArray.length(); i++) {
                                JSONObject Object = foodArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                *//*dbHelperFood.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );*//*
                                AppController.list_sa_food.add(media);
                            }*/

                            /*for (int i = 0; i < plantArray.length(); i++) {
                                JSONObject Object = plantArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                *//*dbHelperPlant.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );*//*
                                AppController.list_sa_plant.add(media);
                            }*/

                            for (int i = 0; i < prayArray.length(); i++) {
                                JSONObject Object = prayArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                /*dbHelperPray.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );*/
                                AppController.list_sa_pray.add(media);
                            }

                            /*for (int i = 0; i < psychologyArray.length(); i++) {
                                JSONObject Object = psychologyArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                *//*dbHelperPsychology.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );*//*
                                AppController.list_sa_psychology.add(media);
                            }*/

                            downloaditem++;
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
        AppController.getInstance().addToRequestQueue(req, "initSalamat");
    }

    private void initNews() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_NEWS_URL + "1/" + AppController.API_BASE_LIMIT + "/" + AppController.APP_TOKEN,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);

                            JSONArray isnaArray = obj.getJSONArray("isna");
                            JSONArray jamjamArray = obj.getJSONArray("jamjam");
                            JSONArray tasnimArray = obj.getJSONArray("tasnim");

                            JSONArray tabnakArray = obj.getJSONArray("tabnak");
                            JSONArray farsArray = obj.getJSONArray("fars");
                            JSONArray varzeshnavadArray = obj.getJSONArray("varzeshnavad");
                            JSONArray varzeshthreeArray = obj.getJSONArray("varzeshthree");
                            JSONArray yjcArray = obj.getJSONArray("yjc");


                            for (int i = 0; i < farsArray.length(); i++) {
                                JSONObject Object = farsArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                AppController.list_ne_fars.add(media);
                            }

                            for (int i = 0; i < isnaArray.length(); i++) {
                                JSONObject Object = isnaArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                /*dbHelperIsna.insertData(
                                        "1",
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        true
                                );*/
                                AppController.list_ne_isna.add(media);
                            }

                            for (int i = 0; i < jamjamArray.length(); i++) {
                                JSONObject Object = jamjamArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                /*dbHelperJamjam.insertData(
                                        "1",
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        true
                                );*/
                                AppController.list_ne_jamjam.add(media);
                            }

                            for (int i = 0; i < tasnimArray.length(); i++) {
                                JSONObject Object = tasnimArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                /*dbHelperTasnim.insertData(
                                        "1",
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        true
                                );*/
                                AppController.list_ne_tasnim.add(media);
                            }

                            for (int i = 0; i < tabnakArray.length(); i++) {
                                JSONObject Object = tabnakArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                AppController.list_ne_tabnak.add(media);
                            }

                            for (int i = 0; i < varzeshnavadArray.length(); i++) {
                                JSONObject Object = varzeshnavadArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                AppController.list_ne_varzeshnavad.add(media);
                            }

                            for (int i = 0; i < varzeshthreeArray.length(); i++) {
                                JSONObject Object = varzeshthreeArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                AppController.list_ne_varzeshthree.add(media);
                            }

                            for (int i = 0; i < yjcArray.length(); i++) {
                                JSONObject Object = yjcArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                AppController.list_ne_yjc.add(media);
                            }

                            downloaditem++;
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
        AppController.getInstance().addToRequestQueue(req, "initNews");
    }

    private void initUser() {
        String uid = save.load(AppController.SAVE_USER_id, "0");
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_USER_URL + "/" + uid + "/" + AppController.APP_TOKEN,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray SliderArray = obj.getJSONArray("users");
                            JSONObject object = SliderArray.getJSONObject(0);

                            save.save(AppController.SAVE_USER_name, object.getString("fullname"));
                            save.save(AppController.SAVE_USER_dgree, object.getString("ranks"));
                            save.save(AppController.SAVE_USER_pcode, object.getString("pcode"));

                            downloaditem++;
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
        AppController.getInstance().addToRequestQueue(req, "initUser");
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    private boolean isNetworkConnected() {
        InetAddress inetAddress = null;
        try {
            Future<InetAddress> future = Executors.newSingleThreadExecutor().submit(new Callable<InetAddress>() {
                @Override
                public InetAddress call() {
                    try {
                        return InetAddress.getByName("google.com");
                    } catch (UnknownHostException e) {
                        return null;
                    }
                }
            });
            inetAddress = future.get(1000, TimeUnit.MILLISECONDS);
            future.cancel(true);
        } catch (InterruptedException e) {
        } catch (ExecutionException e) {
        } catch (TimeoutException e) {
        }
        return inetAddress != null && !inetAddress.equals("");
    }
}
