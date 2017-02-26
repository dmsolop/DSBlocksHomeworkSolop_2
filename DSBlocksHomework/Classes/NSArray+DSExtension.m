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
#import "DSHospital.h"

@implementation NSArray (DSExtension)

- (NSArray *)createArray {
    DSPropertyManager *manager = [DSPropertyManager new];
    NSMutableArray* arrayTemp = [NSMutableArray array];
    for (int i = 0; i < 5; i++) {
        [arrayTemp addObject:[[DSWorker alloc] initWithName:manager.name
                                                   headache:manager.headache
                                                 soreThroat:manager.soreThroat
                                               inflammation:manager.inflammation]];
        [arrayTemp addObject:[[DSStudent alloc] initWithName:manager.name
                                                    headache:manager.headache
                                                  soreThroat:manager.soreThroat
                                                inflammation:manager.inflammation]];
    }
    return arrayTemp;
}

- (void) fluEpidemic {
    for (DSPatient* patient in self) {
        if (![patient iFeelGoodMyself]){
            patient.treatmentBlock = [[[DSHospital sharedInstance] getDoctor] makeTreatmentForPetient:patient];
            patient.treatmentBlock ();
            [patient resultOfTreatment];
        }
    }
}


@end
