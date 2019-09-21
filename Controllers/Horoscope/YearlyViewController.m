#import "YearlyViewController.h"
@interface YearlyViewController ()
@end
@implementation YearlyViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self getHoroscropeData];
    [self initKit];
}
-(void)initKit
{
    self.ImgLoader.image = [UIImage sd_animatedGIFNamed:@"loader"];
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
    {
        [self.txtView initWithAppPropertiesSize:kDefaultFontSizeExtraLarge20 Type:DFONTMEDIUM];
    }
    else
    {
        [self.txtView initWithAppPropertiesSize:kDefaultFontSizeExtraLarge Type:DFONTMEDIUM];
    }
}
-(void)getHoroscropeData
{
    NSString *strURL = [NSString stringWithFormat:@"http://dailyhoroscopeapi.idailybread.com/horoscope/yearly?offset=0&horoscopeName=%@&currentDateString=%@",self.strHoroName,[Helpers getCurrentDataTime]];
    [WebService getWithUrlString:strURL parameters:nil progress:nil success:^(NSDictionary *response) {
        NSLog(@"%@",response);
        self.txtView.text = [[response valueForKey:@"data"]valueForKey:@"content"];
    } failure:^(NSError *error) {
        NSLog(@"%@",error.localizedDescription);
    }];
}
@end
