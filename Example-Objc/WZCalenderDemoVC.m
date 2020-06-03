//
//  WZCalenderDemoVC.m
//  FSCalendarExample
//
//  Created by 王振 on 2020/6/2.
//  Copyright © 2020 wenchaoios. All rights reserved.
//

#import "WZCalenderDemoVC.h"
#import "FSCalendar.h"

@interface WZCalenderDemoVC () <FSCalendarDataSource, FSCalendarDelegate>

@property (strong, nonatomic) FSCalendar *calendar;

@end

@implementation WZCalenderDemoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:self.calendar];
    
    
}

#pragma mark -

- (NSString *)calendar:(FSCalendar *)calendar subtitleForDate:(NSDate *)date {
    return @"xxxx";
}

- (NSInteger)calendar:(FSCalendar *)calendar numberOfEventsForDate:(NSDate *)date {
    return 2;
}

#pragma mark -

- (FSCalendar *)calendar {
    if (!_calendar) {
        _calendar = ({
            CGRect rect = CGRectMake(0, 100, CGRectGetWidth(self.view.frame), 400);
            FSCalendar *calendar = [[FSCalendar alloc] initWithFrame:rect];
            calendar.backgroundColor = [UIColor greenColor];
            calendar.locale = [NSLocale localeWithLocaleIdentifier:@"zh_cn"];//中文
            //calendar.today = nil;
            calendar.dataSource = self;
            calendar.delegate = self;
            calendar.appearance.caseOptions = FSCalendarCaseOptionsHeaderUsesUpperCase|FSCalendarCaseOptionsWeekdayUsesSingleUpperCase;
            calendar.appearance.borderRadius = 0;
            calendar;
        });
    }
    return _calendar;
}


@end
