#import <UIKit/UIKit.h>
#import "init.h"
@interface CharacteristicsViewController : UIViewController<CoverViewDelegate>
{
    SideView *sideView;
    CoverView *bgCoverView;
}
@property (strong, nonatomic) UIViewController *superViewController;
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) IBOutlet UIView *HeaderView;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
@property (strong, nonatomic) NSMutableArray *array_data;
@property (strong, nonatomic) NSMutableArray *array_name;
@property (strong, nonatomic) NSMutableArray *array_title;
@end
