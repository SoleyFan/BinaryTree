//
//  ViewController.m
//  BinaryTree
//
//  Created by 范胜利 on 15/12/14.
//  Copyright © 2015年 范胜利. All rights reserved.
//

#import "ViewController.h"
#import "Node.h"

@interface ViewController ()

@property (nonatomic,strong)Node *node;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建跟节点
    self.node = [Node nodeWithName:@"A"];
    //插入节点
    [self insertNodeTree:self.node node:[Node nodeWithName:@"B"]];
    [self insertNodeTree:self.node node:[Node nodeWithName:@"C"]];
    [self insertNodeTree:self.node node:[Node nodeWithName:@"D"]];
    [self insertNodeTree:self.node node:[Node nodeWithName:@"E"]];
    [self insertNodeTree:self.node node:[Node nodeWithName:@"F"]];
    //遍历二叉树
    [self treeInfomationWithNode:self.node];
}
/**
 *  往根节点上插入节点
 *
 *  @param rootNode 根节点
 *  @param node     插入的节点
 */
- (void)insertNodeTree:(Node*)rootNode node:(Node *)node{
    if (rootNode.leftNode == nil) {
        rootNode.leftNode = node;
        return;
    }
    
    if (rootNode.rightNode == nil) {
        rootNode.rightNode = node;
        return;
    }
    [self insertNodeTree:rootNode.leftNode node:node];
}

/**
 *  遍历二叉树
 *
 *  @param node 根节点
 */
- (void)treeInfomationWithNode:(Node *)node {
    if (node.leftNode) {
        [self treeInfomationWithNode:node.leftNode];
    }
    if (node.rightNode) {
        [self treeInfomationWithNode:node.rightNode];
    }
    NSLog(@"%@",node.nodeName);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
