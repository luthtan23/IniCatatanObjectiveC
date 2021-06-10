//
//  HeroModel.h
//  IniCatatanC
//
//  Created by iei19100004 on 21/05/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HeroModel : NSObject

@property(nonatomic, retain) NSString *name;
@property(nonatomic, retain) NSString *desc;
@property(nonatomic, retain) UIImage *image;

-(id)initWithName: (NSString *)name
            image: (UIImage*) image
             desc: (NSString*) desc;

@end

NS_ASSUME_NONNULL_END
