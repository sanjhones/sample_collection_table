//
//  Controller.m
//  Sample
//
//  Created by murugan on 28/11/16.
//  Copyright © 2016 murugan. All rights reserved.
//

#import "Controller.h"

@implementation Controller
NSMutableArray *listofUser,*titles;
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)initializeCollectionView:(NSDictionary*)list {
         listofUser=[list valueForKey:@"images"];
         titles=[list valueForKey:@"title"];
        [_userCollectionView reloadData];
    
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
        return [listofUser count];
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionCell *cell;
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionCell" forIndexPath:indexPath];
    cell.imgUser.image=[UIImage imageNamed:[listofUser objectAtIndex:indexPath.row]];
    if (indexPath.row==0) {
        _lblTitle.text=[titles objectAtIndex:0];
    }
        return  cell;
    return  cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
  _lblTitle.text=[titles objectAtIndex:indexPath.row];
   // NSLog(@"%@",[titles objectAtIndex:indexPath.row]);
}
@end
