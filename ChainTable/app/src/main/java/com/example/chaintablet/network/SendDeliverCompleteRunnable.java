package com.example.chaintablet.network;

import android.util.Log;

import com.example.chaintablet.MainActivity;

public class SendDeliverCompleteRunnable implements Runnable {

    String TAG = "===";
//    String urlstr = "http://70.12.231.236:8080/top/senddelivercomplete.top?orderID=";
    //String urlstr = "http://192.168.43.2:8080/top/senddelivercomplete.top?orderID=";
    String urlstr = "http://192.168.43.110/top/senddelivercomplete.top?orderID=";
    String result;


    public SendDeliverCompleteRunnable(String orderID) {
        urlstr += orderID;

    }

    @Override
    public void run() {
        try {
            result = HttpHandler.getString(urlstr);
            Log.d(TAG, "result : " + result);


        } catch (Exception e) {
            e.printStackTrace();
        }

        if (result.equals("1")) {
            result = "배송완료";
        }

        MainActivity.deliverStatusFromServer = result;

    }
}
