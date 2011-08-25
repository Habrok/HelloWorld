//
//  President.m
//  Nav
//
//  Created by Roman Melnyk on 02.08.11.
//  Copyright 2011 Habrok-Home. All rights reserved.
//

#import "President.h"


@implementation President
@synthesize number;
@synthesize name;
@synthesize fromYear;
@synthesize toYear;
@synthesize party;

-(void)dealloc
{
    [name release];
    [fromYear release];
    [toYear release];
    [party release];
    
    [super dealloc];
}

#pragma mark -
#pragma mark NSCoding

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeInt:self.number forKey:kPresidentNumberKey];
    [aCoder encodeObject:self.name forKey:kPresidentNameKey];
    [aCoder encodeObject:self.fromYear forKey:kPresidentFromKey];
    [aCoder encodeObject:self.toYear forKey:kPresidentToKey];
    [aCoder encodeObject:self.party forKey:kPresidentPartyKey];
}
-(id)initWithCoder:(NSCoder *)aCoder
{
    if ((self = [super init]))
    {
        number = [aCoder decodeIntForKey:kPresidentNumberKey];
        name = [[aCoder decodeObjectForKey:kPresidentNameKey] retain];
        fromYear = [[aCoder decodeObjectForKey:kPresidentFromKey] retain];
        toYear = [[aCoder decodeObjectForKey:kPresidentToKey] retain];
        party = [[aCoder decodeObjectForKey:kPresidentPartyKey] retain];
    }
    return self;
}

@end
