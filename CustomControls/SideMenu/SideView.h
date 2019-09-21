#import <UIKit/UIKit.h>
#import "Constant.h"
#import "CoverView.h"
#import "UIView+DView.h"
#import "Extensions.h"
#define MENU_SCROLL_isLeft YES
@interface SideView : UIView <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,retain)IBOutlet UITableView *menuTableView;
@property (nonatomic,copy) NSArray *MenuNames,*MenuImages;
-(id)initWithFrame:(CGRect)frame andSuperView:(UIViewController *)superView;
-(void)openMenu;
-(void)closeMenu;
-(void)closed;
@end
