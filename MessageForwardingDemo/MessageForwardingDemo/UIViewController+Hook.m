//
//  UIViewController+Hook.m
//  MessageForwardingDemo
//
//  Created by 王杰 on 2023/5/16.
//

#import "UIViewController+Hook.h"
#import <objc/runtime.h>

@implementation UIViewController (Hook)

+ (void)load {
    Method methodOld = class_getInstanceMethod([UIViewController class], @selector(viewDidLoad));
    Method methodNew = class_getInstanceMethod([UIViewController class], @selector(hook_viewDidLoad));
    method_exchangeImplementations(methodOld, methodNew);
    
    methodOld = class_getInstanceMethod([UIViewController class], NSSelectorFromString(@"dealloc"));
    methodNew = class_getInstanceMethod([UIViewController class], @selector(hook_dealloc));
    method_exchangeImplementations(methodOld, methodNew);
}

- (void)hook_viewDidLoad {
    self.title = @"Chieh";
    NSLog(@"%@-%@ viewDidLoad", [self titleName], [self class]);
    [self hook_viewDidLoad];
}

- (void)hook_dealloc {
    NSLog(@"%@-%@ dealloc", [self titleName], [self class]);
    [self hook_dealloc];
}

- (NSString *)titleName {
    NSString *titleName = @"Null";
    if (self.navigationItem.title.length) {
        return self.navigationItem.title;
    } else if (self.title.length) {
        return self.title;
    } else if ([self.navigationItem.titleView isKindOfClass:[UILabel class]]) {
        return ((UILabel *) self.navigationItem.titleView).text;
    }
    return titleName;
}

@end
