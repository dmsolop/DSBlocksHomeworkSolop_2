//
//  DSMedication.h
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 26.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^Medications)(void);

@interface DSMedication : NSObject

@property (nonatomic, copy) Medications painkillers;
@property (nonatomic, copy) Medications strepsils;
@property (nonatomic, copy) Medications antibiotiks;

@end
