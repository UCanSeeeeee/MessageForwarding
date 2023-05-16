//
//  ViewController.m
//  MessageForwardingDemo
//
//  Created by 王杰 on 2023/5/15.
//

#import "ViewController.h"
#import "People.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    People *people = [[People alloc] init];
    
    [people performSelector:@selector(speak)];
    /*
     测试 resolveInstanceMethod 方法
     1.询问是否有动态添加方法来进行处理
     */
    
    [people performSelector:@selector(fly)];
    /*
     测试 forwardingTargetForSelector 方法
     1.第一步询问过是否有动态添加方法来进行处理，没有。
     2.那么第二步问一下是否有别的类能帮忙处理。
     */
    
    [people performSelector:@selector(code)];
    /*
     测试 - (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector 和 - (void)forwardInvocation:(NSInvocation *)anInvocation 方法
     1.在调用forwardInvocation:之前会调用- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector方法来获取这个选择子的方法签名
     2.然后在-(void)forwardInvocation:(NSInvocation *)anInvocation方法中你就可以通过anInvocation拿到相应信息做处理
     */
    
//    [people performSelector:@selector(doesNotExist)];
    
    /*
     测试 - (void)doesNotRecognizeSelector:(SEL)aSelector 方法
     1.最后消息未能处理，抛出异常。
     */
    
    // git 测试
    // Do any additional setup after loading the view.
}


@end
