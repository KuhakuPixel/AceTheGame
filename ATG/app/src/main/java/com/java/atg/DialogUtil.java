package com.java.atg;

import android.app.AlertDialog;
import android.content.Context;

public class DialogUtil {
    public static void ShowError(Context context, String msg){
        new AlertDialog.Builder(context)
                .setTitle("Error")
                .setMessage(msg)
                .setPositiveButton(android.R.string.ok, null)
                .setIcon(R.drawable.ic_error)
                .show();
    }
    public static void ShowInfo(Context context, String msg){
        new AlertDialog.Builder(context)
                .setTitle("Info")
                .setMessage(msg)
                .setPositiveButton(android.R.string.ok, null)
                .setIcon(R.drawable.ic_info)
                .show();
    }
}
