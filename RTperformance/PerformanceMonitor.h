//
//  PerformanceMonitor.h
//  RTperformance
//
//  Created by wen zhang on 2017/5/10.
//  Copyright © 2017年 Gwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PerformanceMonitor : NSObject

+ (instancetype)sharedInstance;

// 阀时(单位ms)
@property (nonatomic, assign) NSInteger gateTime;

- (void)startMonitor;
- (void)stopMonitor;

@end
