//
//  DSPatient.h
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 22.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DSPatient : NSObject

@property (nonatomic, copy) NSString* name;

- (instancetype)initWithName:(NSString*) name;

- (BOOL) iFeelGoodMyself;

@end
