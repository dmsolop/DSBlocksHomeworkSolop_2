//
//  NSArray+DSExtension.m
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 22.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "NSArray+DSExtension.h"
#import "DSPropertyManager.h"
#import "DSStudent.h"
#import "DSWorker.h"
#import "DSPatient.h"
#import "DSDoctor.h"

@implementation NSArray (DSExtension)

- (NSArray *)makeArray {
    DSPropertyManager *manager = [DSPropertyManager new];
    NSMutableArray* arrayTemp = [NSMutableArray array];
    
    for (int i = 0; i < 3; i++) {
        [arrayTemp addObject:[[DSPatient alloc] initWithName:manager.name]];
        [arrayTemp addObject:[[DSWorker alloc] initWithName:manager.name]];
        [arrayTemp addObject:[[DSStudent alloc] initWithName:manager.name]];
    }
    return arrayTemp;
}

- (void) printArray:(NSArray *)array {
    
    for (id object in array) {
        if ([object isKindOfClass:[DSPatient class]]){
            if ([object iFeelGoodMyself]) {
                [DSDoctor new]
            }
        }
    }
}


@end
