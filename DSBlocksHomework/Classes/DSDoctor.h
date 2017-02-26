//
//  DSDoctor.h
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 22.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DSPatient;

typedef void (^Treatment)(void);

@interface DSDoctor : NSObject

- (void(^)(void)) makeTreatmentForPetient:(DSPatient*) patient;

@end
