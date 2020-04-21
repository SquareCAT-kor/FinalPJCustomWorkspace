package com.example.topmenuexample.ui.main;

import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.topmenuexample.MainActivity;
import com.example.topmenuexample.Order;
import com.example.topmenuexample.R;
import com.example.topmenuexample.Sales;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import org.json.JSONArray;

import java.util.ArrayList;


/*
*  정산 기능이 있는 CalculateFragment.
* */

public class CalculateLayoutFragment extends Fragment {

    private String title;
    private int page;
    private Order order = new Order();
    private ArrayList<Order> olist = new ArrayList<Order>();
    private CalculateListAdapter CalculateListAdapter;
    private String startTime;
    private Sales sales = new Sales();
    private ArrayList<Sales> salesList = new ArrayList<Sales>();
    RecyclerView list_calculateview;
    Gson gson = new Gson();

    TextView cctxt_totalcalculate, cctxt_chainname, cctxt_totalordercount, cctxt_clerkname;
    TextView cctxt_starttime, cctxt_endtime;
    Button button_calculate, button_close;


    @Override
    public void setUserVisibleHint(boolean isVisibleToUser) {

        super.setUserVisibleHint(isVisibleToUser);
        getFragmentManager().beginTransaction().detach(this).attach(this).commit();

        Log.d("---", "caculateLayout isvisible ? :" + isVisibleToUser);
        if (isVisibleToUser) {
            if (order != null && olist != null) {
                startTime = ((MainActivity) getActivity()).tempStartTime;
                order = ((MainActivity) getActivity()).tempOrder;
                olist = ((MainActivity) getActivity()).tempOlist;
                //Log.d("---","Order :"+Order+ "Order list added : "+ olist.get(0));
            }

            makeView(this.getView());

        } else {
            Log.d("---", "not Visible to User");

        }

    }

    // newInstance constructor for creating fragment with arguments
    public static CalculateLayoutFragment newInstance(int page, String title) {
        CalculateLayoutFragment fragment = new CalculateLayoutFragment();
        Bundle args = new Bundle();
        args.putInt("someInt", page);
        args.putString("someTitle", title);
        Log.d("---", "page:" + page + "title" + title);
        fragment.setArguments(args);
        return fragment;
    }

    // Store instance variables based on arguments passed
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        page = getArguments().getInt("someInt", 0);
        title = getArguments().getString("someTitle");

    }


    public void makeView(View view) {
        Log.d("---", "make calculate page");


        cctxt_totalordercount = view.findViewById(R.id.cctxt_totalordercount);
        cctxt_totalcalculate = view.findViewById(R.id.cctxt_totalcalculate);
        cctxt_endtime = view.findViewById(R.id.cctxt_endtime);
        cctxt_starttime = view.findViewById(R.id.cctxt_starttime);
        cctxt_clerkname = view.findViewById(R.id.cctxt_clerkname);
        cctxt_chainname = view.findViewById(R.id.cctxt_chainname);
        list_calculateview = view.findViewById(R.id.list_calculateview);
        button_calculate = view.findViewById(R.id.button_calculate);
        button_close = view.findViewById(R.id.button_close);

        cctxt_starttime.setText(startTime);

        LinearLayoutManager ccLinerLayoutManager = new LinearLayoutManager(getContext());
        list_calculateview.setLayoutManager(ccLinerLayoutManager);
        CalculateListAdapter = new CalculateListAdapter(olist);

        list_calculateview.setAdapter(CalculateListAdapter);
        final String admin = cctxt_clerkname.getText().toString();

        int totalsum = 0;
        final int totalcount = olist.size();
        for (int i = 0; i < olist.size(); i++) {
            totalsum += olist.get(i).getTotalCost();
        }
        cctxt_totalcalculate.setText(totalsum + "");
        cctxt_totalordercount.setText(totalcount + "");
        ((MainActivity) getActivity()).tempTotalCost = totalsum;
        ((MainActivity) getActivity()).tempClerk = admin;

        final int finalTotalsum = totalsum;
        button_calculate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                CalculateDialogFragment ccdf = CalculateDialogFragment.getInstance();
                ccdf.show(getFragmentManager(), CalculateDialogFragment.TAG_Calculate_Dialog);

                String endTime = ((MainActivity) getActivity()).getCurrentTime();
                cctxt_endtime.setText(endTime);
                String sellDay = ((MainActivity)getActivity()).getDay();
                sales.setSellDate(sellDay);
                sales.setAdmin(admin);
                sales.setSellCost(finalTotalsum);
                sales.setSellCount(totalcount);

                ((MainActivity)getActivity()).tempSales = sales;
                ((MainActivity)getActivity()).tempSalesList.add(sales);
                ((MainActivity) getActivity()).setPageNum(3);
                ((MainActivity) getActivity()).viewPager.setCurrentItem(3);

                sendJsonData(sales);

            }
        });

        button_close.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ((MainActivity) getActivity()).setPageNum(0);
                ((MainActivity) getActivity()).viewPager.setCurrentItem(0);

            }
        });




    }

    public void sendJsonData(Sales sales){
        sales = this.sales;
        JsonObject jo = new JsonObject();
        jo.addProperty("saleDate",sales.getSellDate());
        jo.addProperty("saleCount",sales.getSellCount());
        jo.addProperty("saleCost",sales.getSellCost());
        jo.addProperty("saleAdmin",sales.getAdmin());
        JSONArray ja = new JSONArray();
        ja.put(jo);
        sendToHttpTask stht = new sendToHttpTask("sales",ja);
        stht.execute();





    }
    class sendToHttpTask extends AsyncTask<Void, Void, String> {

        String url;

        public sendToHttpTask(String key, JSONArray ja) {
            url = "http://70.12.224.85/top/pos.top?";
            url += "key=" + key + "&data=" + ja;

        }

        @Override
        protected String doInBackground(Void... voids) {
            Log.d("---", "Background Processing");
            return HttpHandler.getString(url);
        }


        @Override
        protected void onPostExecute(String result) {
            Log.d("---", "getFrom Server"+result.trim());

            if (result.trim().equals("1")) {
                Log.d("---","Data Inserted");
            } else {


            }

        }


    }

    // Inflate the view for the fragment based on layout XML
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.calculate_layout, container, false);

        makeView(view);

        return view;
    }


}
