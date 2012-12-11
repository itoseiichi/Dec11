//
//  NorthKorea.m
//  Dec11
//
//  Created by Hachi on 12/9/12.
//  Copyright (c) 2012 Hachi. All rights reserved.
//

#import "NorthKorea.h"

@implementation NorthKorea

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor whiteColor];
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	CGFloat w = self.bounds.size.width;
	CGFloat h = self.bounds.size.height;
	
	//NorthKorean Flag
	UIImage *image0 = [UIImage imageNamed:@"N_Korea_Flag.jpg"];
	CGPoint point0 = CGPointMake(0,0);
	[image0 drawAtPoint: point0];
	
	//Write Question
	UIFont *font00 = [UIFont boldSystemFontOfSize: 20.0];
    NSString *string00 = @"No Election";
	CGSize size00 = [string00 sizeWithFont: font00];
	CGPoint point00 = CGPointMake((w - size00.width) / 2 , size00.height + 20);
	CGContextRef c_string00 = UIGraphicsGetCurrentContext();
	CGContextSetRGBFillColor(c_string00, 0, 0, 0, 1);
	[string00 drawAtPoint: point00 withFont: font00];
	
    //Photo&String
	UIImage *image1 = [UIImage imageNamed: @"old_kim.jpg"];
	UIImage *image2 = [UIImage imageNamed: @"new_kim.jpg"];
	NSString *string1a = @"Kim Jong-il";
	NSString *string2a = @"Kim Jong-un";
	NSString *string1b = @"Old Leader";
	NSString *string2b = @"New Leader";
	
	//Position
	CGPoint point1a = CGPointMake((w - image1.size.width) / 2,
								  h - image1.size.height - image2.size.height - 40);
	CGPoint point2a = CGPointMake((w - image2.size.width) / 2,
								  h - image2.size.height - 20);
	CGPoint point1b = CGPointMake((w - image1.size.width) / 2,
								  h - image2.size.height - 60);
	CGPoint point2b = CGPointMake((w - image2.size.width) / 2,
								  h - 40);
	//set Photo
	[image1 drawAtPoint: point1a];
	[image2 drawAtPoint: point2a];
	
	//set String
	UIFont *fonta = [UIFont boldSystemFontOfSize: 15.0];
	UIFont *fontb = [UIFont boldSystemFontOfSize: 15.0];
	CGContextRef c_string0 = UIGraphicsGetCurrentContext();
	CGContextSetRGBFillColor(c_string0, 0, 1, 0, 1);
	[string1a drawAtPoint: point1a withFont: fonta];
	[string2a drawAtPoint: point2a withFont: fonta];
	CGContextSetRGBFillColor(c_string0, 1, 0, 1, 1);
	[string1b drawAtPoint: point1b withFont: fontb];
	[string2b drawAtPoint: point2b withFont: fontb];
}


@end