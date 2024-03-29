#import <UIKit/UIKit.h>
#import "Extensions.h"
#import "KLCPopup.h"
@protocol DialogTableviewViewSubDelegate <NSObject>
@optional
- (void)DidSelectSub :(int)index;
- (void)dismissSubClicked;
@end
@interface DialogTableviewViewSub : UIView<UITableViewDataSource,UITableViewDelegate>
{
    NSString *str_title;
    NSString *str_dismissButtonName;
    KLCPopup* popup;
}
@property(nonatomic, weak) id<DialogTableviewViewSubDelegate> delegate;
@property(nonatomic) NSString *str_title;
@property(nonatomic) NSString *str_dismissButtonName;
@property(nonatomic,retain)IBOutlet UILabel *lbl_title;
@property(nonatomic,retain)IBOutlet EPButton *btn_dismiss;
@property(nonatomic,retain)IBOutlet UITableView *tblview_list;
@property (nonatomic) NSMutableArray *array_items;
-(id)initWithSuperView:(UIViewController *)superView;
-(id)initWithSuperView:(UIViewController *)superView title:(NSString *)title array:(NSArray *)array dismissButton:(NSString *)dismissButton;
-(void)click_popup :(NSString *)title :(NSArray *)array;
@end
