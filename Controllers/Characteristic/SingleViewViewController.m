#import "SingleViewViewController.h"
#import "OverViewViewController.h"
@interface SingleViewViewController ()
@end
@implementation SingleViewViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initKit];
}
-(void)initKit
{
    [self.lblTitle initWithAppPropertiesSize:kDefaultFontSizeExtraLarge20 Type:DFONTMEDIUM];
    [self.lblTitle initWithAppPropertiesColorWhite];
}
- (IBAction)Click_Back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)Click_Personality:(id)sender {
    OverViewViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"OverViewViewController"];
    vc.strHoroTitle = self.strHoroTitle;
    vc.strText = [self.array_data objectAtIndex:0];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)Click_Love:(id)sender {
    OverViewViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"OverViewViewController"];
    vc.strHoroTitle = self.strHoroTitle;
    vc.strText = [self.array_data objectAtIndex:1];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)Click_LifeStyle:(id)sender {
    OverViewViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"OverViewViewController"];
    vc.strHoroTitle = self.strHoroTitle;
    vc.strText = [self.array_data objectAtIndex:2];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)Click_Career:(id)sender {
    OverViewViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"OverViewViewController"];
    vc.strHoroTitle = self.strHoroTitle;
    vc.strText = [self.array_data objectAtIndex:3];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)Click_Health:(id)sender {
    OverViewViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"OverViewViewController"];
    vc.strHoroTitle = self.strHoroTitle;
    vc.strText = [self.array_data objectAtIndex:4];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)Click_Friendship:(id)sender {
    OverViewViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"OverViewViewController"];
    vc.strHoroTitle = self.strHoroTitle;
    vc.strText = [self.array_data objectAtIndex:5];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
