//
//  HeroModel.m
//  IniCatatanC
//
//  Created by iei19100004 on 21/05/21.
//

#import "HeroModel.h"

@implementation HeroModel
@synthesize name;
@synthesize desc;
@synthesize image;

-(id) initWithName:(NSString *)name image:(UIImage *)image desc:(NSString *)desc{
    self.name = name;
    self.desc = desc;
    self.image = image;
    return self;
}

@end
