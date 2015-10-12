package com.khaled.alert;
import hxjni.JNI;
class NativeAlert
{
    /**
        Native Alert in android
    **/
    private static var alertNative = JNI.createStaticMethod("com/khaled/alertnative/ExternalInterface",
    "alert", "(Ljava/lang/String;)V");

    public static function alert(message: String = ""): Void
    {
        alertNative(message);
    }
}
