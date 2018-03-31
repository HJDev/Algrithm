//
//  HJBubbleSort.m
//  Algrithm
//
//  Created by 何军 on 2018/3/31.
//  Copyright © 2018年 何军. All rights reserved.
//
// http://www.cnblogs.com/melon-h/archive/2012/09/20/2694941.html

#import "HJBubbleSort.h"

@implementation HJBubbleSort

- (NSInteger)bubbleSortBest:(NSMutableArray<NSNumber *> *)sortList {
    if (sortList.count < 2) {
        return 1;
    }
    BOOL didSwap = NO;
    NSInteger sortCount = 0;
    for (NSInteger i = 0; i < sortList.count - 1; i++) {
        didSwap = NO;
        for (NSInteger j = 0; j < sortList.count - 1 - i; j++) {
            sortCount++;
            if ([self swap:sortList first:j second:j + 1]) {
                didSwap = YES;
            }
        }
        if (!didSwap) {
            return sortCount;
        }
    }
    return sortCount;
}
- (NSInteger)bubbleSortWorst:(NSMutableArray<NSNumber *> *)sortList {
    NSInteger sortCount = 0;
    for (NSInteger i = 0; i < sortList.count; i++) {
        for (NSInteger j = 0; j < sortList.count; j++) {
            sortCount++;
            [self swap:sortList first:j second:j + 1];
        }
    }
    return sortCount;
}

- (BOOL)swap:(NSMutableArray *)list
       first:(NSInteger)first
      second:(NSInteger)second{
    if (first >= list.count || second >= list.count) {
        return NO;
    }
    if (list[first] > list[second]) {
        NSNumber *temp = list[first];
        list[first] = list[second];
        list[second] = temp;
        return YES;
    }
    return NO;
}

@end
