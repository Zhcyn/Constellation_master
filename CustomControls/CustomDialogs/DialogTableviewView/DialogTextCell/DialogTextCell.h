#import <UIKit/UIKit.h>
#import "init.h"
@interface DialogTextCell : UITableViewCell
@property(nonatomic,retain)IBOutlet UIView *BackView;
@property(nonatomic,retain)IBOutlet UILabel *lbl_str_text;
@property(nonatomic,retain)IBOutlet UIImageView *imgview_down;
-(void)initWithDialogTextCell:(NSString *)str;
@end
