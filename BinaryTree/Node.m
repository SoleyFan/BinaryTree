//
//  Node.m
//  BinaryTree
//
//  Created by 范胜利 on 15/12/14.
//  Copyright © 2015年 范胜利. All rights reserved.
//

#import "Node.h"

@implementation Node

+(instancetype)nodeWithName:(NSString *)name{
    
    Node *node = [[[self class] alloc]init];
    node.nodeName = name;
    return node;
}

@end
