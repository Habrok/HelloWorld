//
//  main.m
//  CSVToPlist
//
//  Created by Roman Melnyk on 18.08.11.
//  Copyright 2011 Habrok-Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "parseCSV.h"

int main (int argc, const char * argv[])
{
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   
    NSString *bundleRoot = [[NSBundle mainBundle] bundlePath];
    NSLog(@"bundle root %@", bundleRoot);
    NSFileManager *manager = [NSFileManager defaultManager];
    NSDirectoryEnumerator *direnum = [manager enumeratorAtPath:bundleRoot];
    
    NSMutableString *pathAsString;
    
    while ((pathAsString = [direnum nextObject])) {
        NSLog(@"read file %@", pathAsString);      
        if((pathAsString != nil) && ([pathAsString hasSuffix:@".csv"])){
            
            CSVParser *parser = [[CSVParser alloc] init];
            [parser openFile:[bundleRoot stringByAppendingPathComponent:pathAsString]];
            NSMutableArray *csvContent = [parser parseFile];
//            NSLog(@"csv:%@", csvContent);
            [parser closeFile];
            
            NSArray *keyArray = [[NSArray alloc] init];
            keyArray = [csvContent objectAtIndex:0];
//            NSLog(@"%@",[csvContent objectAtIndex:0]);
            NSMutableArray *plistOutputArray = [[NSMutableArray alloc] init];
            NSInteger i =0;
            for(NSArray *array in csvContent){
                NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
                NSInteger keyNumber =0;
                for(NSString *string in array){
                    [dictionary setObject:string forKey:[keyArray objectAtIndex:keyNumber]];
                    keyNumber++;
                }
                if(i > 0){
                    [plistOutputArray addObject:dictionary];
                }                
                i++;
            }
            NSMutableString *mutableString = [NSMutableString stringWithString:[bundleRoot stringByAppendingPathComponent:pathAsString]];
            [mutableString replaceOccurrencesOfString:@".csv" 
                                           withString:@".plist" 
                                              options:nil 
                                                range:NSMakeRange([mutableString length]-4,4)];
            NSURL *url = [NSURL fileURLWithPath:mutableString];
            [plistOutputArray writeToURL:url atomically:YES];
            
        }
    } 
    
    
    [pool drain];
    return 0;
}