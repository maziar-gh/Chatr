package ir.maziardev.chatrapp.activitys;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;

import butterknife.BindView;
import butterknife.ButterKnife;
import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.network.AppController;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class LoginActivity extends AppCompatActivity {

    private static final String TAG = LoginActivity.class.getSimpleName();

    @BindView(R.id.btn_sendcode_login)
    Button btn_sendcode;
    @BindView(R.id.btn_verfication_login)
    Button btn_verfication;
    @BindView(R.id.card_phone_login)
    CardView card_phone;
    @BindView(R.id.card_verfication_login)
    CardView card_verfication;
    @BindView(R.id.tv_changephone_login)
    TextView tv_changephone;
    @BindView(R.id.edt_phone_login)
    EditText edt_phone;
    @BindView(R.id.edt_verfication_login)
    EditText edt_verfication;
    @BindView(R.id.tv_version_login)
    TextView tv_version;
    @BindView(R.id.tv_help)
    TextView tv_help;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        ButterKnife.bind(this);

        card_verfication.setVisibility(View.GONE);
        btn_verfication.setEnabled(false);
        edt_phone.requestFocusFromTouch();

        PackageInfo pinfo = null;
        try {
            pinfo = getPackageManager().getPackageInfo(getPackageName(), 0);
            AppController.APP_VERSION_CODE = String.valueOf(pinfo.versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        tv_version.append(pinfo.versionName);



        btn_sendcode.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                card_phone.setVisibility(View.GONE);
                tv_help.setVisibility(View.GONE);
                card_verfication.setVisibility(View.VISIBLE);
            }
        });


        tv_changephone.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                card_phone.setVisibility(View.VISIBLE);
                tv_help.setVisibility(View.VISIBLE);
                card_verfication.setVisibility(View.GONE);
                btn_verfication.setEnabled(false);
                edt_verfication.setText("");
            }
        });

        edt_phone.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                if (edt_phone.length() >= 11) {
                    btn_sendcode.setEnabled(true);
                } else {
                    btn_sendcode.setEnabled(false);
                }
            }

            @Override
            public void afterTextChanged(Editable s) {

            }
        });

        edt_verfication.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                if (edt_verfication.length() >= 4) {
                    btn_verfication.setEnabled(true);
                } else {
                    btn_verfication.setEnabled(false);
                }
            }

            @Override
            public void afterTextChanged(Editable s) {

            }
        });


        btn_verfication.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(LoginActivity.this, SplashActivity.class));
                finish();
            }
        });


        /*startActivity(new Intent(LoginActivity.this, MainActivity.class));
        finish();*/

    }




    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
