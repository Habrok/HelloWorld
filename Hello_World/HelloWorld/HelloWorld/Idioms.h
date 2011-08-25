//
//  Idioms.h
//  HelloWorld
//
//  Created by Roman Melnyk on 24.08.11.
//  Copyright 2011 Habrok-Home. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Idioms : NSObject {
    NSMutableDictionary *hello;
    NSMutableDictionary *goodBye;
    NSMutableDictionary *thankYou;
    NSMutableDictionary *iLoveYou;
    NSMutableDictionary *please;
    NSMutableDictionary *happyBirthday;
    NSMutableDictionary *excuseMe;
    NSMutableDictionary *yes;
    NSMutableDictionary *no;
    
}
@property (nonatomic, retain) NSMutableDictionary *hello;
@property (nonatomic, retain) NSMutableDictionary *goodBye;
@property (nonatomic, retain) NSMutableDictionary *thankYou;
@property (nonatomic, retain) NSMutableDictionary *iLoveYou;
@property (nonatomic, retain) NSMutableDictionary *please;
@property (nonatomic, retain) NSMutableDictionary *happyBirthday;
@property (nonatomic, retain) NSMutableDictionary *excuseMe;
@property (nonatomic, retain) NSMutableDictionary *yes;
@property (nonatomic, retain) NSMutableDictionary *no;

-(NSDictionary *)makeDictionary;

@end
