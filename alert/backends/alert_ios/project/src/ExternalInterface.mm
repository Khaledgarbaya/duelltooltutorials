#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#include <hx/CFFI.h>
#include <Foundation/Foundation.h>


static value alert_native(value hxString)
{
    NSString *string = [NSString stringWithCString:val_get_string(hxString) encoding:NSUTF8StringEncoding];
    // do alert native
	return alloc_null();
}

DEFINE_PRIM(alert_native, 1);


extern "C" int alert_ios_register_prims() { return 0; }
