//
//  HJInsertionSort.m
//  Algrithm
//
//  Created by 何军 on 2018/3/31.
//  Copyright © 2018年 何军. All rights reserved.
//

#import "HJInsertionSort.h"

@implementation HJInsertionSort

- (void)insertionSortWithList:(NSMutableArray *)sortList {
    if (sortList.count < 2) {
        return;
    }
    
    NSNumber *temp;
    NSInteger j;
    for (NSInteger i = 1; i < sortList.count; i++) {
        temp = sortList[i];
        j = i;
        while (j > 0 && sortList[j - 1] > temp) {
            sortList[j] = sortList[j - 1];
            j--;
        }
        if (i != j) {
            sortList[j] = temp;
        }
    }
}

@end
