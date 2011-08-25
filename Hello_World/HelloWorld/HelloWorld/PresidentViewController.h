//
//  PresidentViewController.h
//  Nav
//
//  Created by Roman Melnyk on 02.08.11.
//  Copyright 2011 Habrok-Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SecondLevelViewController.h"

@interface PresidentViewController : SecondLevelViewController
{
    NSMutableArray *list;
}
@property (nonatomic, retain) NSMutableArray *list;

@end
