#import "WeeklyViewController.h"
@interface WeeklyViewController ()
@end
@implementation WeeklyViewController
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
    NSString *strURL = [NSString stringWithFormat:@"http://dailyhoroscopeapi.idailybread.com/horoscope/weekly?offset=0&horoscopeName=%@&currentDateString=%@",self.strHoroName,[Helpers getCurrentDataTime]];
    self.ImgLoader.hidden = NO;
    [WebService getWithUrlString:strURL parameters:nil progress:nil success:^(NSDictionary *response) {
        NSLog(@"%@",response);
        self.ImgLoader.hidden = YES;
        self.txtView.text = [[response valueForKey:@"data"]valueForKey:@"content"];
    } failure:^(NSError *error) {
        self.ImgLoader.hidden = YES;
        NSLog(@"%@",error.localizedDescription);
    }];
}
@end
