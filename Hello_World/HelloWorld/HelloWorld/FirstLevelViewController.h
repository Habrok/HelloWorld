//
//  FirstLevelViewController.h
//  Nav
//
//  Created by Roman Melnyk on 01.08.11.
//  Copyright 2011 Habrok-Home. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FirstLevelViewController : UITableViewController 
{
    NSArray *controllers;
    NSMutableArray *arr;
}
@property (nonatomic, retain) NSArray *controllers;
@property (nonatomic, retain) NSMutableArray *arr;

@end
