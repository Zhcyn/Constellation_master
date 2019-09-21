#import "SidemenuProfileCell.h"
#import "UILabel+DLabel.h"
#import "UIImageView+DImageView.h"
#import "UIView+DView.h"
@implementation SidemenuProfileCell
- (void)awakeFromNib {
    [super awakeFromNib];
    [self initKit];
}
-(void)initKit
{
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
