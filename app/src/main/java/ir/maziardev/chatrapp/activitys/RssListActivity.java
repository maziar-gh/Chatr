package ir.maziardev.chatrapp.activitys;


import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.StringRequest;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.adapter.RssAdapter;
import ir.maziardev.chatrapp.enums.Extras;
import ir.maziardev.chatrapp.network.AppController;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class RssListActivity extends AppCompatActivity {

    private static final String TAG = RssListActivity.class.getSimpleName();
    private RecyclerView mRecyclerView;
    private RssAdapter mAdapter;
    private ArrayList<HashMap<String, String>> resultItems = new ArrayList<>();
    private String mFeedUrl = "";
    private ProgressDialog progressDialog;
    private boolean isLoading;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_list_rss);

        ActionBar actionBar = getSupportActionBar();
        actionBar.setHomeButtonEnabled(true);
        actionBar.setDisplayHomeAsUpEnabled(true);

        Bundle ex= getIntent().getExtras();
        if (ex != null) {
            actionBar.setTitle(ex.getString(Extras.EXTRA_TITLE.toString()));
            mFeedUrl = ex.getString(Extras.EXTRA_URL.toString());
        }

        mRecyclerView = (RecyclerView) findViewById(R.id.recycler_view);

        RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(this);
        mRecyclerView.setLayoutManager(mLayoutManager);

        mAdapter = new RssAdapter(this, resultItems);
        mRecyclerView.setAdapter(mAdapter);

        downloadxml(mFeedUrl);
        //getDataFromWeb();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.rss_menu, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        switch (id) {
            case android.R.id.home:
                //Write your logic here
                this.finish();
                break;
            case R.id.refresh:
                if (!isLoading) {
                    downloadxml(mFeedUrl);
                } else {
                    showToast("در حال بروز رسانی...");
                }
                break;
        }
        return super.onOptionsItemSelected(item);
    }


    private void showProgressDialog() {
        isLoading = true;
        progressDialog = new ProgressDialog(this);
        progressDialog.setCancelable(false);
        progressDialog.setMessage("در حال بروز رسانی...");
        progressDialog.show();
    }

    private void hideProgressDialog() {
        isLoading = false;
        if (progressDialog != null) {
            progressDialog.cancel();
        }
    }

    private void showToast(String msg) {
        Toast.makeText(RssListActivity.this, msg, Toast.LENGTH_SHORT).show();
    }






    private ArrayList<HashMap<String, String>> parseXML(InputStream inputStream)
            throws ParserConfigurationException, IOException, SAXException {

        DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
        Document document = documentBuilder.parse(inputStream);
        Element element = document.getDocumentElement();

        NodeList itemlist = element.getElementsByTagName("item");
        NodeList itemChildren;

        Node currentItem;
        Node currentChild;

        ArrayList<HashMap<String, String>> items = new ArrayList<>();
        HashMap<String, String> currentMap;

        int imgCount = 0;

        for (int i = 0; i < itemlist.getLength(); i++) {

            currentItem = itemlist.item(i);
            itemChildren = currentItem.getChildNodes();

            currentMap = new HashMap<>();

            for (int j = 0; j < itemChildren.getLength(); j++) {

                currentChild = itemChildren.item(j);

                if (currentChild.getNodeName().equalsIgnoreCase("title")) {
                    // Log.d("Title", String.valueOf(currentChild.getTextContent()));
                    currentMap.put("title", currentChild.getTextContent());
                }

                if (currentChild.getNodeName().equalsIgnoreCase("category")) {
                    // Log.d("Title", String.valueOf(currentChild.getTextContent()));
                    currentMap.put("category", currentChild.getTextContent());
                }

                if (currentChild.getNodeName().equalsIgnoreCase("link")) {
                    // Log.d("Title", String.valueOf(currentChild.getTextContent()));
                    currentMap.put("origLink", currentChild.getTextContent());
                }

                if (currentChild.getNodeName().equalsIgnoreCase("guid")) {
                    // Log.d("Title", String.valueOf(currentChild.getTextContent()));
                    currentMap.put("origLink", currentChild.getTextContent());
                }

                if (currentChild.getNodeName().equalsIgnoreCase("description")) {
                    // Log.d("description", String.valueOf(currentChild.getTextContent()));
                    currentMap.put("description", currentChild.getTextContent());
                }

                if (currentChild.getNodeName().equalsIgnoreCase("pubDate")) {
                    // Log.d("Title", String.valueOf(currentChild.getTextContent()));
                    currentMap.put("pubDate", currentChild.getTextContent());
                }

                if (currentChild.getNodeName().equalsIgnoreCase("feedburner:origLink")) {
                    currentMap.put("origLink", currentChild.getTextContent());
                }

                if (currentChild.getNodeName().equalsIgnoreCase("media:thumbnail")) {
                    imgCount++;

                    if (imgCount == 1) {
                        currentMap.put("imageUrl", currentChild.getAttributes().item(0).getTextContent());
                    }
                }

                if (currentChild.getNodeName().equalsIgnoreCase("enclosure")) {
                    imgCount++;

                    if (imgCount == 1) {
                        currentMap.put("imageUrl", currentChild.getAttributes().item(0).getTextContent());
                    }
                }
            }
            if (currentMap != null && !currentMap.isEmpty()) {
                items.add(currentMap);
            }
            imgCount = 0;
        }

        return items;

    }



    private void downloadxml(String mFeedUrl) {
        showProgressDialog();
        StringRequest req = new StringRequest(Request.Method.GET, mFeedUrl,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        ArrayList<HashMap<String, String>> result = new ArrayList<>();
                        InputStream stream = new ByteArrayInputStream(response.getBytes(StandardCharsets.UTF_8));
                        try {
                            result = parseXML(stream);

                            if (result == null) {
                                showToast("لطفا از اتصال به اینترنت اطمینان حاصل نمایید.");
                            }else{
                                int before = resultItems.size();
                                resultItems.clear();
                                resultItems.addAll(result);
                                mAdapter.notifyItemRangeInserted(before, result.size());
                                mRecyclerView.invalidate();
                            }

                        } catch (ParserConfigurationException e) {
                            e.printStackTrace();
                        } catch (IOException e) {
                            e.printStackTrace();
                        } catch (SAXException e) {
                            e.printStackTrace();
                        }
                        hideProgressDialog();
                    }
                }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                VolleyLog.d(TAG, "Error: " + error.getMessage());
            }
        });
        req.setShouldCache(false);
        AppController.getInstance().addToRequestQueue(req, "downloadxml");
    }





    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
