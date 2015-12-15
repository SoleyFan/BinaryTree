//
//  Node.h
//  BinaryTree
//
//  Created by 范胜利 on 15/12/14.
//  Copyright © 2015年 范胜利. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

/**
 *  左节点
 */
@property (nonatomic,strong) Node *leftNode;
/**
 *  右节点
 */
@property (nonatomic,strong) Node *rightNode;
/**
 *  当前节点的名字
 */
@property (nonatomic,strong) NSString *nodeName;

/**
 *  便利构造器
 *
 *  @param name 节点名字
 *
 *  @return 节点
 */
+(instancetype)nodeWithName:(NSString *)name;

@end
