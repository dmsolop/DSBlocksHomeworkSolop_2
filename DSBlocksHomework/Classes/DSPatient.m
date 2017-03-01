//
//  DSPatient.m
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 22.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSPatient.h"
#import "DSMedication.h"

@implementation DSPatient

- (instancetype)initWithName:(NSString*) name
                    headache:(BOOL) headache
                  soreThroat:(BOOL) soreThroat
                inflammation:(BOOL) inflammation
{
    self = [super init];
    if (self) {
        _name = name;
        _headache = headache;
        _soreThroat = soreThroat;
        _inflammation = inflammation;
    }
    return self;
}

- (BOOL)iFeelGoodMyself {
//    BOOL tempValue;
    return !self.headache && !self.soreThroat && !self.inflammation;
//    
//    if (!self.headache || !self.soreThroat || !self.inflammation){
//        tempValue = FALSE;
//    }else{
//        tempValue = TRUE;
//    }
//    NSLog(@"%@ %@ feels %@ his self", [self class], self.name, tempValue ? @"GOOD" : @"BAD");
//    return tempValue;
}

- (void) takePainkiller:(Medications) painkiller {
    NSLog(@"%@ %@ takes painkiller", [self class], self.name);
    
     painkiller = ^{
        __weak typeof (self) weakSelf = self;
         typeof(weakSelf) __strong self = weakSelf;
         self.headache = YES;
    };
}

- (void) takeStrepsils:(Medications) strepsils {
    NSLog(@"%@ %@ takes strepsils", [self class], self.name);
    strepsils = ^{
        __weak typeof (self) weakSelf = self;
        typeof(weakSelf) __strong self = weakSelf;
        self.soreThroat = TRUE;
    };
}

- (void) takeAntibiotiks:(Medications) antibiotiks{
    NSLog(@"%@ %@ takes antibiotiks", [self class], self.name);
    __weak typeof (self) weakSelf = self;
    antibiotiks = ^{
        typeof(weakSelf) __strong self = weakSelf;
        self.inflammation = TRUE;
    };
}

- (void) resultOfTreatment{
        NSLog(@"Treatment was effective so %@ %@ is healthy", [self class], self.name);
   }

@end
