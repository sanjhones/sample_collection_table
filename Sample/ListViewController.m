//
//  ListViewController.m
//  Sample
//
//  Created by murugan on 28/11/16.
//  Copyright © 2016 murugan. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController
NSMutableArray *listDatas,*imgList,*title;
NSInteger countss;
NSDictionary *basic,*menu,*horizontal_collection;
- (void)viewDidLoad {
    [super viewDidLoad];
    _Controller_TableView.tableFooterView=[[UIView alloc]initWithFrame:CGRectZero];
    imgList=[[NSMutableArray alloc]initWithObjects:@"img1@1x.png",@"img22x.png",@"img32x.png",@"img42x.png",@"img52x.png",@"img82x",@"img92x.png", nil];
    title=[[NSMutableArray alloc]initWithObjects:@"sam",@"John",@"Gilles",@"thomas",@"Guru",@"Mary",@"Jancy", nil];
    horizontal_collection=@{@"images":imgList,@"title":title};
    
    
    self.navigationItem.title=@"Heading Display";
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"Calendar"] style:UIBarButtonItemStyleBordered target:nil action:nil];
    self.navigationItem.rightBarButtonItem = btn;
    countss=25;
    [_Controller_TableView reloadData];
    // Do any additional setup after loading the view.
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Controller *cell;
    if (indexPath.row==0) {
       cell = [_Controller_TableView dequeueReusableCellWithIdentifier:@"Controller" forIndexPath:indexPath];
        cell.btnType.layer.cornerRadius=10;
    }
    else if (indexPath.row==1) {
        cell = [_Controller_TableView dequeueReusableCellWithIdentifier:@"Controller_Menu" forIndexPath:indexPath];
        [Common Change_border_cornerRadius:cell.btnTab1];
        [Common Change_border_cornerRadius:cell.btnTab2];
        [Common Change_border_cornerRadius:cell.btnTab3];
    }
    else if (indexPath.row==2) {
        cell = [_Controller_TableView dequeueReusableCellWithIdentifier:@"Controller_Horiz" forIndexPath:indexPath];
        [cell initializeCollectionView:horizontal_collection];
    }
    else if (indexPath.row==3) {
        cell = [_Controller_TableView dequeueReusableCellWithIdentifier:@"Controller_headTitle" forIndexPath:indexPath];
        [cell initializeCollectionView:horizontal_collection];
    }
    else {
        cell = [_Controller_TableView dequeueReusableCellWithIdentifier:@"Controller_expand" forIndexPath:indexPath];
        cell.viewContent.layer.borderWidth=1;
        cell.viewContent.layer.borderColor=[UIColor lightGrayColor].CGColor;
        cell.viewContent.layer.cornerRadius=5;
        cell.lblCount.text=[NSString stringWithFormat:@"%ld",((long)indexPath.row)-3];
        cell.lblSubcount.text=[NSString stringWithFormat:@"%ld",((long)indexPath.row)];
        cell.lblCount.layer.borderWidth=1;
        cell.lblCount.layer.borderColor=[UIColor colorWithRed:(54/255.0) green:(122/255.0) blue:(242/255.0) alpha:1.0].CGColor;
        cell.lblCount.layer.cornerRadius=cell.lblCount.frame.size.width/2;
        cell.lblCount.layer.masksToBounds=YES;
    }
    
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return countss;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==0)
        return 162;
    if (indexPath.row==1)
        return 58;
    if (indexPath.row==2)
        return 181;
    if (indexPath.row==3)
        return 50;
    if (indexPath.row==4)
        return 134;
    else
        return 134;
    return 0;
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.navigationController.navigationBar.topItem.title=@"";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
