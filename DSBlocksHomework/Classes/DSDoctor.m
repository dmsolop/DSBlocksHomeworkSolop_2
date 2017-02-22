//
//  DSDoctor.m
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 22.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSDoctor.h"

@implementation DSDoctor

- (void) takeTreatment {
    NSLog(@"%@ %@ take the treatment and goes home", [self class], self.name);
}

- (void) takeRest {
    NSLog(@"%@ %@ take the rest and goes to work or studies", [self class], self.name);
}

@end
