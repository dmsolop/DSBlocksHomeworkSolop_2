//
//  DSDoctor.m
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 22.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSDoctor.h"
#import "DSPatient.h"
#import "DSHospital.h"
#import "DSMedication.h"

@implementation DSDoctor

- (Treatment) makeTreatmentForPetient:(DSPatient*) patient{
    return ^{
        if (!patient.headache) {
            [patient takePainkiller:[[DSMedication new] painkillers]];
        }
        if (!patient.soreThroat) {
            [patient takeStrepsils:[[DSMedication new] strepsils]];
        }
        if (!patient.inflammation) {
            [patient takeAntibiotiks:[[DSMedication new] antibiotiks]];
        }
    };
}

@end
