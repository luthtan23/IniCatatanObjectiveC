//
//  CatatanModel.h
//  IniCatatanC
//
//  Created by iei19100004 on 20/05/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CatatanModel : NSObject

@property (nonatomic, retain) NSString* name;
@property (nonatomic, retain) NSString* emailId;

-(id)initWithName:(NSString *)name
               emailId:(NSString*)emailId;

@end

NS_ASSUME_NONNULL_END
