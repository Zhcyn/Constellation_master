#import "TomorrowViewController.h"
@interface TomorrowViewController ()
@end
@implementation TomorrowViewController
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
    NSString *strURL = [NSString stringWithFormat:@"http://dailyhoroscopeapi.idailybread.com/horoscope/daily?offset=1&horoscopeName=%@&currentDateString=%@",self.strHoroName,[Helpers getCurrentDataTime]];
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
