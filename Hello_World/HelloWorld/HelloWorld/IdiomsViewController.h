//
//  IdiomsViewController.h
//  HelloWorld
//
//  Created by Roman Melnyk on 19.08.11.
//  Copyright 2011 Habrok-Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SecondLevelViewController.h"


@interface IdiomsViewController : SecondLevelViewController {
    NSMutableArray *list;
    NSMutableArray *lang;
    NSString *keyLang;
    NSString *keyIdiom;
}
@property (nonatomic, retain) NSMutableArray *list;
@property (nonatomic, retain) NSMutableArray *lang;
@property (nonatomic, retain) NSString *keyLang;
@property (nonatomic, retain) NSString *keyIdiom;

@end
