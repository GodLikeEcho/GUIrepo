//
//  FirstViewController.m
//  GUI_FoodCart_Tracker
//
//  Created by Clint Jellesed on 4/13/16.
//  Copyright © 2016 Clint Jellesed. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Clock;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //[self updateTime];
   }
-(void)updateTime
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"hh-mm-ss"];
    _Clock.text = [dateFormat stringFromDate:[NSDate date]];
    
    
    //call update every second
    [self performSelector:@selector(updateTime) withObject:self afterDelay:1.0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
