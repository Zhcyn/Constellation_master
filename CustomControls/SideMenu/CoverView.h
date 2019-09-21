#import <UIKit/UIKit.h>
@protocol CoverViewDelegate <NSObject>
@optional
-(void)respondToTapGestureRecognizer;
@end
@interface CoverView : UIView
@property (nonatomic,assign)id <CoverViewDelegate> delegate;
@end
