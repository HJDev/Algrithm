//
//  HJMergeSort.m
//  Algrithm
//
//  Created by 何军 on 2018/3/31.
//  Copyright © 2018年 何军. All rights reserved.
//

#import "HJMergeSort.h"

@implementation HJMergeSort

- (void)mergeSortWithList:(NSMutableArray *)sortList {
    [self sortWithList:sortList first:0 last:sortList.count - 1];
}
- (void)sortWithList:(NSMutableArray *)sortList
               first:(NSInteger)first
                last:(NSInteger)last {
    if (first < last) {
        NSInteger mid = (first + last) / 2;
        
        [self sortWithList:sortList first:first last:mid];
        [self sortWithList:sortList first:mid + 1 last:last];
        [self mergeWithList:sortList first:first mid:mid last:last];
    }
    
}
- (void)mergeWithList:(NSMutableArray *)sortList
                first:(NSInteger)first
                  mid:(NSInteger)mid
                 last:(NSInteger)last {
    NSMutableArray *tempArray = [NSMutableArray array];
    
    NSInteger i = first, j = mid + 1;
    NSInteger k = 0;
    while (i <= mid && j <= last) {
        if (sortList[i] < sortList[j]) {
            tempArray[k++] = sortList[i++];
        } else {
            tempArray[k++] = sortList[j++];
        }
    }
    while (i <= mid) {
        tempArray[k++] = sortList[i++];
    }
    while (j <= last) {
        tempArray[k++] = sortList[j++];
    }
    for (NSInteger v = 0; v < k; v++) {
        sortList[first + v] = tempArray[v];
    }
}

@end
