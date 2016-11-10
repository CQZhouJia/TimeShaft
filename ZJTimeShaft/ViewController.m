//
//  ViewController.m
//  ZJTimeShaft
//
//  Created by jglx on 16/11/10.
//  Copyright © 2016年 Organization. All rights reserved.
//

#import "ViewController.h"
#import "TimeModel.h"
#import "RightSlidetabletableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)UITableView * listTableView;
@property(strong,nonatomic)NSMutableArray * dataList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self initView];
    [self setData];
}
-(void)initView{
    self.listTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    self.listTableView.delegate = self;
    self.listTableView.dataSource = self;
    [self.view addSubview:self.listTableView];
}

-(void)setData
{
    self.dataList=[NSMutableArray arrayWithCapacity:0];
    NSDictionary *dic=@{@"timeStr":@"2016-07-20",@"titleStr":@"第一步",@"detailSrtr":@"标题:关于zls是不是宇宙最帅的讨论"};
    TimeModel *model=[[TimeModel alloc]initData:dic];
    [self.dataList addObject:model];
    
    NSDictionary *dic2=@{@"timeStr":@"2016-07-21",@"titleStr":@"第二步",@"detailSrtr":@"关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论"};
    TimeModel *model2=[[TimeModel alloc]initData:dic2];
    [self.dataList addObject:model2];
    
    NSDictionary *dic3=@{@"timeStr":@"2016-07-22",@"titleStr":@"第三步",@"detailSrtr":@"关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论"};
    TimeModel *model3=[[TimeModel alloc]initData:dic3];
    [self.dataList addObject:model3];
    
    NSDictionary *dic4=@{@"timeStr":@"2016-07-23",@"titleStr":@"第四步",@"detailSrtr":@"关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论"};
    TimeModel *model4=[[TimeModel alloc]initData:dic4];
    [self.dataList addObject:model4];
    
    NSDictionary *dic5=@{@"timeStr":@"2016-07-24",@"titleStr":@"第五步",@"detailSrtr":@"关于zls是不是宇宙最帅的讨论"};
    TimeModel *model5=[[TimeModel alloc]initData:dic5];
    [self.dataList addObject:model5];
    NSDictionary *dic6=@{@"timeStr":@"2016-07-25",@"titleStr":@"第六步",@"detailSrtr":@"关于zls是不是宇宙最帅的讨论是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论"};
    TimeModel *model6=[[TimeModel alloc]initData:dic6];
    [self.dataList addObject:model6];
    NSDictionary *dic7=@{@"timeStr":@"2016-07-26",@"titleStr":@"第七步",@"detailSrtr":@"关于zls是不是宇宙最帅的讨论帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论关于zls是不是宇宙最帅的讨论"};
    TimeModel *model7=[[TimeModel alloc]initData:dic7];
    [self.dataList addObject:model7];
    [self.listTableView reloadData];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataList.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * iden = @"testTime";
    RightSlidetabletableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:iden];
    if (!cell) {
        cell = [[RightSlidetabletableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:iden];
    }
    TimeModel * model = self.dataList[indexPath.row];
    cell.model = model;
    self.listTableView.separatorColor = UITableViewCellSeparatorStyleNone;
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    TimeModel * model = self.dataList[indexPath.row];
    NSDictionary * fontDic = @{NSFontAttributeName:[UIFont systemFontOfSize:12]};
    CGSize size1 = CGSizeMake(WIDTH_OF_PROCESS_LABLE, 0);
     CGSize titleLabelSize=[model.detailSrtr boundingRectWithSize:size1 options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading   attributes:fontDic context:nil].size;
    if (titleLabelSize.height < 15) {
        titleLabelSize.height = 40;
    }else{
        titleLabelSize.height = titleLabelSize.height + 30;
    }
    return titleLabelSize.height + 50;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
