#import "menuVC.h"
#import "TWGSideViewController.h"

@interface menuVC () <TWGSideViewControllerDelegate>

@property (strong, nonatomic) TWGSideViewController *menu;

@end

@implementation menuVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIViewController *randoVC = [[UIViewController alloc] init];
    randoVC.view.bounds = self.view.bounds;
    randoVC.view.backgroundColor = [UIColor redColor];
    
    [self presentViewController:randoVC fromSide:TWGSideViewStyleLeft];
}

- (CGFloat)targetDrawerWidthStyle:(TWGSideViewStyle)style
{
    
    switch (style) {
        case TWGSideViewStyleLeft:
            return 320.0f;
            break;
            
        case TWGSideViewStyleRight:
            return 320.0f;
            break;
            
        default:
            return 320.0f;
            break;
    }
}

- (void)presentViewController:(UIViewController *)viewController fromSide:(TWGSideViewStyle)side
{
    TWGSideViewController *sideViewController =
    [[TWGSideViewController alloc] initWithViewController:viewController
                                                    style:side
                                                openWidth:[self targetDrawerWidthStyle:side]];
    sideViewController.delegate = self;
    sideViewController.view.frame = self.view.bounds;
    
    [self addChildViewController:sideViewController];
    [self.view addSubview:sideViewController.view];
    [sideViewController didMoveToParentViewController:self];
    [sideViewController showViewControllerAnimated:YES];
    
    self.menu = sideViewController;
}

- (void)didOpenSideView:(TWGSideViewController *)sideViewController
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)didCloseSideView:(TWGSideViewController *)sideViewController byUserAction:(BOOL) flag
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

@end
