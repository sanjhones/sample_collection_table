//
//  Common.m
//  Sample
//
//  Created by murugan on 28/11/16.
//  Copyright © 2016 murugan. All rights reserved.
//

#import "Common.h"

@implementation Common


+(UIStoryboard *)storyboard
{
    UIStoryboard *storyboard =
    [UIStoryboard storyboardWithName:@"Main"
                              bundle:[NSBundle mainBundle]];
    return storyboard;
}
//+(void)Change_tab_Color : (UIButton *)btnTab : (int)ids
//{
//    switch (ids) {
//        case 1:
//            btnTab.backgroundColor=[UIColor redColor];
//            break;
//        case 2:
//            btnTab.backgroundColor=[UIColor redColor];
//            break;
//        case 3:
//            btnTab.backgroundColor=[UIColor redColor];
//            break;
//            
//        default:
//            break;
//    }
//}
+(void)Change_border_cornerRadius : (UIButton *)btn
{
    btn.layer.cornerRadius=12;
    btn.layer.borderColor=[UIColor lightGrayColor].CGColor;
    btn.layer.borderWidth=1;
}
@end
