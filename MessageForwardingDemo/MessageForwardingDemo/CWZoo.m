//
//  CWZoo.m
//  MessageForwardingDemo
//
//  Created by 王杰 on 2023/5/17.
//

#import "CWZoo.h"

@interface CWZoo (){
    NSMutableSet *_mutableAnimals;
}

@end

@implementation CWZoo

- (instancetype)init {
    self = [super init];
    if (self) {
        _mutableAnimals = [NSMutableSet new];
    }
    return self;
}

- (NSSet *)animals {
    return [_mutableAnimals copy];
}

- (void)addAnimals:(NSString *)animal {
    [_mutableAnimals addObject:animal];
}

- (void)removeAnimals:(NSString *)animal {
    [_mutableAnimals removeObject:animal];
}

- (void)showAnimals {
    NSLog(@"%@",_mutableAnimals);
}

@end
