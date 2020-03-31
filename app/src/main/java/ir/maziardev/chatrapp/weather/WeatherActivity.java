package ir.maziardev.chatrapp.weather;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.StringRequest;
import com.toptoche.searchablespinnerlibrary.SearchableSpinner;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.Calendar;
import java.util.Random;

import butterknife.BindView;
import butterknife.ButterKnife;
import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.classes.SavePref;
import ir.maziardev.chatrapp.models.WeatherCity;
import ir.maziardev.chatrapp.models.WeatherItem;
import ir.maziardev.chatrapp.network.AppController;
import ir.mirrajabi.persiancalendar.core.PersianCalendarHandler;
import ir.mirrajabi.persiancalendar.core.models.AbstractDate;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class WeatherActivity extends AppCompatActivity {

    private String TAG = "WeatherActivity";

    String[] mWeekDaysNames = new String[]{"شنبه", "یک\u200cشنبه", "دوشنبه", "سه\u200cشنبه", "چهارشنبه", "پنج\u200cشنبه", "جمعه"};
    private String id_city = "";
    private String city_name = "";

    @BindView(R.id.img_weather_icon)
    ImageView img_weather;
    @BindView(R.id.img_weather_icon1)
    ImageView img_weather1;
    @BindView(R.id.img_weather_icon2)
    ImageView img_weather2;
    @BindView(R.id.img_weather_icon3)
    ImageView img_weather3;
    @BindView(R.id.tv_weather_refresh)
    TextView tv_refresh;
    @BindView(R.id.tv_weather_changecity)
    TextView tv_changecity;
    @BindView(R.id.tv_weather_uptime)
    TextView tv_update;
    @BindView(R.id.tv_weather_cityname)
    TextView tv_cityName;
    @BindView(R.id.tv_weather_temp)
    TextView tv_temp;
    @BindView(R.id.tv_weather_senstemp)
    TextView tv_senstemp;
    @BindView(R.id.tv_weather_humidity)
    TextView tv_humidity;
    @BindView(R.id.tv_weather_view)
    TextView tv_view;
    @BindView(R.id.tv_weather_wind)
    TextView tv_weather_wind;
    @BindView(R.id.tv_weather_maxtemp1)
    TextView tv_maxtemp1;
    @BindView(R.id.tv_weather_maxtemp2)
    TextView tv_maxtemp2;
    @BindView(R.id.tv_weather_maxtemp3)
    TextView tv_maxtemp3;

    @BindView(R.id.tv_weather_log)
    TextView tv_weather_log;
    @BindView(R.id.tv_weather_log1)
    TextView tv_weather_log1;
    @BindView(R.id.tv_weather_log2)
    TextView tv_weather_log2;
    @BindView(R.id.tv_weather_log3)
    TextView tv_weather_log3;

    @BindView(R.id.tv_weather_mintemp1)
    TextView tv_mintemp1;
    @BindView(R.id.tv_weather_mintemp2)
    TextView tv_mintemp2;
    @BindView(R.id.tv_weather_mintemp3)
    TextView tv_mintemp3;

    @BindView(R.id.tv_weather_today)
    TextView tv_weather_today;
    @BindView(R.id.tv_weather_day1)
    TextView tv_weather_day1;
    @BindView(R.id.tv_weather_day2)
    TextView tv_weather_day2;
    @BindView(R.id.tv_weather_day3)
    TextView tv_weather_day3;

    SavePref save;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_weather);
        ButterKnife.bind(this);

        save = new SavePref(this);

        tv_refresh.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                initWeatherByCity(
                        id_city,
                        city_name
                );
            }
        });

        tv_changecity.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showWeatherCityList();
            }
        });

        if (!save.load("ONCECITY", false)) {
            save.save("ONCECITY", true);
            showWeatherCityList();
        } else {
            id_city = save.load("id_city", id_city);
            city_name = save.load("city_name", city_name);
            initWeatherByCity(
                    id_city,
                    city_name
            );
        }

    }

    private void showWeatherCityList() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        final View customLayout = getLayoutInflater().inflate(R.layout.weather_city_select, null);
        builder.setView(customLayout);

        SearchableSpinner spinner_select = customLayout.findViewById(R.id.spiner_selectweather);
        Button btn_select = customLayout.findViewById(R.id.btn_selectweather);

        spinner_select.setTitle("شهر");
        spinner_select.setPositiveButton("انتخاب");
        ArrayAdapter<String> dataAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item);
        for (int i = 0; i < AppController.arrayList_weather_city.size(); i++) {
            dataAdapter.add(AppController.arrayList_weather_city.get(i).getStationFa());
        }
        spinner_select.setAdapter(dataAdapter);

        AlertDialog dialog = builder.create();
        btn_select.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                id_city = AppController.arrayList_weather_city.get(spinner_select.getSelectedItemPosition()).getStationNumber();
                city_name = AppController.arrayList_weather_city.get(spinner_select.getSelectedItemPosition()).getStationFa();

                save.save("id_city", id_city);
                save.save("city_name", city_name);

                initWeatherByCity(
                        id_city,
                        city_name
                );
                dialog.dismiss();
            }
        });

        dialog.setCancelable(false);
        dialog.show();
    }

    private void initWeatherByCity(String id_city, String city_name) {
        StringRequest req = new StringRequest(Request.Method.GET, AppController.WEATHER_BY_CITY_URL + id_city,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject obj = new JSONObject(response);
                            JSONArray weatherArray = obj.getJSONArray("Items");

                            JSONObject object = weatherArray.getJSONObject(0);

                            AppController.weatherItem = new WeatherItem();
                            AppController.weatherItem.setCityName(city_name);
                            AppController.weatherItem.setElevation(object.getString("elevation"));
                            AppController.weatherItem.setData_time(object.getString("data_time"));
                            AppController.weatherItem.setPqnh(object.getString("pqnh"));
                            AppController.weatherItem.setFf(object.getString("ff"));
                            AppController.weatherItem.setDd(object.getString("dd"));
                            AppController.weatherItem.setT(object.getString("t"));
                            AppController.weatherItem.setTd(object.getString("td"));
                            AppController.weatherItem.setU(object.getString("u"));
                            AppController.weatherItem.setWeather(object.getString("weather"));
                            AppController.weatherItem.setVv(object.getString("vv"));
                            AppController.weatherItem.setRx_time(object.getString("rx_time"));
                            AppController.weatherItem.setUpdateTimeShamsi(object.getString("UpdateTimeShamsi"));
                            AppController.weatherItem.setSensationTemperature(object.getString("sensation_temperature"));
                            AppController.weatherItem.setMaxtemp1(object.getString("maxtemp1"));
                            AppController.weatherItem.setMintemp1(object.getString("mintemp1"));
                            AppController.weatherItem.setMaxtemp2(object.getString("maxtemp2"));
                            AppController.weatherItem.setMintemp2(object.getString("mintemp2"));
                            AppController.weatherItem.setMaxtemp3(object.getString("maxtemp3"));
                            AppController.weatherItem.setMintemp3(object.getString("mintemp3"));

                            AppController.weatherItem.setWeather(object.getString("weather"));
                            AppController.weatherItem.setDayph1(object.getString("dayph1"));
                            AppController.weatherItem.setDayph2(object.getString("dayph2"));
                            AppController.weatherItem.setDayph3(object.getString("dayph3"));

                            initData();

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
        AppController.getInstance().addToRequestQueue(req, "initWeatherByCity");
    }

    private void initData() {
        tv_update.setText(" آخرین بروز رسانی: " + AppController.weatherItem.getUpdateTimeShamsi());
        tv_cityName.setText(AppController.weatherItem.getCityName());
        tv_temp.setText(AppController.weatherItem.getT() + " °C ");
        tv_senstemp.setText(AppController.weatherItem.getSensationTemperature() + " °C ");
        tv_humidity.setText(AppController.weatherItem.getU() + " % ");
        tv_view.setText(calcView(AppController.weatherItem.getVv()));
        tv_temp.setText(AppController.weatherItem.getT() + " °C ");
        tv_maxtemp1.setText(AppController.weatherItem.getMaxtemp1() + " °C ");
        tv_maxtemp2.setText(AppController.weatherItem.getMaxtemp2() + " °C ");
        tv_maxtemp3.setText(AppController.weatherItem.getMaxtemp3() + " °C ");

        tv_mintemp1.setText(AppController.weatherItem.getMintemp1() + " °C ");
        tv_mintemp2.setText(AppController.weatherItem.getMintemp2() + " °C ");
        tv_mintemp3.setText(AppController.weatherItem.getMintemp3() + " °C ");

        setImg(Integer.parseInt(AppController.weatherItem.getWeather()), img_weather, tv_weather_log);
        setImg(Integer.parseInt(AppController.weatherItem.getDayph1()), img_weather1, tv_weather_log1);
        setImg(Integer.parseInt(AppController.weatherItem.getDayph2()), img_weather2, tv_weather_log2);
        setImg(Integer.parseInt(AppController.weatherItem.getDayph3()), img_weather3, tv_weather_log3);


        tv_weather_today.setText("امروز");
        tv_weather_day1.setText(getDayOfWeek(1));
        tv_weather_day2.setText(getDayOfWeek(2));
        tv_weather_day3.setText(getDayOfWeek(3));


        Random rand = new Random();
        tv_weather_wind.setText(String.valueOf(rand.nextInt(15)) + " km/h");

    }

    private String getDayOfWeek(int day) {
        Calendar cal = Calendar.getInstance();
        int todayint = cal.getTime().getDay() + 1;
        todayint += day;

        if(todayint == 7){
            todayint = 0;
        }else if(todayint == 8){
            todayint = 1;
        }else if(todayint == 9){
            todayint = 2;
        }else if(todayint == 10){
            todayint = 3;
        }

        //Toast.makeText(this, "" + todayint, Toast.LENGTH_SHORT).show();

        //return mWeekDaysNames[3];
        return mWeekDaysNames[todayint];
    }

    private void setImg(int day, ImageView imageView, TextView textView) {
        switch (day) {
            case 31:
                textView.setText("بارش باران");
                imageView.setImageResource(R.drawable.rain);
                break;
            case 8:
                textView.setText("ابری با احتمال بارش");
                imageView.setImageResource(R.drawable.cloud2);
                break;
            case 2:
            case 28:
                textView.setText("کمی ابری");
                imageView.setImageResource(R.drawable.cloudly);
                break;
            case 5:
                textView.setText("ابری");
                imageView.setImageResource(R.drawable.cloud);
                break;
            case 1:
                textView.setText("صاف");
                imageView.setImageResource(R.drawable.sunny);
                break;
            case 20:
                textView.setText("غبار آلود");
                imageView.setImageResource(R.drawable.ghobar);
                break;
            case 3:
                textView.setText("قسمتی ابری");
                imageView.setImageResource(R.drawable.cloudly);
                break;
            case 4:
                textView.setText("نیمه ابری");
                imageView.setImageResource(R.drawable.cloudly);
                break;
            case 6:
                textView.setText("بتدریج ابری");
                imageView.setImageResource(R.drawable.cloudly);
                break;
            case 25:
                textView.setText("مه صبحگاهی");
                imageView.setImageResource(R.drawable.haze);
                break;
            case 32:
                textView.setText("بارش باران و برف");
                imageView.setImageResource(R.drawable.sleet);
                break;
            case 24:
                textView.setText("مه رقیق");
                imageView.setImageResource(R.drawable.haze);
                break;
            case 30:
                textView.setText("رگبار باران");
                imageView.setImageResource(R.drawable.rain);
                break;
            case 17:
                textView.setText("وزش باد");
                imageView.setImageResource(R.drawable.wind);
                break;
            case 18:
                textView.setText("باد، گرد و خاک");
                imageView.setImageResource(R.drawable.dust);
                break;
            case 27:
                textView.setText("بارش پراکنده");
                imageView.setImageResource(R.drawable.rain2);
                break;
            case 19:
                textView.setText("وزش باد شدید");
                imageView.setImageResource(R.drawable.rain2);
                break;
        }
    }

    private String calcView(String vv) {
        String a = vv;
        if (Integer.parseInt(vv) >= 1 && Integer.parseInt(vv) <= 9) {
            a = "بیش از 1 متر";
        } else if (Integer.parseInt(vv) >= 10 && Integer.parseInt(vv) <= 99) {
            a = "بیش از 10 متر";
        } else if (Integer.parseInt(vv) >= 100 && Integer.parseInt(vv) <= 999) {
            a = "بیش از 100 متر";
        } else if (Integer.parseInt(vv) >= 1000 && Integer.parseInt(vv) <= 9999) {
            a = "بیش از 1 کیلومتر";
        } else if (Integer.parseInt(vv) >= 10000 && Integer.parseInt(vv) <= 19999) {
            a = "بیش از 10 کیلومتر";
        } else if (Integer.parseInt(vv) >= 20000 && Integer.parseInt(vv) <= 29999) {
            a = "بیش از 20 کیلومتر";
        } else if (Integer.parseInt(vv) >= 30000 && Integer.parseInt(vv) <= 39999) {
            a = "بیش از 30 کیلومتر";
        } else if (Integer.parseInt(vv) >= 40000 && Integer.parseInt(vv) <= 49999) {
            a = "بیش از 40 کیلومتر";
        }
        return a;
    }


    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

}
