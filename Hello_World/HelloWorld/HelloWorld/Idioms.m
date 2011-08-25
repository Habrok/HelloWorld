//
//  Idioms.m
//  HelloWorld
//
//  Created by Roman Melnyk on 24.08.11.
//  Copyright 2011 Habrok-Home. All rights reserved.
//

#import "Idioms.h"


@implementation Idioms
@synthesize hello, goodBye, thankYou, iLoveYou, please, excuseMe, happyBirthday, yes, no;

-(NSDictionary *)makeDictionary {
NSString *path = [[NSBundle mainBundle] pathForResource:@"Speaking_Tool" ofType:@"plist"];
NSArray *plistArray = [[NSArray alloc] init];

plistArray = [NSArray arrayWithContentsOfFile:path];
self.hello = [[NSMutableDictionary alloc] init];
self.goodBye = [[NSMutableDictionary alloc] init];
self.please = [[NSMutableDictionary alloc] init];
self.excuseMe = [[NSMutableDictionary alloc] init];
self.happyBirthday = [[NSMutableDictionary alloc] init];
self.iLoveYou = [[NSMutableDictionary alloc] init];
self.yes = [[NSMutableDictionary alloc] init];
self.no = [[NSMutableDictionary alloc] init];

for (int i = 0; i < [plistArray count]; i++) {
    NSDictionary *dictionary = [[NSDictionary alloc] init];
    dictionary = [plistArray objectAtIndex:i];
    [self.hello setValue:[dictionary objectForKey:@"hello"] forKey:[dictionary objectForKey:@"Country"]];
    [self.goodBye setValue:[dictionary objectForKey:@"good bye"] forKey:[dictionary objectForKey:@"Country"]];
    [self.please setValue:[dictionary objectForKey:@"please"] forKey:[dictionary objectForKey:@"Country"]];
    [self.thankYou setValue:[dictionary objectForKey:@"thank you"] forKey:[dictionary objectForKey:@"Country"]];
    [self.iLoveYou setValue:[dictionary objectForKey:@"i love you"] forKey:[dictionary objectForKey:@"Country"]];
    [self.excuseMe setValue:[dictionary objectForKey:@"excuse me"] forKey:[dictionary objectForKey:@"Country"]];
    [self.yes setValue:[dictionary objectForKey:@"yes"] forKey:[dictionary objectForKey:@"Country"]];
    [self.no setValue:[dictionary objectForKey:@"no"] forKey:[dictionary objectForKey:@"Country"]];
    [self.happyBirthday setValue:[dictionary objectForKey:@"happy birthday"] forKey:[dictionary objectForKey:@"Country"]];
    }
NSMutableDictionary *dataBase = [[NSMutableDictionary alloc] initWithObjectsAndKeys:self.hello, @"hello", self.goodBye, @"good bye", self.please, @"please", self.thankYou, @"thank you", self.iLoveYou, @"i love you", self.excuseMe, @"escuse me", self.happyBirthday, @"happy birthday", self.yes, @"yes", self.no, @"no", nil];
//    NSLog(@"database: %@", dataBase);
    
    
    return dataBase;
}

@end
