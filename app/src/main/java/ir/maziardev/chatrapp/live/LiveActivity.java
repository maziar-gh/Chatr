package ir.maziardev.chatrapp.live;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioGroup;

import com.google.android.material.snackbar.Snackbar;

import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.activitys.MainActivity;

public class LiveActivity extends AppCompatActivity {

    private static final int REQUEST_STREAM = 1;
    private static String[] PERMISSIONS_STREAM = {
            Manifest.permission.CAMERA,
            Manifest.permission.RECORD_AUDIO,
            Manifest.permission.WRITE_EXTERNAL_STORAGE
    };
    RadioGroup rg_direction;
    RadioGroup rg_mode;
    EditText et_url;
    Button btn_start;
    boolean authorized = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_live);


        et_url = (EditText) findViewById(R.id.et_url);
        rg_direction = (RadioGroup) findViewById(R.id.rg_direction);
        rg_mode = (RadioGroup) findViewById(R.id.rg_mode);
        rg_direction.check(R.id.rb_port);
        rg_mode.check(R.id.rb_hard);
        btn_start = (Button) findViewById(R.id.btn_start);
        btn_start.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (authorized) {
                    start();
                } else {
                    Snackbar.make(LiveActivity.this.getWindow().getDecorView().getRootView(), "streaming need permissions!", Snackbar.LENGTH_LONG)
                            .setAction("auth", new View.OnClickListener() {
                                @Override
                                public void onClick(View v) {
                                    verifyPermissions();
                                }
                            }).show();
                }
            }
        });

        verifyPermissions();
    }

    private void start() {
        Intent intent;
        boolean isport = false;
        if (rg_direction.getCheckedRadioButtonId() == R.id.rb_port) {
            isport = true;
        }
        if (rg_mode.getCheckedRadioButtonId() == R.id.rb_hard) {
            intent = new Intent(LiveActivity.this, HardStreamingActivity.class);
        } else {
            intent = new Intent(LiveActivity.this, SoftStreamingActivity.class);
        }
        intent.putExtra(BaseStreamingActivity.DIRECTION, isport);
        intent.putExtra(BaseStreamingActivity.RTMPADDR, et_url.getText().toString());
        startActivity(intent);
    }


    public void verifyPermissions() {
        int CAMERA_permission = ActivityCompat.checkSelfPermission(LiveActivity.this, Manifest.permission.CAMERA);
        int RECORD_AUDIO_permission = ActivityCompat.checkSelfPermission(LiveActivity.this, Manifest.permission.RECORD_AUDIO);
        int WRITE_EXTERNAL_STORAGE_permission = ActivityCompat.checkSelfPermission(LiveActivity.this, Manifest.permission.WRITE_EXTERNAL_STORAGE);
        if (CAMERA_permission != PackageManager.PERMISSION_GRANTED ||
                RECORD_AUDIO_permission != PackageManager.PERMISSION_GRANTED ||
                WRITE_EXTERNAL_STORAGE_permission != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(
                    LiveActivity.this,
                    PERMISSIONS_STREAM,
                    REQUEST_STREAM
            );
            authorized = false;
        } else {
            authorized = true;
            btn_start.performClick();
            finish();
        }
    }



}
