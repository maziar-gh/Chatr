package ir.maziardev.chatrapp.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

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


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);

        if (!isNetworkConnected()) {
            Toast.makeText(this, "اتصال به اینترنت برقرار نیست!", Toast.LENGTH_LONG).show();


        }

        scheduler.scheduleAtFixedRate(new CustomTask(), 1000, 1000, TimeUnit.MILLISECONDS);
    }

    public class CustomTask extends TimerTask {

        public CustomTask() {

            init();

        }

        public void run() {
            try {

                if (isNetworkConnected()) {


                    Log.e("TAG--------", ""+downloaditem);

                    if (downloaditem == 17) {
                        startActivity(new Intent(SplashActivity.this, LoginActivity.class));

                        scheduler.shutdown();
                        finish();
                    }
                } else {
                    Toast.makeText(SplashActivity.this, "اتصال به اینترنت برقرار نیست!", Toast.LENGTH_LONG).show();
                }

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

                                //Log.e("TAG---", category.getId()+".."+category.getTitle());
                                //adding the hero to herolist
                                AppController.arrayList_category.add(category);


                            }

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
                                library.setFlag(true);
                                library.setRadio(true);
                                library.setId_category(object.getString("id_category"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                AppController.list_li_audio.add(library);
                            }

                            for (int i = 0; i < quranJsonList.length(); i++) {
                                JSONObject object = quranJsonList.getJSONObject(i);

                                Lists library = new Lists();
                                library.setTitle(object.getString("title"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                AppController.list_li_quran.add(library);
                            }

                            for (int i = 0; i < mafatihJsonList.length(); i++) {
                                JSONObject object = mafatihJsonList.getJSONObject(i);

                                Lists library = new Lists();
                                library.setTitle(object.getString("title"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                AppController.list_li_mafatih.add(library);
                            }

                            for (int i = 0; i < nahjJsonList.length(); i++) {
                                JSONObject object = nahjJsonList.getJSONObject(i);

                                Lists library = new Lists();
                                library.setTitle(object.getString("title"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                AppController.list_li_nahj.add(library);
                            }

                            for (int i = 0; i < resaleJsonList.length(); i++) {
                                JSONObject object = resaleJsonList.getJSONObject(i);

                                Lists library = new Lists();
                                library.setTitle(object.getString("title"));
                                library.setImg(object.getString("img"));
                                library.setUrl(object.getString("url"));

                                AppController.list_li_resale.add(library);
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

                                AppController.list_services.add(service);
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

                                AppController.list_games.add(game);
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

                                AppController.arrayList_magazin.add(magazin);
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
        AppController.getInstance().addToRequestQueue(req, "initMagazin");
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
                                //adding the hero to herolist
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

                                AppController.list_sa_chef.add(media);
                            }

                            for (int i = 0; i < employArray.length(); i++) {
                                JSONObject Object = employArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                AppController.list_sa_employ.add(media);
                            }

                            for (int i = 0; i < sportArray.length(); i++) {
                                JSONObject Object = sportArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                AppController.list_sa_sport.add(media);
                            }

                            for (int i = 0; i < foodArray.length(); i++) {
                                JSONObject Object = foodArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                AppController.list_sa_food.add(media);
                            }

                            for (int i = 0; i < plantArray.length(); i++) {
                                JSONObject Object = plantArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                AppController.list_sa_plant.add(media);
                            }

                            for (int i = 0; i < prayArray.length(); i++) {
                                JSONObject Object = prayArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

                                AppController.list_sa_pray.add(media);
                            }

                            for (int i = 0; i < psychologyArray.length(); i++) {
                                JSONObject Object = psychologyArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));
                                media.setAction(Object.getString("action"));

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
                            JSONArray farsArray = obj.getJSONArray("fars");
                            JSONArray isnaArray = obj.getJSONArray("isna");
                            JSONArray jamjamArray = obj.getJSONArray("jamjam");
                            JSONArray tabnakArray = obj.getJSONArray("tabnak");
                            JSONArray tasnimArray = obj.getJSONArray("tasnim");
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

                                AppController.list_ne_isna.add(media);
                            }

                            for (int i = 0; i < jamjamArray.length(); i++) {
                                JSONObject Object = jamjamArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                AppController.list_ne_jamjam.add(media);
                            }

                            for (int i = 0; i < tabnakArray.length(); i++) {
                                JSONObject Object = tabnakArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                AppController.list_ne_tabnak.add(media);
                            }

                            for (int i = 0; i < tasnimArray.length(); i++) {
                                JSONObject Object = tasnimArray.getJSONObject(i);

                                Lists media = new Lists();
                                media.setTitle(Object.getString("title"));
                                media.setImg(Object.getString("img"));
                                media.setUrl(Object.getString("url"));

                                AppController.list_ne_tasnim.add(media);
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
                                //adding the hero to herolist
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
