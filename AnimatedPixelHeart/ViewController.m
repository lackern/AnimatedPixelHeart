//
//  ViewController.m
//  AnimatedPixelHeart
//
//  Created by Lackern on 7/4/16.
//  Copyright © 2016 TLC Interactive All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//-(void)viewDidAppear:(BOOL)animated
//{
//    [self animate:nil];
//}

- (IBAction)animate:(id)sender {
    

    [self.pixelHeart animateNow];
}


@end
