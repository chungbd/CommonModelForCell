//
//  ViewController.m
//  SampleForCommonCell
//
//  Created by Chung BD on 3/9/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

#import "ViewController.h"
#import "CommonCell.h"
#import "CommonSection.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>
{
    NSArray *sections;
}
@property (strong, nonatomic) IBOutlet UITableView *tbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [_tbl registerClass:[UITableViewCell class] forCellReuseIdentifier:[CommonCell identifier]];
    
    
    CommonCell *cell1 = [CommonCell initiate:0 andValue:@"Chung"];
    CommonCell *cell2 = [CommonCell initiate:1 andValue:@"Hieu"];
    CommonCell *cell3 = [CommonCell initiate:2 andValue:@"Zui"];
    
    CommonSection *section1 = [CommonSection initiateWithIndex:0 withValue:nil andCells:@[cell1,cell2]];
    
    CommonSection *section2 = [CommonSection initiateWithIndex:1 withValue:nil andCells:@[cell1,cell2,cell3]];
    
    sections = @[section1,section2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return sections.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    CommonSection *sectionItem = sections[section];
    return sectionItem.cells.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CommonSection *sectionItem = sections[indexPath.section];
    CommonCell *cellItem = sectionItem.cells[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[CommonCell identifier]];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[CommonCell identifier]];
    }
    
    cell.textLabel.text = (NSString *)cellItem.value;
    
    return cell;
}


@end
