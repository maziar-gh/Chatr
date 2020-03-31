package ir.maziardev.chatrapp.activitys;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.TextView;

import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.enums.Extras;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class WebActivity extends AppCompatActivity {

    boolean isFullscreen = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_web);

        Bundle ex = getIntent().getExtras();
        if (ex != null) {
            final TextView txtview = (TextView)findViewById(R.id.tV1);
            final ProgressBar pbar = (ProgressBar) findViewById(R.id.pB1);
            WebView web = findViewById(R.id.webview_activity);


            if(ex.getString(Extras.EXTRA_URL.toString(),"").contains("iranseda")){
                web.setWebViewClient(new WebViewClient());
                WebSettings webSettings = web.getSettings();
                webSettings.setJavaScriptEnabled(true);
                web.loadUrl(ex.getString(Extras.EXTRA_URL.toString(),""));
                web.reload();
            }else {
                web.setWebViewClient(new WebViewClient());
                web.getSettings().setBuiltInZoomControls(true);
                web.getSettings().setDisplayZoomControls(false);
                WebSettings webSettings = web.getSettings();
                webSettings.setJavaScriptEnabled(true);
                webSettings.setCacheMode(WebSettings.LOAD_CACHE_ELSE_NETWORK);
                web.loadUrl(ex.getString(Extras.EXTRA_URL.toString(),""));
                isFullscreen = ex.getBoolean(Extras.FULLSCREEN_ACTIVITY.toString(),false);

                web.setWebChromeClient(new WebChromeClient() {
                    public void onProgressChanged(WebView view, int progress) {
                        if(progress < 100 && pbar.getVisibility() == ProgressBar.GONE){
                            pbar.setVisibility(ProgressBar.VISIBLE);
                            txtview.setVisibility(View.VISIBLE);
                        }

                        pbar.setProgress(progress);
                        if(progress == 100) {
                            pbar.setVisibility(ProgressBar.GONE);
                            txtview.setVisibility(View.GONE);

                            if(ex.getString(Extras.EXTRA_URL.toString(),"").contains("iranseda")){
                                web.reload();
                            }
                        }
                    }
                });
            }


        }

    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (isFullscreen && hasFocus) {
            hideSystemUI();
        }
    }

    private void hideSystemUI() {
        // Enables regular immersive mode.
        // For "lean back" mode, remove SYSTEM_UI_FLAG_IMMERSIVE.
        // Or for "sticky immersive," replace it with SYSTEM_UI_FLAG_IMMERSIVE_STICKY
        View decorView = getWindow().getDecorView();
        decorView.setSystemUiVisibility(
                View.SYSTEM_UI_FLAG_IMMERSIVE
                        // Set the content to appear under the system bars so that the
                        // content doesn't resize when the system bars hide and show.
                        | View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                        | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                        | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                        // Hide the nav bar and status bar
                        | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                        | View.SYSTEM_UI_FLAG_FULLSCREEN);
    }
    private void showSystemUI() {
        View decorView = getWindow().getDecorView();
        decorView.setSystemUiVisibility(
                View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                        | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                        | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN);
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
