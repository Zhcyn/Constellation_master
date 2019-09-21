#import "UIImageView+UIActivityIndicatorForSDWebImage.h"
#import "init.h"
@implementation CSAlwaysOnTopHeader
- (void)applyLayoutAttributes:(CSStickyHeaderFlowLayoutAttributes *)layoutAttributes {
    [self animationNEW:layoutAttributes];
    [self initKit];
    [self initSlider];
}
-(void)initKit
{
    self.slideshow.backgroundColor = kDefaultThemeColorTopbar;
    self.Imgheight =self.imgCoverPhoto.layer.frame.size.height;
    [self.titleLabel initWithAppPropertiesColorWhite];
    [self.titleLabel initWithAppPropertiesSize:kDefaultFontSizeExtraLarge Type:DFONTMEDIUM];
    [self.subtitleView initWithAppPropertiesTopbar];
    [self.titleLabel_2 initWithAppPropertiesColorWhite];
    [self.titleLabel_2 initWithAppPropertiesSize:kDefaultFontSizeExtraLarge32 Type:DFONTMEDIUM];
    [self.subtitleTextView initWithAppPropertiesColorWhite];
    [self.subtitleTextView initWithAppPropertiesSize:kDefaultFontSizeMedium Type:DFONTREGULAR];
}
-(void)animationNEW:(CSStickyHeaderFlowLayoutAttributes *)layoutAttributes
{
    [UIView beginAnimations:@"" context:nil];
    self.backgroundColor = kDefaultThemeColorTopbar;
    float height = (1-layoutAttributes.progressiveness);
    if (0.7 <= height) {
        self.viewHeader.alpha =  1;
    }
    else if (0.3 <= height && height < 0.5) {
        float points = 1 - (((0.5 - height)/2)*10);
        self.viewHeader.alpha =  points;
        NSLog(@"%f---=%f",points,height);
        if (points>0.3) {
            self.titleLabel_2.alpha = 0;
        }
        else
        {
            self.titleLabel_2.alpha = 1;
        }
    }
    else if (0.1 <= height && height < 0.3) {
    }
    else if(height < 0.3){
        self.titleLabel_2.alpha = 1;
        [UIView animateWithDuration:1.5 animations:^{
            self.viewHeader.alpha =  0;
        }];
        self.imgCoverPhoto.alpha = 1;
    }
    [UIView commitAnimations];
}
-(void)animationOLD:(CSStickyHeaderFlowLayoutAttributes *)layoutAttributes
{
    [UIView beginAnimations:@"" context:nil];
    self.backgroundColor = kDefaultThemeColorTopbar;
    float height = (1-layoutAttributes.progressiveness);
    if (0.7 <= height) {
    }
    else if (0.5 <= height && height < 0.7) {
        float points = 1 - (((0.7 - height)/2)*10);
        self.viewHeader.alpha =  points;
        NSLog(@"%f---=%f",points,height);
    } else {
        self.titleLabel_2.alpha = 1;
        [UIView animateWithDuration:1.5 animations:^{
            self.viewHeader.alpha =  0;
        }];
        self.imgCoverPhoto.alpha = 1;
    }
    NSLog(@"%f",height);
    if (0.2 <= height && height < 0.4) {
        [UIView animateWithDuration:0.3 animations:^{
        }];
    }
    if (height >= 0.4) {
    }
    else if(height < 0.3){
        [UIView animateWithDuration:0.3 animations:^{
        }];
    }
    [UIView commitAnimations];
}
-(void)initSlider
{
    [self.pageController setUserInteractionEnabled:NO];
    _slideshow.datasource = self;
    _slideshow.delegate = self;
    [_slideshow setTransitionDuration:.5]; 
    [_slideshow setTransitionType:KASlideShowTransitionSlideHorizontal]; 
    [_slideshow setImagesContentMode:UIViewContentModeScaleAspectFill]; 
    [_slideshow addGesture:KASlideShowGestureSwipe]; 
}
-(void)fillDataInSlideShow:(NSArray *)array
{
    _datasource = [array mutableCopy];
    [_slideshow reloadData];
    [_slideshow start];
}
#pragma mark - KASlideShow datasource
- (NSObject *)slideShow:(KASlideShow *)slideShow objectAtIndex:(NSUInteger)index
{
    return _datasource[index];
}
- (NSUInteger)slideShowImagesNumber:(KASlideShow *)slideShow
{
    self.pageController.numberOfPages = _datasource.count;
    NSLog(@"%lu",(unsigned long)slideShow.currentIndex);
    self.pageController.currentPage = slideShow.currentIndex;
    return _datasource.count;
}
#pragma mark - KASlideShow delegate
- (void) slideShowDidSwipeLeft:(KASlideShow *) slideShow
{
    NSLog(@"slideShowWillShowNext, index : %@",@(slideShow.currentIndex));
    self.pageController.currentPage = slideShow.currentIndex;
}
- (void) slideShowDidSwipeRight:(KASlideShow *) slideShow
{
    NSLog(@"slideShowWillShowNext, index : %@",@(slideShow.currentIndex));
    self.pageController.currentPage = slideShow.currentIndex;
}
- (void) slideShowWillShowNext:(KASlideShow *)slideShow
{
    NSLog(@"slideShowWillShowNext, index : %@",@(slideShow.currentIndex));
    self.pageController.currentPage = slideShow.currentIndex;
}
- (void) slideShowWillShowPrevious:(KASlideShow *)slideShow
{
    NSLog(@"slideShowWillShowPrevious, index : %@",@(slideShow.currentIndex));
    self.pageController.currentPage = slideShow.currentIndex;
}
@end
