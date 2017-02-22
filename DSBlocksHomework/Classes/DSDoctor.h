//
//  DSDoctor.h
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 22.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DSPatient;

typedef BOOL (^DoctorTreatment)(DSPatient* patient);

@interface DSDoctor : NSObject

@property (nonatomic, copy) DoctorTreatment treatmentBlock;

- (void) makeTreatmentForPetient:;
- (void) takeRest;

@end
