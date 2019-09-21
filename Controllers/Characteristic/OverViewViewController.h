#import <UIKit/UIKit.h>
#import "init.h"
@interface OverViewViewController : UIViewController
@property (strong, nonatomic) NSString *strHoroTitle;
@property (strong, nonatomic) NSString *strText;
@property (strong, nonatomic) IBOutlet UITextView *txtView;
@property (weak, nonatomic) IBOutlet UIView *HeaderView;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@end
