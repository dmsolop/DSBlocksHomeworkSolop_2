//
//  main.m
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 21.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+DSExtension.h"
#import "DSDoctor.h"
#import "DSPatient.h"
#import "DSWorker.h"
#import "DSStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
  
        
        NSArray *patients = [[NSArray alloc]init];
        
        patients = [patients createArray];
        
        [patients fluEpidemic];
        
        
    
        
        
        
        
    }
    return 0;
}
