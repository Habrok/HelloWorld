//
//  FirstLevelViewController.m
//  Nav
//
//  Created by Roman Melnyk on 01.08.11.
//  Copyright 2011 Habrok-Home. All rights reserved.
//

#import "FirstLevelViewController.h"
#import "SecondLevelViewController.h"

#import "PresidentViewController.h"
#import "IdiomsViewController.h"

#import "Idioms.h"

@implementation FirstLevelViewController
@synthesize controllers;
@synthesize arr;

-(void)viewDidLoad
{
    self.title = @"First Level";
    NSMutableArray *array = [[NSMutableArray alloc] init];


/*    //President View/Edit
    PresidentViewController *presidentsViewController = [[PresidentViewController alloc] initWithStyle:UITableViewStylePlain];
    presidentsViewController.title = @"Detail Edit";
    presidentsViewController.rowImage = [UIImage imageNamed:@"detailEditIcon.png"];
    [array addObject:presidentsViewController];
    [presidentsViewController release]; */
    
    //Country names
    Idioms *idioms = [[Idioms alloc] init];
    NSDictionary *dictionary = [[NSDictionary alloc] init];
    dictionary = [idioms makeDictionary];
    NSArray *keys = [dictionary allKeys];
    NSLog(@"allkeys: %@", idioms);
    
    for (int i = 0; i < [keys count]; i++) {
        
        IdiomsViewController *idiomsViewController = [[IdiomsViewController alloc] initWithStyle:UITableViewStylePlain];
        idiomsViewController.keyIdiom = [keys objectAtIndex:i];
        idiomsViewController.title = [dictionary objectForKey:[keys objectAtIndex:i]];
        [array addObject:idiomsViewController];
        [idiomsViewController release];
    }
//        NSLog(@"Dictionary: %@", [dictionary objectForKey:@"Country"]);
        
    self.controllers = array;
    [array release];
    [super viewDidLoad];
}

-(void)viewDidUnload
{
    self.controllers = nil;
    [super viewDidUnload];
}

-(void)dealloc
{
    [controllers release];
    [super dealloc];
}

#pragma mark -
#pragma mark Table Data Source Methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.controllers count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *FirstLevelCell = @"FirstLevelCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FirstLevelCell];
    if (cell == nil)
    {
        cell = [[[UITableViewCell alloc] 
                 initWithStyle:UITableViewCellStyleDefault 
                 reuseIdentifier:FirstLevelCell] autorelease];
    }
    //Configure the cell
    NSUInteger row = [indexPath row];
    SecondLevelViewController *controller = [controllers objectAtIndex:row];
    cell.textLabel.text = controller.title;
    cell.imageView.image = controller.rowImage;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

#pragma mark -
#pragma mark Table View Delegate Methods

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = [indexPath row];
    SecondLevelViewController *nextController = [self.controllers objectAtIndex:row];
    [self.navigationController pushViewController:nextController animated:YES];
}
@end
