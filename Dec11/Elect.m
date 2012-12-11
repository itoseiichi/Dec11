//
//  Elect.m
//  Dec11
//
//  Created by Hachi on 12/10/12.
//  Copyright (c) 2012 Hachi. All rights reserved.
//

#import "Elect.h"

@implementation Elect

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		textView = [[UITextView alloc] initWithFrame: self.bounds];
		textView.backgroundColor = [UIColor blackColor];
		textView.textColor = [UIColor greenColor];
		textView.font = [UIFont fontWithName: @"Times New Roman" size: 25];
		textView.editable = NO;
		
		textView.text =
			@"**2012 Election**\n\n"
			@"America\n"
			@" November 6th\n\n"
			@"Japan\n"
			@" December 16th\n\n"
			@"South Korea\n"
			@" December 19th\n\n"
			@"North Korea\n"
			@" Never!\n\n";
		
		[self addSubview: textView];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
