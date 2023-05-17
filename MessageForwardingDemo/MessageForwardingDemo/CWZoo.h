//
//  CWZoo.h
//  MessageForwardingDemo
//
//  Created by 王杰 on 2023/5/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CWZoo : NSObject

@property (nonatomic,readonly) NSSet *animals;

- (void)addAnimals:(NSString *)animal;
- (void)removeAnimals:(NSString *)animal;
- (void)showAnimals;
@end

NS_ASSUME_NONNULL_END
