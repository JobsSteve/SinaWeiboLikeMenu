//
//  MainViewController.m
//  SinaWeiboLikeMenu
//
//  Created by hy on 14-1-8.
//
//

#import "MainViewController.h"

#import "WeiboLikeMenu.h"

@interface MainViewController ()
{
    WeiboLikeMenu *weibo;
}

@end

@implementation MainViewController

#pragma mark - System Defualt Code
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // add Background image.
    UIImageView *background = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon-960x640@2x.jpg"]];
    background.frame = self.view.bounds;
    [self.view addSubview:background];
    
    
    // add weibo btn.
    UIButton *weiboLikeBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [weiboLikeBtn setTitle:@"weiboLike..." forState:UIControlStateNormal];
    weiboLikeBtn.titleLabel.font = [UIFont boldSystemFontOfSize:18];
    [weiboLikeBtn addTarget:self action:@selector(weiboLikeBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    weiboLikeBtn.frame = CGRectMake(0, 0, 140, 20);
    weiboLikeBtn.center = CGPointMake(CGRectGetWidth(self.view.bounds) / 2, CGRectGetHeight(self.view.bounds) / 2 - 180);
    [self.view addSubview:weiboLikeBtn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - weiboLike Btn Action.
- (void) weiboLikeBtnAction:(id) sender
{
    WeiboLikeMenuItem *menuItem0 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_idea"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_idea"]
                                                                         text:@"文字"];
    WeiboLikeMenuItem *menuItem1 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_photo"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_photo"]
                                                                         text:@"相册"];
    WeiboLikeMenuItem *menuItem2 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_camera"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_camera"]
                                                                         text:@"拍照"];
    WeiboLikeMenuItem *menuItem3 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_lbs"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_lbs"]
                                                                         text:@"签到"];
    WeiboLikeMenuItem *menuItem4 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_shooting"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_shooting"]
                                                                         text:@"秒拍"];
    WeiboLikeMenuItem *menuItem5 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_more"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_more"]
                                                                         text:@"更多"];
    
    WeiboLikeMenuItem *menuItem6 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_envelope"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_envelope"]
                                                                         text:@"红包飞"];
    WeiboLikeMenuItem *menuItem7 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_friend"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_friend"]
                                                                         text:@"好友圈"];
    WeiboLikeMenuItem *menuItem8 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_voice"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_voice"]
                                                                         text:@"有声照片"];
    WeiboLikeMenuItem *menuItem9 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_delete"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_delete"]
                                                                         text:@"定时删"];
    
    /*
    WeiboLikeMenuItem *menuItem10 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_shooting"]
                                                              highlightedImage:[UIImage imageNamed:@"tabbar_compose_shooting"]
                                                                          text:@"秒拍"];
    WeiboLikeMenuItem *menuItem11 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_more"]
                                                              highlightedImage:[UIImage imageNamed:@"tabbar_compose_more"]
                                                                          text:@"更多"];
    
    WeiboLikeMenuItem *menuItem12 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_envelope"]
                                                              highlightedImage:[UIImage imageNamed:@"tabbar_compose_envelope"]
                                                                          text:@"红包飞"];
    WeiboLikeMenuItem *menuItem13 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_friend"]
                                                              highlightedImage:[UIImage imageNamed:@"tabbar_compose_friend"]
                                                                          text:@"好友圈"];
    WeiboLikeMenuItem *menuItem14 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_voice"]
                                                              highlightedImage:[UIImage imageNamed:@"tabbar_compose_voice"]
                                                                          text:@"有声照片"];
    WeiboLikeMenuItem *menuItem15 = [[WeiboLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_delete"]
                                                              highlightedImage:[UIImage imageNamed:@"tabbar_compose_delete"]
                                                                          text:@"定时删"];
    */
    
    NSArray *subMenus = @[menuItem0, menuItem1, menuItem2, menuItem3, menuItem4, menuItem5, menuItem6, menuItem7, menuItem8, menuItem9]; // , menuItem10, menuItem11, menuItem12, menuItem13, menuItem14, menuItem15
    
    
    // You can set the item selectBloc
    menuItem2.selectBlock = ^(WeiboLikeMenuItem *item)
    {
        [weibo disappear]; // disapper weibo menu.
        NSLog(@"拍照");
    };
    
    
    
    weibo = [[WeiboLikeMenu alloc] initWithFrame:self.view.bounds WithMenuItems:subMenus];
    
    int subMenusNumber = [subMenus count];
    __weak WeiboLikeMenu *weakWeibo = weibo;
    weibo.selectBlock = ^(NSUInteger index) {
        
        if (subMenusNumber > 6) // if subMeuitems count beyond 6, show more.
        {
            if (5 == index) // the show more item
            {
                [weakWeibo showMore];
                NSLog(@"Show More");
                return ;
            }
        }
        
        NSLog(@"item %d index selected", index);
        
    };
    
    [weibo show];
    
}


@end
