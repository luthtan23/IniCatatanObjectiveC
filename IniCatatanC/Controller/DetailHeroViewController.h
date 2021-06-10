//
//  DetailHeroViewController.h
//  IniCatatanC
//
//  Created by iei19100004 on 24/05/21.
//

#import <UIKit/UIKit.h>
#import "HeroModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailHeroViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageHeroDetail;
@property (weak, nonatomic) IBOutlet UILabel *textTitleDetail;
@property (weak, nonatomic) IBOutlet UILabel *decsHeroDetail;

@property (nonatomic, assign) HeroModel *hero;

@end

NS_ASSUME_NONNULL_END
