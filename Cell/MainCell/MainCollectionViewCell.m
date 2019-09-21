#import "MainCollectionViewCell.h"
@implementation MainCollectionViewCell
- (void)awakeFromNib {
    [super awakeFromNib];
    [self initKit];
}
-(void)initKit
{
    [self.lblTitle initWithAppPropertiesSize:kDefaultFontSizeLarge Type:DFONTMEDIUM];
    [self.lblTitle initWithAppPropertiesColorWhite];
}
@end
