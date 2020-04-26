package ir.maziardev.chatrapp.activitys;

import android.Manifest;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import butterknife.BindView;
import butterknife.ButterKnife;
import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.classes.SavePref;
import ir.maziardev.chatrapp.network.AppController;
import ir.maziardev.chatrapp.sms.SmsListener;
import ir.maziardev.chatrapp.sms.SmsReceiver;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class LoginActivity extends AppCompatActivity {

    private static final String TAG = LoginActivity.class.getSimpleName();
    private static final int PERMISSION_REQUEST_CODE = 1;

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

    Random rnd = new Random();
    String random;
    SavePref save;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        ButterKnife.bind(this);

        save = new SavePref(this);
        String user = save.load(AppController.SAVE_USER, "0");
        String send_code = save.load(AppController.SAVE_SEND_CODE, "0");


        save.save(AppController.SAVE_SEND_CODE, "1");
        save.save(AppController.SAVE_USER_id, "1021");
        save.save(AppController.SAVE_USER_token, "8d91f1974ce167b2017422cf7df1a265");
        AppController.APP_TOKEN = "8d91f1974ce167b2017422cf7df1a265";

        startActivity(new Intent(LoginActivity.this, SplashActivity.class));
        finish();


        if (user.equals("1")) {
            startActivity(new Intent(LoginActivity.this, SplashActivity.class));
            finish();
        }else if(send_code.equals("1")){
            card_phone.setVisibility(View.GONE);
            tv_help.setVisibility(View.GONE);
            card_verfication.setVisibility(View.VISIBLE);
        }else {
            card_verfication.setVisibility(View.GONE);
            btn_verfication.setEnabled(false);
            edt_phone.requestFocusFromTouch();

            random = rnd.nextInt(9) + "" +
                    rnd.nextInt(9) + "" +
                    rnd.nextInt(9) + "" +
                    rnd.nextInt(9);
            save.save(AppController.SAVE_CODE, random);
        }


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
                save.save(AppController.SAVE_USER_phone, edt_phone.getText().toString());
                sendVerficationCode(edt_phone.getText().toString());
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
                String code = save.load(AppController.SAVE_CODE, "");
                if (code.equals(edt_verfication.getText().toString())) {
                    save.save(AppController.SAVE_USER, "1");
                    startActivity(new Intent(LoginActivity.this, SplashActivity.class));
                    finish();
                } else {
                    edt_verfication.setText("");
                    Toast.makeText(LoginActivity.this, "کد وارد شده صحیح نمی باشد.", Toast.LENGTH_SHORT).show();
                }
            }
        });

        showSmsDialog();
    }

    private void showSmsDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(LoginActivity.this);
        builder.setMessage("\n" +
                "برای خواندن خودکار کد احراز هویت نیاز به مجوز استفاده از SMS می باشد." +
                "\n"
        ).setTitle("راهنما").setIcon(android.R.drawable.ic_menu_info_details);

        builder.setNegativeButton("متوجه شدم!", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int id) {
                requestPermission();
                dialog.dismiss();
            }
        });
        AlertDialog dialog = builder.create();
        dialog.show();
    }


    //runtime permission
    private void requestPermission(){
        ActivityCompat.requestPermissions(LoginActivity.this,new String[]{
                Manifest.permission.SEND_SMS},PERMISSION_REQUEST_CODE);

        SmsReceiver.bindListener(new SmsListener() {
            @Override
            public void onMessageReceived(String messageText) {
                edt_verfication.setText(messageText);
                btn_verfication.performClick();
                Toast.makeText(LoginActivity.this, "خوش آمدید", Toast.LENGTH_SHORT).show();
            }
        });
    }


    private void sendVerficationCode(String phone) {
        StringRequest stringRequest = new StringRequest(Request.Method.POST, AppController.API_SIGNUP_URL,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        //Toast.makeText(MainActivity.this,response,Toast.LENGTH_LONG).show();
                        try {
                            JSONObject object = new JSONObject(response);

                            if (object.getInt("status") == 204) {
                                Toast.makeText(LoginActivity.this, "این شماره موبایل در سامانه موجود نمی باشد", Toast.LENGTH_SHORT).show();

                            } else if (object.getInt("status") == 200 || object.getInt("status") == 201) {
                                Toast.makeText(LoginActivity.this, "کد برای شماره تلفن شما ارسال شد", Toast.LENGTH_SHORT).show();
                                card_phone.setVisibility(View.GONE);
                                tv_help.setVisibility(View.GONE);
                                card_verfication.setVisibility(View.VISIBLE);

                                save.save(AppController.SAVE_SEND_CODE, "1");
                                save.save(AppController.SAVE_USER_id, object.getString("id_user"));
                                save.save(AppController.SAVE_USER_token, object.getString("token"));
                                AppController.APP_TOKEN = object.getString("token");
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Log.e(TAG, "Error: " + error.getMessage());
                    }
                }) {
            @Override
            protected Map<String, String> getParams() {
                Map<String, String> params = new HashMap<String, String>();
                params.put("phone", phone.substring(1, phone.length()));
                params.put("verifycode", random);
                return params;
            }

        };
        AppController.getInstance().addToRequestQueue(stringRequest, "sendVerficationCode");
    }


    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
