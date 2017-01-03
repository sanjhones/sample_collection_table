//
//  Controller.h
//  Sample
//
//  Created by murugan on 28/11/16.
//  Copyright © 2016 murugan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Controller : UITableViewCell

@property (strong, nonatomic) IBOutlet UIButton *btnType;
@property (strong, nonatomic) IBOutlet UIButton *btnLogo;
@property (strong, nonatomic) IBOutlet UIImageView *imgUser1;
@property (strong, nonatomic) IBOutlet UIImageView *imgUser2;
@property (strong, nonatomic) IBOutlet UIImageView *imgTime;
@property (strong, nonatomic) IBOutlet UIImageView *imgVenue;
@property (strong, nonatomic) IBOutlet UIButton *btnTab1;
@property (strong, nonatomic) IBOutlet UIButton *btnTab2;
@property (strong, nonatomic) IBOutlet UIButton *btnTab3;
-(void)initializeCollectionView:(NSDictionary*)list;
@property (strong, nonatomic) IBOutlet UICollectionView *userCollectionView;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
@property (strong, nonatomic) IBOutlet UIView *viewContent;
@property (strong, nonatomic) IBOutlet UILabel *lblCount;
@property (strong, nonatomic) IBOutlet UILabel *lblSubcount;
@end
