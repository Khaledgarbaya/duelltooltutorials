package com.khaled.alert;
import js.Browser;
class NativeAlert
{
    /**
        Native Alert in html5
    **/
    public static function alert(message: String = ""): Void
    {
        // alert(message) in javascript
        Browser.alert(message);
    }
}
