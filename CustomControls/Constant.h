#import "Globals.h"
#import "Helpers.h"
#import "ProgressHUD.h"
#import "UIImageView+WebCache.h"
#import "LocalisedStrings.h"
typedef enum {
    DFONTLARGE,
    DFONTMEDIUM,
    DFONTREGULAR,
    DFONTLIGHT
} DFontType;
#ifndef Constants_h
#define Constants_h
#define kdeviceToken                            @"9ad5d7c90ed83f8100478d038aa0ad57c2d413d93cb0f96ebc5e0594424a5ed0"
#define kGoogleApiKey                            @"AIzaSyBvXLWi8CKv2KJ0gI3Qrx7L3dHHKBUH948"
#define YOUR_APP_STORE_ID 510351138 
#define kdeviceType                             @"iphone"
#define kMainPlaceholderImage                   [UIImage imageNamed:@"ic_userPlace"]
#define kDefaultErrorMsg                        @"There is no data available."
#define kDefaultErrorCode                       12345
#define kDefaultNotifierChangeFilter            @"changeFilter"
#define kDefaultNotifierclickMap                @"clickMap"
#define kDateTimeFormat                         @"yyyy-MM-dd HH:mm:ss"
#define kDateFormat                             @"yyyy-MM-dd"
#define kDateFormatForAPP                       @"dd/MM/yyyy"
#define kTimeFormat                             @"HH:mm:ss"
#define kTimeFormatForAPP                       @"HH:mm"
#define kDefaultFontRobotoRegular               @"Roboto-Regular"
#define kDefaultFontRobotoMedium                @"Roboto-Medium"
#define kDefaultFontRobotoBold                  @"Roboto-Bold"
#define kDefaultFontRobotoLight                 @"Roboto-Light"
#define kDefaultFontItalicTypeWriter            @"ITALIC TYPEWRITER"
NSString *GAdBannerKey;
NSString *GAdInterstitialKey;
#define kDefaultFontSizeVerySmall8              8.0
#define kDefaultFontSizeVerySmall               10.0
#define kDefaultFontSizeSmall                   12.0
#define kDefaultFontSizeMedium                  14.0
#define kDefaultFontSizeLarge                   16.0
#define kDefaultFontSizeExtraLarge              18.0
#define kDefaultFontSizeExtraLarge20            20.0
#define kDefaultFontSizeExtraLarge22            22.0
#define kDefaultFontSizeExtraLarge25            25.0
#define kDefaultFontSizeExtraLarge32            32.0
#define kDefaultFontSizeExtraLarge36            36.0
#define kDefaultFontSizeExtraLarge150           150.0
#define kDefaultIPHONE5                         2.0
#define kDefaultOTHER                           3.0
#define kDefaultThemeColorHeader                UIColorFromRGB(0x020532)
#define kDefaultThemeColorTopbar                UIColorFromRGB(0x020532)
#define kDefaultThemeColorTopbarLight           UIColorFromRGB(0x7CCBBA)
#define kDefaultThemeColorAccent                UIColorFromRGB(0x607D8B)
#define kDefaultThemeColorButton                kDefaultThemeColorTopbar
#define kDefaultThemeColorButtonClick           kDefaultThemeColorHeader
#define kDefaultTextColorPrimary                UIColorFromRGB(0x212121)
#define kDefaultTextColorSecondary              UIColorFromRGB(0x737373)
#define kDefaultTextColorTertiary               UIColorFromRGB(0x009688)
#define kDefaultTextColorDivider                UIColorFromRGB(0xBDBDBD)
#define kDefaultTextColorPrimaryLight           UIColorFromRGB(0xCFD8DC)
#define kDefaultTextColorPrimaryDark            UIColorFromRGB(0x455A64)
#define kDefaultTextColorRedFavourite           UIColorFromRGB(0xC61A24)
#define kDefaultGreenBackgroundColor            UIColorFromRGB(0x92d150)
#define kDefaultBackgroundColor                 UIColorFromRGB(0xfdfdfd)
#define kDefaultDarkBackgroundColor             UIColorFromRGB(0x002245)
#define kDefaultTextfieldWhitePlaceholder       [UIColor whiteColor]
#define kDefaultTextfieldPlaceholder            [UIColor lightGrayColor]
#define kDefaultTextfieldTintTextColor          kDefaultLightBackgroundColor
#define kDefaultLabelTextColorWhite             kDefaultBackgroundColor
#define kDefaultShadowOffset		CGSizeMake(0.0, UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 4.0 : 2.0)
#define kDefaultShadowBlur			(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 10.0 : 5.0)
#define kDefaultInnerShadowOffset	CGSizeMake(0.0, UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 2.0 : 1.0)
#define kDefaultInnerShadowBlur       (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 4.0 : 2.0)
#define kDefaultStrokeColor           [UIColor blackColor]
#define kDefaultStrokeSize			(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 0.8 : 0.5)
#define kDefaultGradientStartColor	[UIColor colorWithRed:255.0 / 255.0 green:193.0 / 255.0 blue:127.0 / 255.0 alpha:1.0]
#define kDefaultGradientEndColor	[UIColor colorWithRed:255.0 / 255.0 green:163.0 / 255.0 blue:64.0 / 255.0 alpha:1.0]
#define Tag_SubscribePushNotification @"/topics/Porto_Cesareo"
#define Tag_NotificationToken   @"NotificationToken"
#define kDefault_NotificationToken ([[NSUserDefaults standardUserDefaults] objectForKey:Tag_NotificationToken]) ? ([[NSUserDefaults standardUserDefaults] objectForKey:Tag_NotificationToken]) : @"No Token"
#endif 
