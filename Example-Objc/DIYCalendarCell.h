//
//  DIYCalendarCell.h
//  FSCalendar
//
//  Created by dingwenchao on 02/11/2016.
//  Copyright © 2016 Wenchao Ding. All rights reserved.
//

#import <FSCalendar/FSCalendar.h>

typedef NS_ENUM(NSUInteger, SelectionType) {
    SelectionTypeNone,//么有
    SelectionTypeSingle,//只有一个
    SelectionTypeLeftBorder,//左边
    SelectionTypeMiddle,//中间
    SelectionTypeRightBorder//右边
};


@interface DIYCalendarCell : FSCalendarCell

@property (weak, nonatomic) UIImageView *circleImageView;

@property (weak, nonatomic) CAShapeLayer *selectionLayer;

@property (assign, nonatomic) SelectionType selectionType;

@end
