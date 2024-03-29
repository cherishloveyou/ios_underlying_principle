//
//  MJPerson.m
//  Interview01-KVC
//
//  Created by MJ Lee on 2018/5/3.
//  Copyright © 2018年 MJ Lee. All rights reserved.
//

#import "MJPerson.h"

@implementation MJPerson

//getter方法按照- (int)getAge  - (int)age  - (int)isAge  - (int)_age的顺序查找实现
//- (int)getAge
//{
//    return 11;
//}

//- (int)age
//{
//    return 12;
//}

//- (int)isAge
//{
//    return 13;
//}

- (int)_age
{
    return 14;
}

//- (void)setAge:(int)age
//{
//    NSLog(@"setAge: - %d", age);
//}

//- (void)_setAge:(int)age
//{
//    NSLog(@"_setAge: - %d", age);
//}

- (void)willChangeValueForKey:(NSString *)key
{
    [super willChangeValueForKey:key];
    NSLog(@"willChangeValueForKey - %@", key);
}

- (void)didChangeValueForKey:(NSString *)key
{
    NSLog(@"didChangeValueForKey - begin - %@", key);
    [super didChangeValueForKey:key];
    NSLog(@"didChangeValueForKey - end - %@", key);
}

 //是否接受成员变量作为直接返回对象，默认的返回值就是YES
+ (BOOL)accessInstanceVariablesDirectly
{
    return YES;
}

@end
