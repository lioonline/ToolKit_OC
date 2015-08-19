


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Home";
    
    UIButton *button = [UIButton new];
    button.center = self.view.center;
    [button setTitle:@"push" forState:normal];
    [button setTitleColor:[UIColor blueColor] forState:normal];
    button.bounds = CGRectMake(0, 0, 90, 30);
    [self.view addSubview:button];
    [button addTarget:self action:@selector(pushToSecond:) forControlEvents:UIControlEventTouchUpInside];

}

-(void)pushToSecond:(id)sender
{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.title = @"SECOND";
    vc.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc animated:YES];
}



@end
