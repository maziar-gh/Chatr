package ir.maziardev.chatrapp.activitys;

import android.content.Context;
import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.adapter.ListTvAdapter;
import ir.maziardev.chatrapp.enums.MainType;
import ir.maziardev.chatrapp.models.ChannelModel;
import ir.maziardev.chatrapp.models.Lists;
import ir.maziardev.chatrapp.models.Mainlist;
import ir.maziardev.chatrapp.network.AppController;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class OnlineServiceActivity extends AppCompatActivity {

    @BindView(R.id.recycler_payment_online)
    RecyclerView recycler_payment;
    @BindView(R.id.recycler_ticket_online)
    RecyclerView recycler_ticket;


    private List<ChannelModel> menuList_payment = new ArrayList<>();
    private List<ChannelModel> menuList_ticket = new ArrayList<>();
    private ListTvAdapter mAdapter_payment, mAdapter_ticket;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_onlineservice);
        ButterKnife.bind(this);

        init();
    }

    private void init() {


        //________________________________________payment
        mAdapter_payment = new ListTvAdapter(this, menuList_payment);
        LinearLayoutManager layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_payment.setLayoutManager(layoutManager);
        recycler_payment.setItemAnimator(new DefaultItemAnimator());
        recycler_payment.setAdapter(mAdapter_payment);

        for (int i = 0; i < AppController.list_services.size(); i++) {
            Lists service = AppController.list_services.get(i);
            if(service.getId_category().equals("14")){

                ChannelModel list = new ChannelModel();
                list.setCname(service.getTitle());
                list.setImg(service.getImg());
                list.setId_category("pay");

                AppController.list_services_pay.add(service);

               /* Mainlist mainlist = new Mainlist();
                mainlist.setTitle(service.getTitle());
                mainlist.setImg(service.getImg());
                mainlist.setUrl(service.getUrl());
                mainlist.setMainType(MainType.SERVICE);*/
                menuList_payment.add(list);
            }
        }
        mAdapter_payment.notifyDataSetChanged();


        //________________________________________ticket
        mAdapter_ticket = new ListTvAdapter(this, menuList_ticket);
        layoutManager
                = new LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, true);
        recycler_ticket.setLayoutManager(layoutManager);
        recycler_ticket.setItemAnimator(new DefaultItemAnimator());
        recycler_ticket.setAdapter(mAdapter_ticket);

        for (int i = 0; i < AppController.list_services.size(); i++) {
            Lists service = AppController.list_services.get(i);
            if(service.getId_category().equals("15")){

                ChannelModel list = new ChannelModel();
                list.setCname(service.getTitle());
                list.setImg(service.getImg());
                list.setId_category("ticket");

                AppController.list_services_ticket.add(service);


                /*Mainlist mainlist = new Mainlist();
                mainlist.setTitle(service.getTitle());
                mainlist.setImg(service.getImg());
                mainlist.setUrl(service.getUrl());
                mainlist.setMainType(MainType.SERVICE);*/
                menuList_ticket.add(list);
            }
        }
        mAdapter_ticket.notifyDataSetChanged();

    }


    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
