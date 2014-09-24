//
//  ViewController.m
//  Random Word
//
//  Created by Bailey Sheather on 6/05/2014.
//  Copyright (c) 2014 sourghosts. All rights reserved.
//

#import "ViewController.h"
#include <stdlib.h>

@interface ViewController ()

@end

@implementation ViewController
@synthesize label2;
@synthesize titleLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)randomWord:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"hello" ofType:@"plist"];
    NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:path];
    NSString *path2 = [[NSBundle mainBundle] pathForResource:@"hello2" ofType:@"plist"];
    NSMutableArray *array2 = [[NSMutableArray alloc] initWithContentsOfFile:path2];
    NSString *path3 = [[NSBundle mainBundle] pathForResource:@"hello3" ofType:@"plist"];
    NSMutableArray *array3 = [[NSMutableArray alloc] initWithContentsOfFile:path3];
    NSString *path5 = [[NSBundle mainBundle] pathForResource:@"hello5" ofType:@"plist"];
    NSMutableArray *array5 = [[NSMutableArray alloc] initWithContentsOfFile:path5];
    

    NSString *random1 = [array objectAtIndex:arc4random()%array.count];
    NSString *random2 = [array2 objectAtIndex:arc4random()%array2.count];
    NSString *random3 = [array3 objectAtIndex:arc4random()%array3.count];
    NSString *random4 = [array objectAtIndex:arc4random()%array.count];
    NSString *random5 = [array5 objectAtIndex:arc4random()%array5.count];
    
    
    //[label2 setText:@"%@ %@ %@",self.random1, self.random2, self.random3];
    [label2 setText:[NSString stringWithFormat:@"%@%@%@%@%@",random1, random2, random3, random4, random5]];
    //NSLog(@"%@",array);
    NSLog(@"%@",label2.text);
    NSString *empty = @"";
    [titleLabel setText:empty];
}
@end
