//
//  Japan.m
//  Dec11
//
//  Created by Hachi on 12/9/12.
//  Copyright (c) 2012 Hachi. All rights reserved.
//

#import "Japan.h"

@implementation Japan

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
	
	//Japan Flag
	CGFloat radius = 0.3 * h;
	CGRect r =CGRectMake(w/2-radius,h/2-radius,2*radius,2*radius);
	CGContextRef c = UIGraphicsGetCurrentContext();
	CGContextBeginPath(c);
	CGContextAddEllipseInRect(c , r);
	CGContextSetRGBFillColor(c , 1.0 , 0.0 , 0.0 , 1.0);
	CGContextFillPath(c);
	
	//Write Question
	UIFont *font00 = [UIFont boldSystemFontOfSize: 20.0];
    NSString *string00 = @"Who is the next Prime Minister?";
	CGSize size00 = [string00 sizeWithFont: font00];
	CGPoint point00 = CGPointMake((w - size00.width) / 2 , size00.height + 20);
	CGContextRef c_string00 = UIGraphicsGetCurrentContext();
	CGContextSetRGBFillColor(c_string00, 0, 0, 0, 1);
	[string00 drawAtPoint: point00 withFont: font00];
	
    //Photo&String
	UIImage *image1 = [UIImage imageNamed: @"abe.jpg"];
	UIImage *image2 = [UIImage imageNamed: @"noda.jpg"];
	UIImage *image3 = [UIImage imageNamed: @"ishihara.jpg"];
	NSString *string1a = @"Abe";
	NSString *string2a = @"Noda";
	NSString *string3a = @"Ishihara";
	NSString *string1b = @"Jimin";
	NSString *string2b = @"Minsyu";
	NSString *string3b = @"Taiyo";
	
	//Position
	CGPoint point1a = CGPointMake( w/2 - image1.size.width - 20,
								  h - image1.size.height - image3.size.height - 40);
	CGPoint point2a = CGPointMake( w/2 + 20,
								  h - image2.size.height - image3.size.height - 40);
	CGPoint point3a = CGPointMake((w - image3.size.width) / 2,
								  h - image3.size.height - 20);
	CGPoint point1b = CGPointMake( w/2 - image1.size.width - 20,
								  h - image3.size.height - 60);
	CGPoint point2b = CGPointMake( w/2 + 20,
								  h - image3.size.height - 60);
	CGPoint point3b = CGPointMake((w - image3.size.width) / 2,
								  h - 40);
	//set Photo
	[image1 drawAtPoint: point1a];
	[image2 drawAtPoint: point2a];
	[image3 drawAtPoint: point3a];
	
	//set String
	UIFont *fonta = [UIFont boldSystemFontOfSize: 18.0];
	UIFont *fontb = [UIFont boldSystemFontOfSize: 15.0];
	CGContextRef c_string0 = UIGraphicsGetCurrentContext();
	CGContextSetRGBFillColor(c_string0, 0, 1, 0, 1);
	[string1a drawAtPoint: point1a withFont: fonta];
	[string2a drawAtPoint: point2a withFont: fonta];
	[string3a drawAtPoint: point3a withFont: fonta];
	CGContextSetRGBFillColor(c_string0, 1, 0, 1, 1);
	[string1b drawAtPoint: point1b withFont: fontb];
	[string2b drawAtPoint: point2b withFont: fontb];
	[string3b drawAtPoint: point3b withFont: fontb];
}


@end
