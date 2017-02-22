//
//  DSPatient.m
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 22.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSPatient.h"

@implementation DSPatient

- (instancetype)initWithName:(NSString*) name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (BOOL) iFeelGoodMyself {
    return arc4random() % 2;
}


@end
