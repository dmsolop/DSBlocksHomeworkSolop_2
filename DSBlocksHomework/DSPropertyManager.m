//
//  DSPropertyManager.m
//  DSBlocksHomework
//
//  Created by Дмитрий Солоп on 22.02.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSPropertyManager.h"

@implementation DSPropertyManager

@dynamic name;


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.arrayBaseOfName = [NSArray arrayWithObjects:
                                     @"Михаил", @"Николай", @"Дмитрий", @"Роман", @"Василий",
                                     @"Алексей", @"Максим", @"Евгений", @"Владимир", @"Андрей",@"Олег", @"Елисей",
                                     @"Александр", @"Илья", @"Тимофей", @"Матвей", @"Семен", @"Денис", @"Данила",
                                     @"Григорий", @"Руслан", @"Тимур", @"Юрий", @"Георгий", @"Давид",@"Ольга", @"Елена",
                                     @"Алена", @"Татьяна", @"Авдотья", @"Вераника", @"Галина", @"Ксения", @"Алла",
                                     @"Виола", @"Влада", @"Богдана", @"Валерия", @"Варвара", @"Дана", @"Джамиля",
                                     @"Жасмин", @"Диана", @"Екатерина", @"Жозефина", @"Илона", @"Ирма", @"Кристина",
                                     @"Клара", @"Лилия", nil];
          }
    return self;
}

- (NSString *)name {
    return [self.arrayBaseOfName objectAtIndex:arc4random() % [self.arrayBaseOfName count]];
}

@end
