#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "ZDBaseKit.h"
#import "ZDFoundation.h"
#import "ZDUIKit.h"

FOUNDATION_EXPORT double ZDBaseKitVersionNumber;
FOUNDATION_EXPORT const unsigned char ZDBaseKitVersionString[];

