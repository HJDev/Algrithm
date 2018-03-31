//
//  main.m
//  Algrithm
//
//  Created by 何军 on 2018/3/31.
//  Copyright © 2018年 何军. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HJBubbleSort.h"
#import "HJSelectionSort.h"
#import "HJMergeSort.h"
#import "HJInsertionSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSMutableArray *sortList = [NSMutableArray array];
        for (NSInteger i = 0; i < 1000; i++) {
            NSInteger rand = arc4random() % 10000;
            [sortList addObject:@(rand)];
        }
        NSMutableArray *sortList1 = [sortList mutableCopy];
        NSMutableArray *sortList2 = [sortList mutableCopy];
        NSMutableArray *sortList3 = [sortList mutableCopy];
        NSMutableArray *sortList4 = [sortList mutableCopy];
        
        //    NSInteger sortCountBest = [[HJBubbleSort new] bubbleSortBest:sortList];
        //    NSInteger sortCountWorst = [[HJBubbleSort new] bubbleSortWorst:sortList1];
        //    NSLog(@"sort best count : %@, sort worst count : %@", @(sortCountBest), @(sortCountWorst));
        //
        //    NSInteger selectionSortCount = [[HJSelectionSort new] selectionSortWithList:sortList2];
        //    NSLog(@"selection sort count : %@", @(selectionSortCount));
        
        //    sortList3 = [NSMutableArray arrayWithObjects:@(8), @(7), @(5), @(9), @(11), @(7), @(4), @(9), @(3), @(2), @(5), nil];
        //merge sort
        [[HJMergeSort new] mergeSortWithList:sortList3];
        NSTimeInterval timeStart = [NSProcessInfo processInfo].systemUptime;
        
        //insert sort
        [[HJInsertionSort new] insertionSortWithList:sortList4];
        NSTimeInterval timeEnd = [NSProcessInfo processInfo].systemUptime;
        NSTimeInterval totalTime = timeEnd - timeStart;
        NSLog(@"sort time : %@" , @(totalTime));
    }
    return 0;
}
