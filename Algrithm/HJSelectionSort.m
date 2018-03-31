//
//  HJSelectionSort.m
//  Algrithm
//
//  Created by 何军 on 2018/3/31.
//  Copyright © 2018年 何军. All rights reserved.
//

#import "HJSelectionSort.h"

@implementation HJSelectionSort

- (NSInteger)selectionSortWithList:(NSMutableArray *)sortList {
    if (sortList.count < 2) {
        return 1;
    }
    
    NSNumber *temp;
    NSInteger minIndex, sortCount = 0;
    //sortList.count - 1
    //因为在外层循环中，比较的最后，最后一个值已经是最大的了
    for (NSInteger i = 0; i < sortList.count - 1; i++) {
        minIndex = i;
        //i + 1
        //可以避免内层循环与外层循环相同元素的无效比较(即证明“我”与“我”谁大的问题)
        for (NSInteger j = i + 1; j < sortList.count; j++) {
            sortCount++;
            if (sortList[minIndex] > sortList[j]) {
                minIndex = j;
            }
        }
        
        if (minIndex != i) {
            temp = sortList[minIndex];
            sortList[minIndex] = sortList[i];
            sortList[i] = temp;
        }
    }
    return sortCount;
}

@end
