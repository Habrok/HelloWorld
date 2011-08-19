//
//  HelloWorldAppDelegate.h
//  HelloWorld
//
//  Created by Roman Melnyk on 19.08.11.
//  Copyright 2011 Habrok-Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
