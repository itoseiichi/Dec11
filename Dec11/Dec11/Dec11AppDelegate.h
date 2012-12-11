//
//  Dec11AppDelegate.h
//  Dec11
//
//  Created by Hachi on 12/9/12.
//  Copyright (c) 2012 Hachi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ProjectController;

@interface Dec11AppDelegate : NSObject <UIApplicationDelegate> {
	NSArray *a;
	UITabBarController *controller;
	UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@end