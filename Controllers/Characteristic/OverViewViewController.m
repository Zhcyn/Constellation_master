#import "OverViewViewController.h"
@interface OverViewViewController ()
@end
@implementation OverViewViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initKit];
}
-(void)initKit
{
    [self.lblTitle initWithAppPropertiesSize:kDefaultFontSizeExtraLarge20 Type:DFONTMEDIUM];
    [self.lblTitle initWithAppPropertiesColorWhite];
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithData:[self.strText dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    NSMutableAttributedString *newString = [[NSMutableAttributedString alloc] initWithAttributedString:attributedString];
    NSRange range = (NSRange){0,[newString length]};
    [newString enumerateAttribute:NSFontAttributeName inRange:range options:NSAttributedStringEnumerationLongestEffectiveRangeNotRequired usingBlock:^(id value, NSRange range, BOOL *stop) {
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
        {
            UIFont *replacementFont =  [UIFont systemFontOfSize:22];
            [newString addAttribute:NSFontAttributeName value:replacementFont range:range];
            UIColor *color = [UIColor whiteColor];
            [newString addAttribute:NSForegroundColorAttributeName value:color range:range];
        }
        else
        {
            UIFont *replacementFont =  [UIFont systemFontOfSize:16];
            [newString addAttribute:NSFontAttributeName value:replacementFont range:range];
            UIColor *color = [UIColor whiteColor];
            [newString addAttribute:NSForegroundColorAttributeName value:color range:range];
        }
    }];
    self.txtView.attributedText = newString;
}
- (IBAction)Click_Back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
