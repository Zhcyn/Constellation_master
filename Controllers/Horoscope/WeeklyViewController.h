#import <UIKit/UIKit.h>
#import "init.h"
@interface WeeklyViewController : UIViewController
@property (strong, nonatomic) UIViewController *superViewController;
@property (strong, nonatomic) NSString *strHoroName;
@property (strong, nonatomic) NSString *strHoroTitle;
@property (strong, nonatomic) IBOutlet UITextView *txtView;
@property (strong, nonatomic) IBOutlet UIImageView *ImgLoader;
@end
