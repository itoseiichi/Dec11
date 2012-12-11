//
//  Dec11AppDelegate.m
//  Dec11
//
//  Created by Hachi on 12/9/12.
//  Copyright (c) 2012 Hachi. All rights reserved.
//

#import "Dec11AppDelegate.h"
#import "ProjectController.h"

#import "Elect.h"
#import "America.h"
#import "Japan.h"
#import "SouthKorea.h"
#import "NorthKorea.h"


@implementation Dec11AppDelegate
@synthesize window;

- (void) applicationDidFinishLaunching: (UIApplication *) application {
	// Override point for customization after application launch
	UIScreen *s = [UIScreen mainScreen];
	CGRect f = [s applicationFrame];
	
	a = [NSArray arrayWithObjects:
		 
		 [[ProjectController alloc]
		  initWithTitle: @"Election"
		  badge: @"2012"
		  view: [[Elect alloc] initWithFrame: f]
		  ],
		 
		 [[ProjectController alloc]
		  initWithTitle: @"America"
		  badge: @"Nov6"
		  view: [[America alloc] initWithFrame: f]
		  ],
		 
		 [[ProjectController alloc]
		  initWithTitle: @"Japan"
		  badge: @"Dec16"
		  view: [[Japan alloc] initWithFrame: f]
		  ],
		 
		 [[ProjectController alloc]
		  initWithTitle: @"S_Korea"
		  badge: @"Dec19"
		  view: [[SouthKorea alloc] initWithFrame: f]
		  ],
		 
		 [[ProjectController alloc]
		  initWithTitle: @"N_Korea"
		  badge: @"Never"
		  view: [[NorthKorea alloc] initWithFrame: f]
		  ],
		 
		 nil
		 ];
	
	controller = [[UITabBarController alloc] init];
	controller.viewControllers = a;
	
	window = [[UIWindow alloc] initWithFrame: s.bounds];
	[window addSubview: controller.view];
	[window makeKeyAndVisible];
}

- (void) dealloc {
	//[window release];
	//[a release];
	//[super dealloc];
}

@end
