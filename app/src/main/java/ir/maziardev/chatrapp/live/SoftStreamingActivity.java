package ir.maziardev.chatrapp.live;

import android.annotation.SuppressLint;
import android.content.pm.ActivityInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.live.softfilter.AnimationFilterSoft;
import ir.maziardev.chatrapp.live.softfilter.BlackWhiteFilterSoft;
import ir.maziardev.chatrapp.live.softfilter.BlurFilterSoft;
import ir.maziardev.chatrapp.live.softfilter.DoNothingFilterSoft;
import ir.maziardev.chatrapp.live.softfilter.FixYFilterSoft;
import ir.maziardev.chatrapp.live.softfilter.GrayFilterSoft;
import ir.maziardev.chatrapp.live.softfilter.IconFilterSoft;
import ir.maziardev.chatrapp.live.softfilter.SkinBlurFilterSoft;
import me.lake.librestreaming.filter.softvideofilter.BaseSoftVideoFilter;
import me.lake.librestreaming.model.RESConfig;

/**
 * Created by lake on 16-5-31.
 */
public class SoftStreamingActivity extends BaseStreamingActivity {
    protected FilterAdapter filterAdapter;

    @SuppressLint("SourceLockedOrientationActivity")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        filtermode = RESConfig.FilterMode.SOFT;
        super.onCreate(savedInstanceState);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);

        /**
         * filters just for demo
         */
        ArrayList<FilterItem> filterItems = new ArrayList<FilterItem>();
        filterItems.add(new FilterItem("NoFilter", null));
        filterItems.add(new FilterItem("DoNothingFilter", new DoNothingFilterSoft()));
        filterItems.add(new FilterItem("GrayFilter", new GrayFilterSoft()));
        filterItems.add(new FilterItem("BlackWhiteFilter", new BlackWhiteFilterSoft((byte) 0x80)));
        Bitmap bitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher);
        filterItems.add(new FilterItem("IconFilter", new IconFilterSoft(bitmap)));
        filterItems.add(new FilterItem("BlurFilter", new BlurFilterSoft(this)));
        filterItems.add(new FilterItem("SkinBlurFilter", new SkinBlurFilterSoft(this)));
        filterItems.add(new FilterItem("FixYFilter", new FixYFilterSoft((byte) 0)));
        Bitmap[] ans = new Bitmap[4];
        ans[0] = BitmapFactory.decodeResource(getResources(), R.drawable.animationa);
        ans[1] = BitmapFactory.decodeResource(getResources(), R.drawable.animationb);
        ans[2] = BitmapFactory.decodeResource(getResources(), R.drawable.animationc);
        ans[3] = BitmapFactory.decodeResource(getResources(), R.drawable.animationd);
        filterItems.add(new FilterItem("AnimationFilterSoft", new AnimationFilterSoft(ans)));
        filterAdapter = new FilterAdapter();
        filterAdapter.updateFilters(filterItems);

    }

    class FilterItem {
        String name;
        BaseSoftVideoFilter filter;

        public FilterItem(String name, BaseSoftVideoFilter filter) {
            this.name = name;
            this.filter = filter;
        }
    }

    class FilterAdapter extends BaseAdapter {
        private List<FilterItem> filters;
        private int selectIndex = 0;

        FilterAdapter() {
            filters = new ArrayList<>(0);
        }

        public boolean selectItem(int index) {
            if (selectIndex == index) {
                return false;
            }
            selectIndex = index;
            notifyDataSetChanged();
            return true;
        }

        public void updateFilters(List<FilterItem> filters) {
            this.filters = filters == null ? new ArrayList<FilterItem>(0) : filters;
            notifyDataSetChanged();
        }

        @Override
        public int getCount() {
            return filters.size();
        }

        @Override
        public Object getItem(int position) {
            return filters.get(position);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = LayoutInflater.from(SoftStreamingActivity.this).inflate(R.layout.item_filter, parent, false);
                convertView.setTag(new ViewHolder(convertView));
            }
            if (selectIndex == position) {
                ((ViewHolder) convertView.getTag()).iv_star.setImageResource(android.R.drawable.btn_star_big_on);
            } else {
                ((ViewHolder) convertView.getTag()).iv_star.setImageResource(android.R.drawable.btn_star_big_off);
            }

            ((ViewHolder) convertView.getTag()).tv_name.setText(filters.get(position).name);
            return convertView;
        }

        class ViewHolder {
            TextView tv_name;
            ImageView iv_star;

            public ViewHolder(View v) {
                this.tv_name = (TextView) v.findViewById(R.id.tv_name);
                this.iv_star = (ImageView) v.findViewById(R.id.iv_star);
            }
        }
    }
}
