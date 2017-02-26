
//
//  DSHospital.m
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 26.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSHospital.h"

@implementation DSHospital

static DSHospital *sharedSingleton_ = nil;

+ (DSHospital *)sharedInstance
{
    if (sharedSingleton_ == nil)
    {
        sharedSingleton_ = [[DSHospital alloc] init];
    }
    return sharedSingleton_;
}

- (DSDoctor *)getDoctor{
    return [DSDoctor new];
}

@end
