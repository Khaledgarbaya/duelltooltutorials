package com.khaled.alert;

/**
    The logic of this class is distributed through the different backends.
**/
extern class NativeAlert
{
    /**
        Does "alert" different in each platform.
    **/
    public static function alert(message: String = ""): Void;
}
