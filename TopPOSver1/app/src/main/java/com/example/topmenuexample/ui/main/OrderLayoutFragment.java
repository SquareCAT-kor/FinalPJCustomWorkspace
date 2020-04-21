package com.example.topmenuexample.ui.main;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.topmenuexample.MainActivity;
import com.example.topmenuexample.OrderDetail;
import com.example.topmenuexample.R;
import com.example.topmenuexample.Order;

import java.util.ArrayList;
/*
* 선택된 메뉴를 담고 결제시 주문내역을 보여주는 OrderFragment
* */
public class OrderLayoutFragment extends Fragment {

    private String title;
    private int page;
    RecyclerView list_recyclerview;
    private ArrayList<OrderDetail> odlist = new ArrayList<OrderDetail>();
    private Order order = new Order();
    private OrderListAdapter OrderListAdapter;
    TextView txt_orderCost, txt_orderCount, txt_orderDate, txt_orderNo;


    @Override
    public void setUserVisibleHint(boolean isVisibleToUser) {

        super.setUserVisibleHint(isVisibleToUser);
        getFragmentManager().beginTransaction().detach(this).attach(this).commit();

        Log.d("---", "setUserVisibleHint");
        if (isVisibleToUser) {

            odlist = ((MainActivity) getActivity()).tempOdlist;
            order = ((MainActivity) getActivity()).tempOrder;
            Log.d("---", "Get from menu" + "odlist: " + odlist + "Order" + order);

            makeList(this.getView());

        } else {
            Log.d("---", "NotVisibleToUser");

        }

    }


    // newInstance constructor for creating fragment with arguments
    public static OrderLayoutFragment newInstance(int page, String title) {

        Log.d("---", "newInstance");

        OrderLayoutFragment fragment = new OrderLayoutFragment();
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
        Log.d("---", "onCreate");

        if (savedInstanceState != null) {
            Log.d("---", savedInstanceState.getString("bundle"));
            page = getArguments().getInt("someInt", 0);
            title = getArguments().getString("someTitle");
        }
        super.onCreate(savedInstanceState);

    }


    public void makeList(View view) {
        Log.d("---", "makeList");


        txt_orderNo = view.findViewById(R.id.txt_orderNo);
        txt_orderDate = view.findViewById(R.id.txt_orderDate);
        txt_orderCost = view.findViewById(R.id.txt_orderCost);
        txt_orderCount = view.findViewById(R.id.txt_orderCount);

        list_recyclerview = view.findViewById(R.id.list_recyclerview);
        LinearLayoutManager orderLinearLayoutManager = new LinearLayoutManager(getContext());
        list_recyclerview.setLayoutManager(orderLinearLayoutManager);
        OrderListAdapter = new OrderListAdapter(odlist);

        list_recyclerview.setAdapter(OrderListAdapter);

        txt_orderNo.setText(order.getOrderNo() + "");
        txt_orderDate.setText(order.getOrderDate() + "");
        txt_orderCount.setText(order.getTotalCount() + "");
        txt_orderCost.setText(order.getTotalCost() + "");

    }

    // Inflate the view for the fragment based on layout XML
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        Log.d("---", "onCreateView");

        View view = inflater.inflate(R.layout.order_layout, container, false);

        makeList(view);

        return view;
    }


}
