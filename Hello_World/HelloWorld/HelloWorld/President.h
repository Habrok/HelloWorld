//
//  President.h
//  Nav
//
//  Created by Roman Melnyk on 02.08.11.
//  Copyright 2011 Habrok-Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#define kPresidentNumberKey @"President"
#define kPresidentNameKey   @"Name"
#define kPresidentFromKey   @"FromYear"
#define kPresidentToKey     @"ToYear"
#define kPresidentPartyKey  @"Party"

@interface President : NSObject <NSCoding> 
{
    int number;
    NSString *fromYear;
    NSString *name;
    NSString *toYear;
    NSString *party;
}
@property int number;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *fromYear;
@property (nonatomic, copy) NSString *toYear;
@property (nonatomic, copy) NSString *party;

@end
