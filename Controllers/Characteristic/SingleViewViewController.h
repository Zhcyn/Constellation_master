#import <UIKit/UIKit.h>
#import "init.h"
@interface SingleViewViewController : UIViewController
@property (strong, nonatomic) NSMutableArray *array_data;
@property (strong, nonatomic) NSString *strHoroTitle;
@property (weak, nonatomic) IBOutlet UIView *HeaderView;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@end
