//
//  PerformanceMonitor.h
//  RTperformance
//
//  Created by wen zhang on 2017/5/10.
//  Copyright © 2017年 Gwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RTPerformanceMonitor : NSObject

+ (instancetype)sharedInstance;

// 阀时(单位ms)
@property (nonatomic, assign) NSInteger gateTime;

- (void)startOnlineMonitor;
- (void)stopOnlineMonitor;

- (void)startOfflineMonitor;

@end
