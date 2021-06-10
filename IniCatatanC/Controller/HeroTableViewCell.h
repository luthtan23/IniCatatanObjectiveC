//
//  HeroTableViewCell.h
//  IniCatatanC
//
//  Created by iei19100004 on 24/05/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HeroTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageTable;
@property (weak, nonatomic) IBOutlet UILabel *titleHero;
@property (weak, nonatomic) IBOutlet UILabel *descHero;

@end

NS_ASSUME_NONNULL_END
