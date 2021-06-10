//
//  TableViewController.m
//  IniCatatanC
//
//  Created by iei19100004 on 19/05/21.
//

#import "TableViewController.h"
#import "CatatanModel.h"

@interface TableViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation TableViewController

@synthesize table;

NSArray *catatanModelArray;

NSString *cellId = @"cellId";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];

    [self.tableView initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    catatanModelArray = [[NSMutableArray alloc] init];
    [self setModel];
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"CUAKSS" style:UIBarButtonItemStylePlain target:self action:@selector(backButtonClicked:)];
    
    self.navigationItem.leftBarButtonItem = backButton;
    
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    CatatanModel *model = [[CatatanModel alloc] init];
    model = catatanModelArray[indexPath.row];
    cell.textLabel.text = model.name;
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return catatanModelArray.count;
}

-(void) backButtonClicked: (UIBarButtonItem *) sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) setModel {
    
    catatanModelArray = @[
        [[CatatanModel alloc] initWithName:@"Ahmad Dahlan" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Ahmad Yani" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Sutomo" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Gatot Soebroto" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Ki Hadjar Dewantara" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Mohamad Hatta" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Soedirman" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Soekarno" emailId:@"TEST"],
        [[CatatanModel alloc] initWithName:@"Soepomo" emailId:@"TEST"]
    ];

}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Heroes";
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
