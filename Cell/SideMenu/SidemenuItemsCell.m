#import "SidemenuItemsCell.h"
@implementation SidemenuItemsCell
- (void)awakeFromNib {
    [super awakeFromNib];
    [self initKit];
}
-(void)initKit
{
    [self.lbl_name initWithAppPropertiesSize:kDefaultFontSizeLarge Type:DFONTMEDIUM];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if (selected) {
        self.contentView.backgroundColor = [UIColor clearColor];
    }
    else
    {
        self.contentView.backgroundColor = [UIColor clearColor];
    }
}
@end
