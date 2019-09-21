#import "TextViewCollectionViewCell.h"
@implementation TextViewCollectionViewCell
- (void)awakeFromNib {
    [super awakeFromNib];
    [self initKit];
}
-(void)initKit
{
    self.BackView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.BackView.layer.borderWidth = 1.5;
    self.BackView.layer.cornerRadius = 15;
}
@end
