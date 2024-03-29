#import "DialogTableviewView.h"
#import "DialogTextCell.h"
#define kDefaultDialogtitle                 @"Save Info."
#define kDefaultDialogplaceholder           @"Enter title"
#define kDefaultDialogsaveButtonName        @"SAVE"
#define kDefaultDialogdismissButtonName     @"CLOSE"
#define D_DIALOG_HEIGHT                     250.0
@interface DialogTableviewView ()
@property (nonatomic,retain)UIViewController *superController;
@end
@implementation DialogTableviewView
@synthesize str_title,str_dismissButtonName;
-(id)initWithSuperView:(UIViewController *)superView
{
    self = [self initFrame];
    if (self) {
        self.superController = superView;
        self.array_items = [[NSMutableArray alloc]init];
        [self setTexts];
        [self initKit];
        [self reloadTableView];
    }
    return self;
}
-(id)initWithSuperView:(UIViewController *)superView title:(NSString *)title array:(NSArray *)array dismissButton:(NSString *)dismissButton
{
    self = [self initFrame];
    if (self) {
        self.superController = superView;
        str_title = title;
        str_dismissButtonName = dismissButton;
        self.array_items = [[NSMutableArray alloc]initWithArray:array];
        [self setTexts];
        [self initKit];
        [self reloadTableView];
    }
    return self;
}
-(id)initFrame
{
    UINib *DialogView = [UINib nibWithNibName:@"DialogTableviewView" bundle:nil];
    NSArray *nibArr = [DialogView instantiateWithOwner:nil options:nil];
    self = (DialogTableviewView *)[nibArr lastObject];
    if (self) {
        CGFloat widthx = D_SCREEN_WIDTH - 32;
        CGFloat xpos = (D_SCREEN_WIDTH-(widthx))/2;
        CGFloat ypos = (D_SCREEN_HEIGHT-(D_DIALOG_HEIGHT))/2;
        self.frame = CGRectMake(xpos,ypos ,widthx , D_DIALOG_HEIGHT);
        self.alpha = 0;
    }
    return self;
}
-(void)initKit
{
    self.tblview_list.rowHeight = UITableViewAutomaticDimension;
    self.tblview_list.estimatedRowHeight = UITableViewAutomaticDimension;
    self.tblview_list.delegate = self;
    self.tblview_list.dataSource = self;
    self.tblview_list.estimatedRowHeight = 50;
    [self.tblview_list setNeedsLayout];
    [self.tblview_list layoutIfNeeded];
    [self initWithAppDialogViewProperties];
    [self.lbl_title initWithAppPropertiesSize:kDefaultFontSizeLarge Type:DFONTLARGE];
    [self.btn_dismiss initWithAppPropertiesHeaderColor];
    [self.btn_dismiss initWithAppPropertiesDialogButtonsSize:kDefaultFontSizeLarge Type:DFONTLARGE];
}
-(void)setTexts
{
    if ([str_title isEqualToString:@""] || str_title==nil) {
        str_title = kDefaultDialogtitle;
    }
    if ([str_dismissButtonName isEqualToString:@""] || str_dismissButtonName==nil) {
        str_dismissButtonName = kDefaultDialogdismissButtonName;
    }
    [self.lbl_title setText:str_title];
    [self.btn_dismiss setTitle:str_dismissButtonName forState:UIControlStateNormal];
}
-(void)click_popup :(NSString *)title :(NSArray *)array
{
    self.alpha = 1;
    self.array_items = [[NSMutableArray alloc]initWithArray:array];
    [self.lbl_title setText:title];
    [self reloadTableView];
    KLCPopupLayout layout = KLCPopupLayoutMake(KLCPopupHorizontalLayoutCenter, KLCPopupVerticalLayoutCenter);
    popup = [KLCPopup popupWithContentView:self showType:KLCPopupShowTypeGrowIn dismissType:KLCPopupDismissTypeFadeOut maskType:KLCPopupMaskTypeDimmed dismissOnBackgroundTouch:YES dismissOnContentTouch:NO];
    [popup showWithLayout:layout];
}
-(void)dismissDialog:(BOOL)animated
{
    [popup dismiss:YES];
    if([_delegate respondsToSelector:@selector(dismissClicked)])
        [_delegate dismissClicked];
}
-(IBAction)click_dismiss:(id)sender
{
    NSLog(@"dismiss clicked");
    [self dismissDialog:YES];
}
#pragma mark - Tableview Delegate
-(void)reloadTableView
{
    [self.tblview_list reloadData];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSInteger numOfSections = 1;
    return numOfSections;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.array_items.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DialogTextCell *cell = (DialogTextCell *)[tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
    if(cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"DialogTextCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    [cell initWithDialogTextCell:[self.array_items objectAtIndex:indexPath.row]];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}
#pragma mark - UITableView Delegates
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self dismissDialog:NO];
    if([_delegate respondsToSelector:@selector(DidSelect:)])
        [_delegate DidSelect:indexPath.row];
}
@end
