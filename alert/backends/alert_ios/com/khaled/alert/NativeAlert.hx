package com.khaled.alert;
import cpp.Lib;
class NativeAlert
{
    /**
        Native Alert in ios
    **/
    /// link to function in the native side
    public static alertNative = Lib.load("alert_ios", "alert_ios_alert_native", 1);
    public static function alert(message: String = ""): Void
    {
        /// call the native function
        alertNative(message);
    }
}
