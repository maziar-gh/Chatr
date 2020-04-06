package ir.maziardev.chatrapp.activitys;

import android.Manifest;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

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
import ir.maziardev.chatrapp.database.DBHelperChannel;
import ir.maziardev.chatrapp.database.DBHelperGames;
import ir.maziardev.chatrapp.database.DBHelperMagazin;
import ir.maziardev.chatrapp.database.DBHelperService;
import ir.maziardev.chatrapp.database.DBHelperSlider;
import ir.maziardev.chatrapp.database.DBHelperWeather;
import ir.maziardev.chatrapp.database.lib.DBHelperAudioBookLib;
import ir.maziardev.chatrapp.database.DBHelperCategory;
import ir.maziardev.chatrapp.database.lib.DBHelperMafatihLib;
import ir.maziardev.chatrapp.database.lib.DBHelperNahjLib;
import ir.maziardev.chatrapp.database.lib.DBHelperQuranLib;
import ir.maziardev.chatrapp.database.lib.DBHelperResaleLib;
import ir.maziardev.chatrapp.database.media.DBHelperCartonMedia;
import ir.maziardev.chatrapp.database.media.DBHelperMovieMedia;
import ir.maziardev.chatrapp.database.media.DBHelperMusicMedia;
import ir.maziardev.chatrapp.database.media.DBHelperNoheMedia;
import ir.maziardev.chatrapp.database.media.DBHelperQuranMedia;
import ir.maziardev.chatrapp.database.media.DBHelperRadioMedia;
import ir.maziardev.chatrapp.database.media.DBHelperSeriesMedia;
import ir.maziardev.chatrapp.database.media.DBHelperTvMedia;
import ir.maziardev.chatrapp.database.news.DBHelperIsna;
import ir.maziardev.chatrapp.database.news.DBHelperJamjam;
import ir.maziardev.chatrapp.database.news.DBHelperTasnim;
import ir.maziardev.chatrapp.database.salamat.DBHelperChef;
import ir.maziardev.chatrapp.database.salamat.DBHelperEmploy;
import ir.maziardev.chatrapp.database.salamat.DBHelperFood;
import ir.maziardev.chatrapp.database.salamat.DBHelperPlant;
import ir.maziardev.chatrapp.database.salamat.DBHelperPray;
import ir.maziardev.chatrapp.database.salamat.DBHelperPsychology;
import ir.maziardev.chatrapp.database.salamat.DBHelperSport;
import ir.maziardev.chatrapp.enums.ChannelType;
import ir.maziardev.chatrapp.enums.PageType;
import ir.maziardev.chatrapp.models.Categoryy;
import ir.maziardev.chatrapp.models.Channell;
import ir.maziardev.chatrapp.models.GridList;
import ir.maziardev.chatrapp.models.Lists;
import ir.maziardev.chatrapp.models.Magazin;
import ir.maziardev.chatrapp.models.Slider;
import ir.maziardev.chatrapp.models.WeatherCity;
import ir.maziardev.chatrapp.network.AppController;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class SplashActivity extends AppCompatActivity {

    private static final String TAG = SplashActivity.class.getSimpleName();
    private byte downloaditem = 0;
    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);

    private DBHelperCategory dbCategory;
    private DBHelperAudioBookLib dbAudiobookLib;
    private DBHelperQuranLib dbQuranLib;
    private DBHelperMafatihLib dbMafatihLib;
    private DBHelperNahjLib dbNahjLib;
    private DBHelperResaleLib dbResaleLib;
    private DBHelperService dbService;
    private DBHelperGames dbGames;
    private DBHelperMagazin dbMagazin;
    private DBHelperSlider dbSlider;
    private DBHelperChannel dbHelperChannel;
    private DBHelperWeather dbHelperWeather;
    private DBHelperTvMedia dbHelperTvMedia;
    private DBHelperRadioMedia dbHelperRadioMedia;
    private DBHelperMusicMedia dbHelperMusicMedia;
    private DBHelperMovieMedia dbHelperMovieMedia;
    private DBHelperSeriesMedia dbHelperSeriesMedia;
    private DBHelperCartonMedia dbHelperCartonMedia;
    private DBHelperQuranMedia dbHelperQuranMedia;
    private DBHelperNoheMedia dbHelperNoheMedia;
    private DBHelperChef dbHelperChef;
    private DBHelperEmploy dbHelperEmploy;
    private DBHelperSport dbHelperSport;
    private DBHelperFood dbHelperFood;
    private DBHelperPlant dbHelperPlant;
    private DBHelperPray dbHelperPray;
    private DBHelperPsychology dbHelperPsychology;
    private DBHelperIsna dbHelperIsna;
    private DBHelperJamjam dbHelperJamjam;
    private DBHelperTasnim dbHelperTasnim;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);

        isStoragePermissionGranted();
        initDb();
        if (isNetworkConnected()) {
            initClearDb();
            scheduler.scheduleAtFixedRate(new CustomTask(), 1000, 1000, TimeUnit.MILLISECONDS);
        }else {
            Toast.makeText(this, "اتصال به اینترنت برقرار نیست!", Toast.LENGTH_LONG).show();
            getAllDataFromDB();
            startActivity(new Intent(SplashActivity.this, MainActivity.class));
            scheduler.shutdown();
            finish();
        }

    }

    private void initDb(){
        dbCategory = new DBHelperCategory(this);
        dbAudiobookLib = new DBHelperAudioBookLib(this);
        dbQuranLib = new DBHelperQuranLib(this);
        dbMafatihLib = new DBHelperMafatihLib(this);
        dbNahjLib = new DBHelperNahjLib(this);
        dbResaleLib = new DBHelperResaleLib(this);
        dbService = new DBHelperService(this);
        dbGames = new DBHelperGames(this);
        dbMagazin = new DBHelperMagazin(this);
        dbSlider = new DBHelperSlider(this);
        dbHelperChannel = new DBHelperChannel(this);
        dbHelperWeather = new DBHelperWeather(this);
        dbHelperTvMedia = new DBHelperTvMedia(this);
        dbHelperRadioMedia = new DBHelperRadioMedia(this);
        dbHelperMusicMedia = new DBHelperMusicMedia(this);
        dbHelperMovieMedia = new DBHelperMovieMedia(this);
        dbHelperSeriesMedia = new DBHelperSeriesMedia(this);
        dbHelperCartonMedia = new DBHelperCartonMedia(this);
        dbHelperQuranMedia = new DBHelperQuranMedia(this);
        dbHelperNoheMedia = new DBHelperNoheMedia(this);
        dbHelperChef = new DBHelperChef(this);
        dbHelperEmploy = new DBHelperEmploy(this);
        dbHelperSport = new DBHelperSport(this);
        dbHelperFood = new DBHelperFood(this);
        dbHelperPlant = new DBHelperPlant(this);
        dbHelperPray = new DBHelperPray(this);
        dbHelperPsychology = new DBHelperPsychology(this);
        dbHelperIsna = new DBHelperIsna(this);
        dbHelperJamjam = new DBHelperJamjam(this);
        dbHelperTasnim = new DBHelperTasnim(this);
    }
    private void initClearDb(){
        try { dbCategory.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbAudiobookLib.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbQuranLib.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbMafatihLib.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbNahjLib.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbResaleLib.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbService.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbGames.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbMagazin.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbSlider.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperChannel.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperWeather.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperTvMedia.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperRadioMedia.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperMusicMedia.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperMovieMedia.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperSeriesMedia.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperCartonMedia.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperQuranMedia.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperNoheMedia.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperChef.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperEmploy.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperSport.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperFood.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperPlant.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperPray.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperPsychology.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperIsna.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperJamjam.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
        try { dbHelperTasnim.deleteAllRecord(); }catch (Exception e){e.printStackTrace();}
    }
    private void getAllDataFromDB() {
        AppController.arrayList_category = dbCategory.getAllRows();
        AppController.list_li_audio = dbAudiobookLib.getAllRows();
        AppController.list_li_quran = dbQuranLib.getAllRows();
        AppController.list_li_mafatih = dbMafatihLib.getAllRows();
        AppController.list_li_nahj = dbNahjLib.getAllRows();
        AppController.list_li_resale = dbResaleLib.getAllRows();
        AppController.list_services = dbService.getAllRows();
        AppController.list_games = dbGames.getAllRows();
        AppController.arrayList_magazin = dbMagazin.getAllRows();
        AppController.arrayList_slider = dbSlider.getAllRows();
        AppController.arrayList_channel = dbHelperChannel.getAllRows();
        AppController.arrayList_weather_city = dbHelperWeather.getAllRows();
        AppController.list_tel = dbHelperTvMedia.getAllRows();
        AppController.list_radio = dbHelperRadioMedia.getAllRows();
        AppController.list_music = dbHelperMusicMedia.getAllRows();
        AppController.list_movie = dbHelperMovieMedia.getAllRows();
        AppController.list_series = dbHelperSeriesMedia.getAllRows();
        AppController.list_carton = dbHelperCartonMedia.getAllRows();
        AppController.list_quran = dbHelperQuranMedia.getAllRows();
        AppController.list_nohe = dbHelperNoheMedia.getAllRows();
        AppController.list_sa_chef = dbHelperChef.getAllRows();
        AppController.list_sa_employ = dbHelperEmploy.getAllRows();
        AppController.list_sa_sport = dbHelperSport.getAllRows();
        AppController.list_sa_food = dbHelperFood.getAllRows();
        AppController.list_sa_plant = dbHelperPlant.getAllRows();
        AppController.list_sa_pray = dbHelperPray.getAllRows();
        AppController.list_sa_psychology = dbHelperPsychology.getAllRows();
        AppController.list_ne_isna = dbHelperIsna.getAllRows();
        AppController.list_ne_jamjam = dbHelperJamjam.getAllRows();
        AppController.list_ne_tasnim = dbHelperTasnim.getAllRows();
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
    public class CustomTask extends TimerTask {
        public CustomTask() {
            init();
        }

        public void run() {
            try {
                if (isNetworkConnected()) {
                    if (downloaditem == 17) {
                        startActivity(new Intent(SplashActivity.this, MainActivity.class));
                        scheduler.shutdown();
                        finish();
                    }
                }else Toast.makeText(SplashActivity.this, "اتصال به اینترنت برقرار نیست!", Toast.LENGTH_LONG).show();
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
    private void initAll(){
        initMagazin();
        initServices();
        initLibrary();
        initMedia();
        initSlider();
        initChannel();
        initGames();
        initSalamat();
        initNews();
        initWeatherCity();
    }
    private void clearOldData() {
        AppController.arrayList_weather_city.clear();

        AppController.list_series.clear();
        AppController.list_movie.clear();
        AppController.list_radio.clear();
        AppController.list_music.clear();
        AppController.list_tel.clear();
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
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_CATEGORY_URL,
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

                                dbCategory.insertData(
                                        category.getId(),
                                        category.getTitle()
                                );
                                AppController.arrayList_category.add(category);
                            }
                            dbCategory.close();

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
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_LIBRARY_URL,
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

                                dbAudiobookLib.insertData(
                                        library.getId_category(),
                                        library.getTitle(),
                                        library.getImg(),
                                        library.getUrl(),
                                        library.isSite()
                                );
                                AppController.list_li_audio.add(library);
                            }
                            dbAudiobookLib.close();

                            for (int i = 0; i < quranJsonList.length(); i++) {
                                JSONObject object = quranJsonList.getJSONObject(i);

                                Lists library = new Lists();
                                library.setTitle(object.getString("title"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                dbQuranLib.insertData(
                                        library.getTitle(),
                                        library.getImg(),
                                        library.getUrl(),
                                        library.isSite()
                                );

                                AppController.list_li_quran.add(library);
                            }
                            dbQuranLib.close();

                            for (int i = 0; i < mafatihJsonList.length(); i++) {
                                JSONObject object = mafatihJsonList.getJSONObject(i);

                                Lists library = new Lists();
                                library.setTitle(object.getString("title"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                dbMafatihLib.insertData(
                                        library.getTitle(),
                                        library.getImg(),
                                        library.getUrl(),
                                        library.isSite()
                                );
                                AppController.list_li_mafatih.add(library);
                            }
                            dbMafatihLib.close();

                            for (int i = 0; i < nahjJsonList.length(); i++) {
                                JSONObject object = nahjJsonList.getJSONObject(i);

                                Lists library = new Lists();
                                library.setTitle(object.getString("title"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                dbNahjLib.insertData(
                                        library.getTitle(),
                                        library.getImg(),
                                        library.getUrl(),
                                        library.isSite()
                                );
                                AppController.list_li_nahj.add(library);
                            }
                            dbNahjLib.close();

                            for (int i = 0; i < resaleJsonList.length(); i++) {
                                JSONObject object = resaleJsonList.getJSONObject(i);

                                Lists library = new Lists();
                                library.setTitle(object.getString("title"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                dbResaleLib.insertData(
                                        library.getTitle(),
                                        library.getImg(),
                                        library.getUrl(),
                                        library.isSite()
                                );
                                AppController.list_li_resale.add(library);
                            }
                            dbResaleLib.close();

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
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_SERVICES_URL,
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

                                dbService.insertData(
                                        service.getId_category(),
                                        service.getTitle(),
                                        service.getImg(),
                                        service.getUrl(),
                                        service.isSite()
                                );
                                AppController.list_services.add(service);
                            }
                            dbService.close();

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
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_GAMES_URL,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray catArray = obj.getJSONArray("game");

                            for (int i = 0; i < catArray.length(); i++) {
                                JSONObject object = catArray.getJSONObject(i);

                                Lists game = new Lists();

                                game.setTitle(object.getString("title"));
                                game.setSite(true);
                                game.setFlag(true);
                                game.setImg(object.getString("img"));
                                game.setId_category(object.getString("id_category"));
                                game.setUrl(object.getString("url"));

                                dbGames.insertData(
                                        game.getId_category(),
                                        game.getTitle(),
                                        game.getImg(),
                                        game.getUrl(),
                                        game.isSite()
                                );
                                AppController.list_games.add(game);
                            }
                            dbGames.close();

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
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_MAGAZIN_URL,
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

                                dbMagazin.insertData(
                                        magazin.getTitle(),
                                        magazin.getUrl()
                                );
                                AppController.arrayList_magazin.add(magazin);
                            }
                            dbMagazin.close();

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
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_SLIDER_URL,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray SliderArray = obj.getJSONArray("slider");

                            for (int i = 0; i < SliderArray.length(); i++) {
                                JSONObject sliderObject = SliderArray.getJSONObject(i);

                                Slider slider = new Slider();
                                slider.setTitle(sliderObject.getString("title"));
                                slider.setDescription(sliderObject.getString("description"));
                                slider.setImg(sliderObject.getString("img"));
                                slider.setAction(sliderObject.getString("action"));

                                dbSlider.insertData(
                                        slider.getTitle(),
                                        slider.getDescription(),
                                        slider.getImg(),
                                        slider.getAction()
                                );
                                AppController.arrayList_slider.add(slider);
                            }
                            dbSlider.close();

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
    private void initChannel() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_CHANNEL_URL,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray SliderArray = obj.getJSONArray("channel");

                            for (int i = 0; i < SliderArray.length(); i++) {
                                JSONObject channelObject = SliderArray.getJSONObject(i);

                                Channell channel = new Channell();
                                channel.setId(channelObject.getString("id"));
                                channel.setTitle(channelObject.getString("text"));
                                channel.setImg(channelObject.getString("img"));
                                channel.setMusic(channelObject.getString("music"));
                                channel.setMovie(channelObject.getString("movie"));
                                channel.setSurvey(channelObject.getString("survey"));
                                channel.setLocation(channelObject.getString("location"));
                                channel.setPhone(channelObject.getString("phone"));

                                switch (channelObject.getString("type")) {
                                    case "1":
                                        channel.setType(ChannelType.TEXT);
                                        break;
                                    case "2":
                                        channel.setType(ChannelType.PICTURE);
                                        break;
                                    case "3":
                                        channel.setType(ChannelType.MUSIC);
                                        break;
                                    case "4":
                                        channel.setType(ChannelType.MOVIE);
                                        break;
                                    case "5":
                                        channel.setType(ChannelType.SURVEY);
                                        break;
                                    case "6":
                                        channel.setType(ChannelType.LOCATION);
                                        break;
                                    case "7":
                                        channel.setType(ChannelType.PHONE);
                                        break;
                                }

                                dbHelperChannel.insertData(
                                        channel.getTitle(),
                                        channel.getImg(),
                                        channel.getMusic(),
                                        channel.getMovie(),
                                        channel.getSurvey(),
                                        channel.getLocation(),
                                        channel.getPhone(),
                                        channelObject.getString("type")
                                );
                                AppController.arrayList_channel.add(channel);
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
        AppController.getInstance().addToRequestQueue(req, "initChannel");
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

                                dbHelperWeather.insertData(
                                        weatherCity.getProvince(),
                                        weatherCity.getStationEn(),
                                        weatherCity.getStationFa(),
                                        weatherCity.getStationNumber(),
                                        weatherCity.getiCAO(),
                                        weatherCity.getLat(),
                                        weatherCity.getLng()
                                );
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
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_MEDIA_URL + "/tv",
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

                                dbHelperTvMedia.insertData(
                                        media.getId_category(),
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        media.isSite()
                                );
                                AppController.list_tel.add(media);
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


        req = new StringRequest(Request.Method.GET, AppController.API_MEDIA_URL+"/radio",
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

                                dbHelperRadioMedia.insertData(
                                        media.getId_category(),
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        media.isSite()
                                );
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


        req = new StringRequest(Request.Method.GET, AppController.API_MEDIA_URL+"/music",
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray musicArray = obj.getJSONArray("music");

                            for (int i = 0; i < musicArray.length(); i++) {
                                JSONObject Object = musicArray.getJSONObject(i);

                                GridList media = new GridList();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                media.setSite(true);
                                media.setMusic(true);
                                media.setActor(Object.getString("actor"));

                                Categoryy category = AppController.arrayList_category.get(Integer.parseInt(Object.getString("id_category")));
                                media.setCategory(category.getTitle());

                                dbHelperMusicMedia.insertData(
                                        media.getCategory(),
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        media.getActor(),
                                        media.isSite()
                                );
                                AppController.list_music.add(media);
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
        AppController.getInstance().addToRequestQueue(req, "initMusic");


        req = new StringRequest(Request.Method.GET, AppController.API_MEDIA_URL+"/movie",
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);

                            JSONArray movieArray = obj.getJSONArray("movie");

                            for (int i = 0; i < movieArray.length(); i++) {
                                JSONObject Object = movieArray.getJSONObject(i);

                                GridList media = new GridList();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                media.setMovie(true);
                                Categoryy category = AppController.arrayList_category.get(Integer.parseInt(Object.getString("id_category")));
                                media.setCategory(category.getTitle());

                                dbHelperMovieMedia.insertData(
                                        media.getCategory(),
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        "",
                                        false
                                );
                                AppController.list_movie.add(media);
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
        AppController.getInstance().addToRequestQueue(req, "initMovie");


        req = new StringRequest(Request.Method.GET, AppController.API_MEDIA_URL+"/series",
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray seriesArray = obj.getJSONArray("series");

                            for (int i = 0; i < seriesArray.length(); i++) {
                                JSONObject Object = seriesArray.getJSONObject(i);

                                GridList media = new GridList();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                media.setPageType(PageType.SUB);
                                media.setSeries(true);
                                Categoryy category = AppController.arrayList_category.get(Integer.parseInt(Object.getString("id_category")) - 1);
                                media.setCategory(category.getTitle());
                                media.setSeriesname(Object.getString("seriesname"));

                                dbHelperSeriesMedia.insertData(
                                        media.getCategory(),
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        media.getSeriesname(),
                                        false
                                );
                                AppController.list_series.add(media);
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
        AppController.getInstance().addToRequestQueue(req, "initSeries");


        req = new StringRequest(Request.Method.GET, AppController.API_MEDIA_URL+"/carton",
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray cartonArray = obj.getJSONArray("carton");

                            for (int i = 0; i < cartonArray.length(); i++) {
                                JSONObject Object = cartonArray.getJSONObject(i);

                                GridList media = new GridList();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                media.setPageType(PageType.SUB);
                                media.setSeries(true);
                                Categoryy category = AppController.arrayList_category.get(Integer.parseInt(Object.getString("id_category")) - 1);
                                media.setCategory(category.getTitle());
                                media.setSeriesname(Object.getString("seriesname"));

                                dbHelperCartonMedia.insertData(
                                        media.getCategory(),
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        media.getSeriesname(),
                                        false
                                );
                                AppController.list_carton.add(media);
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
        AppController.getInstance().addToRequestQueue(req, "initCarton");


        req = new StringRequest(Request.Method.GET, AppController.API_MEDIA_URL+"/quran",
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray quranArray = obj.getJSONArray("quran");

                            for (int i = 0; i < quranArray.length(); i++) {
                                JSONObject Object = quranArray.getJSONObject(i);

                                GridList media = new GridList();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                Categoryy category = AppController.arrayList_category.get(Integer.parseInt(Object.getString("id_category")) - 1);
                                media.setCategory(category.getTitle());
                                media.setActor(Object.getString("actor"));
                                media.setSite(true);
                                media.setMusic(true);

                                dbHelperQuranMedia.insertData(
                                        media.getCategory(),
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        media.getActor(),
                                        false
                                );
                                AppController.list_quran.add(media);
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
        AppController.getInstance().addToRequestQueue(req, "initQuran");


        req = new StringRequest(Request.Method.GET, AppController.API_MEDIA_URL+ "/nohe",
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray noheArray = obj.getJSONArray("nohe");

                            for (int i = 0; i < noheArray.length(); i++) {
                                JSONObject Object = noheArray.getJSONObject(i);

                                GridList media = new GridList();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                Categoryy category = AppController.arrayList_category.get(Integer.parseInt(Object.getString("id_category")) - 1);
                                media.setCategory(category.getTitle());
                                media.setActor(Object.getString("actor"));
                                media.setSite(true);
                                media.setMusic(true);

                                dbHelperNoheMedia.insertData(
                                        media.getCategory(),
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        media.getActor(),
                                        false
                                );
                                AppController.list_nohe.add(media);
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
        AppController.getInstance().addToRequestQueue(req, "initNohe");
    }
    private void initSalamat() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_SALAMAT_URL,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray chefArray = obj.getJSONArray("chef");
                            JSONArray employArray = obj.getJSONArray("employ");
                            JSONArray sportArray = obj.getJSONArray("sport");
                            JSONArray foodArray = obj.getJSONArray("food");
                            JSONArray plantArray = obj.getJSONArray("plant");
                            JSONArray prayArray = obj.getJSONArray("pray");
                            JSONArray psychologyArray = obj.getJSONArray("psychology");

                            for (int i = 0; i < chefArray.length(); i++) {
                                JSONObject Object = chefArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                dbHelperChef.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );
                                AppController.list_sa_chef.add(media);
                            }

                            for (int i = 0; i < employArray.length(); i++) {
                                JSONObject Object = employArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                dbHelperEmploy.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );
                                AppController.list_sa_employ.add(media);
                            }

                            for (int i = 0; i < sportArray.length(); i++) {
                                JSONObject Object = sportArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                dbHelperSport.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );
                                AppController.list_sa_sport.add(media);
                            }

                            for (int i = 0; i < foodArray.length(); i++) {
                                JSONObject Object = foodArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                dbHelperFood.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );
                                AppController.list_sa_food.add(media);
                            }

                            for (int i = 0; i < plantArray.length(); i++) {
                                JSONObject Object = plantArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                dbHelperPlant.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );
                                AppController.list_sa_plant.add(media);
                            }

                            for (int i = 0; i < prayArray.length(); i++) {
                                JSONObject Object = prayArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                dbHelperPray.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );
                                AppController.list_sa_pray.add(media);
                            }

                            for (int i = 0; i < psychologyArray.length(); i++) {
                                JSONObject Object = psychologyArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                dbHelperPsychology.insertData(
                                        media.getTitle(),
                                        "",
                                        media.getImg(),
                                        media.getAction()
                                );
                                AppController.list_sa_psychology.add(media);
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
        AppController.getInstance().addToRequestQueue(req, "initSalamat");
    }
    private void initNews() {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.API_NEWS_URL,
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

                                dbHelperIsna.insertData(
                                        "1",
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        true
                                );
                                AppController.list_ne_isna.add(media);
                            }

                            for (int i = 0; i < jamjamArray.length(); i++) {
                                JSONObject Object = jamjamArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                dbHelperJamjam.insertData(
                                        "1",
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        true
                                );
                                AppController.list_ne_jamjam.add(media);
                            }

                            for (int i = 0; i < tasnimArray.length(); i++) {
                                JSONObject Object = tasnimArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                dbHelperTasnim.insertData(
                                        "1",
                                        media.getTitle(),
                                        media.getImg(),
                                        media.getUrl(),
                                        true
                                );
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
