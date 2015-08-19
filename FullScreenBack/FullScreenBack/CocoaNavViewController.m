/*
 
 分析 系统自带又划返回说明系统已经实现了又划返回的功能，我们需要找到系统的手势然后替换成，全屏又划返回的手势
 
 */

#import "CocoaNavViewController.h"

@interface CocoaNavViewController ()<UIGestureRecognizerDelegate>

@end

@implementation CocoaNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //    0 查找系统自带手势和相关调用的方法
    NSLog(@"%@",self.interactivePopGestureRecognizer);
    
    
//    1 获取系统自带滑动手势的target对象
    id target = self.interactivePopGestureRecognizer.delegate;
    
//    2 创建全屏滑动返回手势
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:@selector(handleNavigationTransition:)];
    
//    3 设置手势代理d
    pan.delegate = self;
    
//    4 给导航器里面的view加上手势
    [self.view addGestureRecognizer:pan];
    
//    禁用系统自带的滑动手势
    self.interactivePopGestureRecognizer.enabled = NO;
    
    
    
}



// 作用：拦截手势触发
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    // 注意：只有非根控制器才有滑动返回功能，根控制器没有。
    // 判断导航控制器是否只有一个子控制器，如果只有一个子控制器，肯定是根控制器
    if (self.childViewControllers.count == 1) {
        // 表示用户在根控制器界面，就不需要触发滑动手势，
        return NO;
    }
    return YES;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
