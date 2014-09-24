//
//  ViewController.h
//  Random Word
//
//  Created by Bailey Sheather on 6/05/2014.
//  Copyright (c) 2014 sourghosts. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)randomWord:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (nonatomic, strong) NSString *random;
@property (nonatomic, strong) NSString *random2;
@property (nonatomic, strong) NSString *random3;

@end
