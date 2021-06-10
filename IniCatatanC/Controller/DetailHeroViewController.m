//
//  DetailHeroViewController.m
//  IniCatatanC
//
//  Created by iei19100004 on 24/05/21.
//

#import "DetailHeroViewController.h"

@interface DetailHeroViewController ()

@end

@implementation DetailHeroViewController

@synthesize hero;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.textTitleDetail.text = hero.name;
    self.decsHeroDetail.text = hero.desc;
    self.imageHeroDetail.image = hero.image;
    
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
