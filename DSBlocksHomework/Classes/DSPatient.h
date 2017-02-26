//
//  DSPatient.h
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 22.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DSDoctor.h"
#import "DSMedication.h"

@interface DSPatient : NSObject

@property (nonatomic, copy) Treatment treatmentBlock;
@property (nonatomic, copy) NSString* name;
@property (nonatomic, assign) BOOL headache;
@property (nonatomic, assign) BOOL soreThroat;
@property (nonatomic, assign) BOOL inflammation;


- (instancetype)initWithName:(NSString*) name
                    headache:(BOOL) headache
                  soreThroat:(BOOL) soreThroat
                inflammation:(BOOL) inflammation;

- (BOOL) iFeelGoodMyself;
- (void) takePainkiller:(Medications) painkiller;
- (void) takeStrepsils:(Medications) strepsils;
- (void) takeAntibiotiks:(Medications) antibiotiks;
- (void) resultOfTreatment;


@end
