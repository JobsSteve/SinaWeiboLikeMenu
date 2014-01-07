SinaWeiboLikeMenu

**************

### The Project base on : [itouch2's TumblrLikeMenu](https://github.com/itouch2/TumblrLikeMenu)


**How to:**

First, setup the submenus:
  
    TumblrLikeMenuItem *menuItem0 = [[TumblrLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_idea"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_idea"]
                                                                         text:@"文字"];
    TumblrLikeMenuItem *menuItem1 = [[TumblrLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_photo"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_photo"]
                                                                         text:@"相册"];
    TumblrLikeMenuItem *menuItem2 = [[TumblrLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_camera"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_camera"]
                                                                         text:@"拍照"];
    TumblrLikeMenuItem *menuItem3 = [[TumblrLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_lbs"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_lbs"]
                                                                         text:@"签到"];
    TumblrLikeMenuItem *menuItem4 = [[TumblrLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_shooting"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_shooting"]
                                                                         text:@"秒拍"];
    TumblrLikeMenuItem *menuItem5 = [[TumblrLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_more"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_more"]
                                                                         text:@"更多"];
    
    TumblrLikeMenuItem *menuItem6 = [[TumblrLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_envelope"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_envelope"]
                                                                         text:@"红包飞"];
    TumblrLikeMenuItem *menuItem7 = [[TumblrLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_friend"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_friend"]
                                                                         text:@"好友圈"];
    TumblrLikeMenuItem *menuItem8 = [[TumblrLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_voice"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_voice"]
                                                                         text:@"有声照片"];
    TumblrLikeMenuItem *menuItem9 = [[TumblrLikeMenuItem alloc] initWithImage:[UIImage imageNamed:@"tabbar_compose_delete"]
                                                             highlightedImage:[UIImage imageNamed:@"tabbar_compose_delete"]
                                                                         text:@"定时删"];

Second, create the menu:

    WeiboLikeMenu *weibo = [[WeiboLikeMenu alloc] initWithFrame:self.view.bounds WithMenuItems:subMenus];
    
    int subMenusNumber = [subMenus count];
    __weak WeiboLikeMenu *weakWeibo = weibo;
    weibo.selectBlock = ^(NSUInteger index) 
    {
        
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
    

Last, show:

    [menu show];
    
you can set item's selectBlock to Cover weiboMenu's selectBlock

    menuItem2.selectBlock = ^(TumblrLikeMenuItem *item)
    {
        [weibo disappear]; // disapper weibo menu.
        NSLog(@"拍照");
    };
  

**A Quick Peek**

