package ir.maziardev.chatrapp.network;


import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.text.TextUtils;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.Volley;
import com.downloader.PRDownloader;
import com.google.firebase.analytics.FirebaseAnalytics;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.models.Categoryy;
import ir.maziardev.chatrapp.models.ChannelList;
import ir.maziardev.chatrapp.models.ChannelModel;
import ir.maziardev.chatrapp.models.GridList;
import ir.maziardev.chatrapp.models.Lists;
import ir.maziardev.chatrapp.models.Magazin;
import ir.maziardev.chatrapp.models.Slider;
import ir.maziardev.chatrapp.models.Update;
import ir.maziardev.chatrapp.models.WeatherCity;
import ir.maziardev.chatrapp.models.WeatherItem;
import ir.mirrajabi.persiancalendar.core.models.PersianDate;
import uk.co.chrisjenx.calligraphy.CalligraphyConfig;

public class AppController extends Application {

    public static final String TAG = AppController.class.getSimpleName();

    public static String APP_VERSION_CODE = "-1";

    public static int SIZE_W = 250;
    public static int SIZE_H = 250;

    public static String APP_TOKEN = "APP_TOKEN";

    public static String SAVE_USER = "SAVE_USER";
    public static String SAVE_SEND_CODE = "SAVE_SEND_CODE";
    public static String SAVE_CODE = "SAVE_CODE";
    public static String SAVE_STORAGE_PERMISION = "SAVE_STORAGE_PERMISION";
    public static String SAVE_CAMERA_AUDIO_PERMISION = "SAVE_CAMERA_AUDIO_PERMISION";
    public static String SAVE_USER_phone = "SAVE_USER_phone";
    public static String SAVE_USER_id = "SAVE_USER_id";
    public static String SAVE_USER_token = "SAVE_USER_token";
    public static String SAVE_USER_name = "SAVE_USER_name";
    public static String SAVE_USER_dgree = "SAVE_USER_dgree";
    public static String SAVE_USER_pcode = "SAVE_USER_pcode";

    public static String SMS_SENDER = "981000596446";
    public static String DATABASE_NAME = "chatrdb.db";

    public static final String WEATHER_CITY_URL = "http://mobileapp.irimo.ir/WeatherServer/GetStationList";
    public static final String WEATHER_BY_CITY_URL = "http://mobileapp.irimo.ir/WeatherServer/GetStationData/";

    public static final String API_AZAN_URL = "https://chatr.anzalepoxy.ir/azan/index.htm";
    public static final String API_EST_URL = "https://chatr.anzalepoxy.ir/estekhare/index.php";
    public static final String API_SUPPORT_URL = "https://chatr.anzalepoxy.ir/chat/spachat.php";

    public static final String API_BASE_LIMIT = "100";

    public static final String API_BASE_URL = "https://chatr.anzalepoxy.ir/chatr/app/index.php/api/";
    public static final String API_UPDATE_URL = API_BASE_URL + "update/";
    public static final String API_SLIDER_URL = API_BASE_URL + "slider/detail/";
    public static final String API_CHANNEL_URL = API_BASE_URL + "channel/detail/";
    public static final String API_CHANNEL_LIST_URL = API_BASE_URL + "channel/data/";
    public static final String API_TV_URL = API_BASE_URL + "media/tv/";
    public static final String API_RADIO_URL = API_BASE_URL + "media/radio/";
    public static final String API_CATEGORY_URL = API_BASE_URL + "category/detail/";
    public static final String API_LIBRARY_URL = API_BASE_URL + "library/detail/";
    public static final String API_SERVICES_URL = API_BASE_URL + "services/detail/";
    public static final String API_MAGAZIN_URL = API_BASE_URL + "magazin/detail/";
    public static final String API_GAMES_URL = API_BASE_URL + "games/detail/";
    public static final String API_SALAMAT_URL = API_BASE_URL + "salamat/detail/";
    public static final String API_NEWS_URL = API_BASE_URL + "news/detail/";
    public static final String API_SIGNUP_URL = API_BASE_URL + "signup/";
    public static final String API_USER_URL = API_BASE_URL + "user/detail/";

    public static ArrayList<Slider> arrayList_slider = new ArrayList<>();
    public static ArrayList<ChannelModel> arrayList_channel = new ArrayList<>();
    public static ArrayList<Categoryy> arrayList_category = new ArrayList<>();
    public static ArrayList<Update> arrayList_update = new ArrayList<>();
    public static ArrayList<Magazin> arrayList_magazin = new ArrayList<>();


    public static ArrayList<WeatherCity> arrayList_weather_city = new ArrayList<>();
    public static WeatherItem weatherItem;
    public static PersianDate today;


    public static List<Lists> list_sa_chef = new ArrayList<>();
    public static List<Lists> list_sa_employ = new ArrayList<>();
    public static List<Lists> list_sa_sport = new ArrayList<>();
    public static List<Lists> list_sa_food = new ArrayList<>();
    public static List<Lists> list_sa_plant = new ArrayList<>();
    public static List<Lists> list_sa_pray = new ArrayList<>();
    public static List<Lists> list_sa_psychology = new ArrayList<>();
    public static List<Lists> list_li_quran = new ArrayList<>();
    public static List<Lists> list_li_nahj = new ArrayList<>();
    public static List<Lists> list_li_mafatih = new ArrayList<>();
    public static List<Lists> list_li_resale = new ArrayList<>();
    public static List<Lists> list_li_audio = new ArrayList<>();
    public static List<Lists> list_services = new ArrayList<>();
    public static List<Lists> list_services_pay = new ArrayList<>();
    public static List<Lists> list_services_ticket = new ArrayList<>();

