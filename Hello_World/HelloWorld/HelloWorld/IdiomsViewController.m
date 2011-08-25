//
//  IdiomsViewController.m
//  HelloWorld
//
//  Created by Roman Melnyk on 19.08.11.
//  Copyright 2011 Habrok-Home. All rights reserved.
//

#import "IdiomsViewController.h"
#import "Idioms.h"

@implementation IdiomsViewController
@synthesize list, lang, keyLang, keyIdiom;

-(void)viewDidLoad {
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"Speaking_Tool" ofType:@"plist"];
//    NSArray *plistArray = [[NSArray alloc] init];
//    plistArray = [NSArray arrayWithContentsOfFile:path];
    Idioms *idioms = [[Idioms alloc] init];
    NSDictionary *dictionary = [[NSDictionary alloc] init];
    dictionary = [idioms makeDictionary];
    for (NSString *key in [dictionary allKeys]) {
        NSDictionary *dictionary1 = [[NSDictionary alloc] init];
        dictionary1 = [dictionary objectForKey:key];
        //-------------------------------------------
        NSMutableArray *idioms = [dictionary objectForKey:keyIdiom];
        //NSLog(@"array: %@", idioms);
        self.list = idioms;
        [dictionary release];
    }
    [super viewDidLoad];
}
-(void)viewWillAppear:(BOOL)animated
{
    [self.tableView reloadData];
    [super viewWillAppear:animated];
}
-(void)dealloc
{
    [list release];
    
    [super dealloc];
}
#pragma mark -
#pragma mark Table Data Source Methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [list count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *IdiomsListCellIdentifier = @"IdiomsListCellIdentifier";
    UITableViewCell *cell = [tableView 
                             dequeueReusableCellWithIdentifier:IdiomsListCellIdentifier];
    
    if (cell == nil)
    {
        cell = [[[UITableViewCell alloc] 
                 initWithStyle:UITableViewCellStyleSubtitle 
                 reuseIdentifier:IdiomsListCellIdentifier] 
                autorelease];
    }
    NSUInteger row = [indexPath row];
    
    cell.textLabel.text = [list objectAtIndex:row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@", self.lang];
    return cell;
}


@end
