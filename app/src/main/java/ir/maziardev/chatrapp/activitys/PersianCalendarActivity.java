package ir.maziardev.chatrapp.activitys;


import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.floatingactionbutton.FloatingActionButton;

import butterknife.BindView;
import butterknife.ButterKnife;
import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.enums.Extras;
import ir.maziardev.chatrapp.network.AppController;
import ir.mirrajabi.persiancalendar.PersianCalendarView;
import ir.mirrajabi.persiancalendar.core.PersianCalendarHandler;
import ir.mirrajabi.persiancalendar.core.interfaces.OnDayClickedListener;
import ir.mirrajabi.persiancalendar.core.interfaces.OnMonthChangedListener;
import ir.mirrajabi.persiancalendar.core.models.CalendarEvent;
import ir.mirrajabi.persiancalendar.core.models.PersianDate;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class PersianCalendarActivity extends AppCompatActivity {

    @BindView(R.id.persian_calendar)
    PersianCalendarView persianCalendarView;
    @BindView(R.id.tv_event_calendar)
    TextView tv_event;
    @BindView(R.id.tv_month_calendar)
    TextView tv_month;
    @BindView(R.id.tv_day_month_calendar)
    TextView tv_daymonth;
    @BindView(R.id.img_left_calendar)
    ImageView img_left;
    @BindView(R.id.img_right_calendar)
    ImageView img_right;
    @BindView(R.id.webview_calender)
    WebView htmlWebView;

    @BindView(R.id.fab_calendar_qhebleh)
    FloatingActionButton fab_qhebleh;
    @BindView(R.id.fab_calendar_este)
    FloatingActionButton fab_este;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_persian_calendar);
        ButterKnife.bind(this);

        htmlWebView.setWebViewClient(new CustomWebViewClient());
        WebSettings webSetting = htmlWebView.getSettings();
        webSetting.setJavaScriptEnabled(true);
        htmlWebView.loadUrl(AppController.API_AZAN_URL);

        final PersianCalendarHandler calendar = persianCalendarView.getCalendar();
        final PersianDate today = calendar.getToday();
        calendar.addLocalEvent(new CalendarEvent(
                today, "امروز", false
        ));
        /*calendar.addLocalEvent(new CalendarEvent(

                today.clone().rollDay(2,true), "Custom event 2", true
        ));*/
        tv_month.setText(calendar.getMonthName(today));
        calendar.setOnMonthChangedListener(new OnMonthChangedListener() {
            @Override
            public void onChanged(PersianDate date) {
                tv_month.setText(calendar.getMonthName(date));
            }
        });
        persianCalendarView.setOnDayClickedListener(new OnDayClickedListener() {
            @Override
            public void onClick(PersianDate date) {
                tv_event.setText("هیچ رویدادی برای این روز ثبت نیست.");
                for (CalendarEvent e : calendar.getAllEventsForDay(date))
                    if (e.getTitle().length() > 0) {
                        tv_event.setText(e.getTitle());
                    }

                /*calendar.addLocalEvent(new CalendarEvent(
                        today.clone().rollDay(2, false), "Some event that will be added in runtime", false
                ));
                persianCalendarView.update();*/
            }
        });

        img_left.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                persianCalendarView.goToPreviousMonth();
            }
        });
        img_right.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                persianCalendarView.goToNextMonth();
            }
        });


        calendar.setHighlightOfficialEvents(true);
        String dayAndMonth = calendar.getWeekDayName(today) + " " + calendar.formatNumber(today.getDayOfMonth())
                + " " + calendar.getMonthName(today) + " " + calendar.formatNumber(today.getYear());
        tv_daymonth.setText(dayAndMonth);

        //calendar.setColorBackground(getResources().getColor(android.R.color.holo_blue_dark));
        calendar.setColorBackground(Color.parseColor("#292929"));
        try {
            persianCalendarView.update();
        } catch (Exception e) {
            e.printStackTrace();
        }



        fab_qhebleh.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(PersianCalendarActivity.this, QeblehActivity.class));
            }
        });

        fab_este.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(PersianCalendarActivity.this, WebActivity.class);
                i.putExtra(Extras.EXTRA_URL.toString(), AppController.API_EST_URL);
                startActivity(i);
            }
        });

    }


    private class CustomWebViewClient extends WebViewClient {
        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            view.loadUrl(url);
            return true;
        }
    }


    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

}
