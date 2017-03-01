
//
//  DSHospital.m
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 26.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSHospital.h"

@implementation DSHospital

static DSHospital *_sharedSingleton = nil;

//Потоконебезопасно - надо через диспатч
+ (DSHospital *)sharedInstance {
    if (_sharedSingleton == nil) {
        _sharedSingleton = [[DSHospital alloc] init];
    }
    
    return _sharedSingleton;
}

- (DSDoctor *)getDoctor {
    return [DSDoctor new];
}

@end
