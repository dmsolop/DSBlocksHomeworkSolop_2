//
//  DSHospital.h
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 26.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DSDoctor.h"

@interface DSHospital : NSObject

+ (DSHospital *) sharedInstance;
- (DSDoctor *)getDoctor;

@end
