//
//  ZCBCarMoneyInstallmentDetailController.m
//  MUKit_Example
//
//  Created by Jekity on 2017/12/27.
//  Copyright © 2017年 Jeykit. All rights reserved.
//

#import "ZCBCarMoneyInstallmentDetailController.h"
#import "ZCBCarMoneyInstallmentDetailHeaderView.h"
#import "ZCBCarMoneyInstallmentDetailCell.h"
//#import "wxx_web_ViewController.h"


static NSString * const cellReusedIdentifier = @"cell";
@interface ZCBCarMoneyInstallmentDetailController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (weak, nonatomic) IBOutlet UIButton *contactButton;
@property (strong ,nonatomic) NSMutableArray *modelArray;
@property(nonatomic, strong)ZCBCarMoneyInstallmentDetailHeaderView *headerView;

//@property (strong ,nonatomic) BSSCModel *tempModel;
@end

@implementation ZCBCarMoneyInstallmentDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self TTTitle:@"分期详情" textColor:[UIColor whiteColor] isShimmering:NO];
//    self.headerView = [ZCBCarMoneyInstallmentDetailHeaderView ViewFromXib];
//    self.headerView.AutoWidth = hScreenWidth;
//    self.tableview.delegate = self;
//    self.tableview.dataSource = self;
//    self.tableview.tableHeaderView = self.headerView;
//    self.tableview.backgroundColor = TTGrayColor(245);
//    self.tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
//    [self.tableview registerNib:[UINib nibWithNibName:@"ZCBCarMoneyInstallmentDetailCell" bundle:nil] forCellReuseIdentifier:cellReusedIdentifier];
//    self.edgesForExtendedLayout = UIRectEdgeBottom;
//    [self getData];
}
/*
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self TTNVDefaultBarWithImg:[UIImage imageWithColor:TTZCBIconRed] bindScrollView:self.tableview];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)getData{
    [BSSCModel POSTResultWithPath:@"m=Api&c=Consumer&a=myCatalogueInfo" Params:^(BSSCParms *ParmsModel) {
        ParmsModel.id = self.model.id;
    } success:^(BSSCModel *model, NSMutableArray<BSSCModel *> *modelArr, id responseObject) {
        
        self.headerView.moneyLable.text = [NSString stringWithFormat:@"￥%@",[NSString decimalStringWithNumber:model.remain]];
        self.tempModel = model;
        self.headerView.model = model;
        self.modelArray = model.stagesList;
        [self.tableview reloadData];
        
    } failure:^(NSError *error) {
        
    }];
    
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.modelArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZCBCarMoneyInstallmentDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReusedIdentifier forIndexPath:indexPath];
    cell.numberLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row+1];
    cell.model = self.modelArray[indexPath.row];
    return cell;
}

//Click_signal(button){
//    [self.navigationController WillPushViewController:@"ZCBCarMoneyInstallmentInformationController" animated:YES SetupParms:^(UIViewController *vc, NSMutableDictionary *dict) {
//        [dict addEntriesFromDictionary:@{@"model":self.tempModel}];
//    } callback:nil jumpError:nil];
//}

Click_signal(contactButton){
    wxx_web_ViewController *controller = [wxx_web_ViewController new];
    controller.url_Link = self.tempModel.contract_url;
    [self.navigationController WillPushViewController:@"wxx_web_ViewController" animated:YES SetupParms:^(UIViewController *vc, NSMutableDictionary *dict) {
        [dict addEntriesFromDictionary:@{@"url_Link":self.tempModel.contract_url ,@"backIconName":@"nav_back03"}];
    } callback:nil jumpError:nil];
}
 */
@end
