package com.khaled.nativealert;
/// duell activity is created by the duell build android plugin
import org.haxe.duell.DuellActivity;

public class ExternalInterface
{
    public static void alert(String messageString)
    {
        AlertDialog alertDialog = new AlertDialog.Builder(DuellActivity.getInstance().this).create();
        alertDialog.setTitle("Android Alert");
        alertDialog.setMessage(messageString);
        alertDialog.setButton(AlertDialog.BUTTON_NEUTRAL, "OK",
        new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });
        alertDialog.show();
    }
}
