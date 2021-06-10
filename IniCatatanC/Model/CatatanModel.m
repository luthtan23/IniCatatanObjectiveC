//
//  CatatanModel.m
//  IniCatatanC
//
//  Created by iei19100004 on 20/05/21.
//

#import "CatatanModel.h"

@implementation CatatanModel
@synthesize name;
@synthesize emailId;

-(id)initWithName:(NSString *)name emailId:(NSString *)emailId {
    self.name = name;
    self.emailId = emailId;
    return self;
}
@end