    public static List<ChannelModel> list_channel = new ArrayList<>();
    public static List<ChannelList> list_items_channel = new ArrayList<>();

    public static List<Lists> list_tv = new ArrayList<>();
    public static List<Lists> list_radio = new ArrayList<>();
    public static List<Lists> list_games = new ArrayList<>();
    public static List<Lists> list_games_teen = new ArrayList<>();
    public static List<Lists> list_games_other = new ArrayList<>();
    public static List<Lists> list_games_child = new ArrayList<>();
    public static List<Lists> list_ne_fars = new ArrayList<>();
    public static List<Lists> list_ne_isna = new ArrayList<>();
    public static List<Lists> list_ne_jamjam = new ArrayList<>();
    public static List<Lists> list_ne_tabnak = new ArrayList<>();
    public static List<Lists> list_ne_tasnim = new ArrayList<>();
    public static List<Lists> list_ne_varzeshthree = new ArrayList<>();
    public static List<Lists> list_ne_varzeshnavad = new ArrayList<>();
    public static List<Lists> list_ne_yjc = new ArrayList<>();

    public static List<GridList> list_music = new ArrayList<>();
    public static List<GridList> list_movie = new ArrayList<>();
    public static List<GridList> list_series = new ArrayList<>();
    public static List<GridList> list_carton = new ArrayList<>();
    public static List<GridList> list_quran = new ArrayList<>();
    public static List<GridList> list_nohe = new ArrayList<>();


    public static String[] name = {
            "روزنامه کیهان",
            "روزنامه ایران ورزشی",
            "روزنامه روزان",
            "روزنامه اقتصاد ملی",
            "روزنامه عصر اقتصاد",
            "روزنامه آذربایجان",
            "روزنامه گل",
            "روزنامه خبر ورزشی",
            "روزنامه كسب و كار",
            "روزنامه شرق",
            "روزنامه اعتماد",
            "روزنامه شوت",
            "روزنامه مستقل",
            "روزنامه خراسان",
            "روزنامه جام جم",
            "روزنامه ابتکار",
            "روزنامه دنیای اقتصاد",
            "روزنامه قدس",
            "روزنامه صبح امروز",
            "روزنامه ستاره صبح",
            "روزنامه رسالت",
            "روزنامه جوان",
            "روزنامه بهار",
            "روزنامه ابرار ورزشى",
            "روزنامه فرصت امروز",
            "روزنامه عصر ایرانیان",
            "روزنامه صمت",
            "روزنامه صدای اصلاحات",
            "روزنامه شهروند"
    };
    public static String[] news = {
            "KayhanNews",
            "IranSport_s",
            "Roozan_s",
            "EghtesadeMeli_s",
            "AsreEghtesad_s",
            "Azarbaydgan_s",
            "Gol_s",
            "KhabarVarzeshi_s",
            "KasboKarNews_s",
            "Shargh_s",
            "Etemaad_s",
            "Shoot_s",
            "Mostaghel_s",
            "khorasannews_s",
            "JaameJam_s",
            "Ebtekaar_s",
            "DonyayeEghtesad_s",
            "Ghods_s",
            "SobheEmrooz_s",
            "SetarehSobh_s",
            "Resalat_s",
            "Javan_s",
            "Bahar_s",
            "AbrarSport_s",
            "ForsatEmrooz_s",
            "AsreIranian_s",
            "GostareshSMT_s",
            "SedayeEslahat_s",
            "Shahrvand_s"
    };



    private RequestQueue mRequestQueue;
    //private ImageLoader mImageLoader;
    private static AppController mInstance;
    private Locale locale = null;
    public static FirebaseAnalytics mFirebaseAnalytics;


    @Override
    public void onCreate() {
        super.onCreate();
        mInstance = this;
        mFirebaseAnalytics = FirebaseAnalytics.getInstance(this);

        //Cheshmak.with(this);
        //Cheshmak.initTracker("XmuvSnFEbUhc1GVn2kxpJg==");

        CalligraphyConfig.initDefault(new CalligraphyConfig.Builder()
                .setDefaultFontPath("fonts/iransans.ttf")
                .setFontAttrId(R.attr.fontPath)
                .build()
        );

        PRDownloader.initialize(getApplicationContext());

    }


    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (locale != null) {
            setSystemLocale(newConfig, locale);
            Locale.setDefault(locale);
            updateConfiguration(newConfig);
        }
    }

    @SuppressWarnings("deprecation")
    private static void setSystemLocale(Configuration config, Locale locale) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            config.setLocale(locale);
        } else {
            config.locale = locale;
        }
    }

    @SuppressWarnings("deprecation")
    private void updateConfiguration(Configuration config) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
            getBaseContext().createConfigurationContext(config);
        } else {
            getBaseContext().getResources().updateConfiguration(config, getBaseContext().getResources().getDisplayMetrics());
        }
    }


    public static synchronized AppController getInstance() {
        return mInstance;
    }

    public RequestQueue getRequestQueue() {
        if (mRequestQueue == null) {
            mRequestQueue = Volley.newRequestQueue(getApplicationContext());
        }
        return mRequestQueue;
    }

    public <T> void addToRequestQueue(Request<T> req, String tag) {
        // set the default tag if tag is empty
        req.setTag(TextUtils.isEmpty(tag) ? TAG : tag);
        getRequestQueue().add(req);
    }

    public <T> void addToRequestQueue(Request<T> req) {
        req.setTag(TAG);
        getRequestQueue().add(req);
    }

    public void cancelPendingRequests(Object tag) {
        if (mRequestQueue != null) {
            mRequestQueue.cancelAll(tag);
        }
    }


}
