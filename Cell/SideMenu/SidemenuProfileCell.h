#import <UIKit/UIKit.h>
@interface SidemenuProfileCell : UITableViewCell
@property(nonatomic,retain)IBOutlet UILabel *lbl_name,*lbl_email;
@property(nonatomic,retain)IBOutlet UIImageView *imgView_profile;
@property (strong, nonatomic) IBOutlet UIView *BackView;
@property (strong, nonatomic) IBOutlet UIButton *btnProfile;
@end
