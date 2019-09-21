#import "DialogTextCell.h"
@implementation DialogTextCell
- (void)awakeFromNib {
    [super awakeFromNib];
    [self initKit];
}
-(void)initKit
{
    [self.lbl_str_text initWithAppPropertiesColorSec];
    [self.lbl_str_text initWithAppPropertiesSize:kDefaultFontSizeMedium Type:DFONTREGULAR];
    self.imgview_down.image = @"";
}
-(void)initWithDialogTextCell:(NSString *)str
{
    self.lbl_str_text.text = str;
}
@end
