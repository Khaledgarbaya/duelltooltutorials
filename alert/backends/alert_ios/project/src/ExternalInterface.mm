#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#include <hx/CFFI.h>
#include <Foundation/Foundation.h>


static value alert_ios_alert_native(value hxString)
{
    /// convert value to NSString
    NSString *messageString = [NSString stringWithCString:val_get_string(hxString) encoding:NSUTF8StringEncoding];

    // do alert native using UIAlertView
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Native ios Alert"
                                                  message:messageString
                                                 delegate:nil
                                        cancelButtonTitle:@"OK"
                                        otherButtonTitles:nil];
    [alert show];
    [alert release];

	return alloc_null();
}

DEFINE_PRIM(alert_ios_alert_native, 1);


extern "C" int alert_ios_register_prims() { return 0; }
