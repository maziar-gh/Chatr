package ir.maziardev.chatrapp.activitys;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;

import ir.maziardev.chatrapp.R;

public class ProfileDialogClass  extends Dialog implements
        android.view.View.OnClickListener {

    String dgree, fullname, pcode;

    public Activity activity;
    public Dialog d;
    public TextView txt_dgree, txt_name, txt_pcode;

    public ProfileDialogClass(Activity a, String dgree, String fullname, String pcode) {
        super(a);
        // TODO Auto-generated constructor stub
        this.activity = a;
        this.dgree = dgree;
        this.fullname = fullname;
        this.pcode = pcode;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.profile_dialog);
        txt_dgree = (TextView) findViewById(R.id.txt_dgree_profile);
        txt_name = (TextView) findViewById(R.id.txt_fullname_profile);
        txt_pcode = (TextView) findViewById(R.id.txt_pcode_profile);

        txt_dgree.setText(this.dgree);
        txt_name.setText(this.fullname);
        txt_pcode.setText(this.pcode);
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            default:
                break;
        }
        dismiss();
    }

}