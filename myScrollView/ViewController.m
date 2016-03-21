//
//  ViewController.m
//  myScrollView
//
//  Created by Sergio Martinez on 2016-03-21.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import "ViewController.h"
#import "myScrollView.h"

@interface ViewController ()

@property (nonatomic) MyScrollView *myView;
@property (nonatomic) UIView *redView;
@property (nonatomic) UIView *greenView;
@property (nonatomic) UIView *blueView;
@property (nonatomic) UIView *yellowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.myView = [[MyScrollView alloc]initWithFrame:self.view.frame];
    
    self.myView.backgroundColor = [UIColor lightGrayColor];

    [self.view addSubview:self.myView];
    

        
    self.myView.contentSize = CGSizeMake(self.view.frame.size.width, (self.view.frame.size.height + 170));

//-----------------------------------------------------------------------------------------------------------------
    /* The above code could also be done by finding the union between the blueView and yellowView via "CGRectUnion"
       See code below. */
//    
//    CGRect firstRect = CGRectMake(self.blueView.frame.origin.x, self.blueView.frame.origin.y, self.blueView.frame.size.width, self.blueView.frame.size.height);
//    
//    CGRect secondRect = CGRectMake(self.yellowView.frame.origin.x, self.yellowView.frame.origin.y, self.yellowView.frame.size.width, self.yellowView.frame.size.height);
//    
//    CGRect firstAndSecondUnion = CGRectUnion(firstRect, secondRect);
//    
//    self.myView.contentSize = CGSizeMake(firstAndSecondUnion.size.width, firstAndSecondUnion.size.height);
//-----------------------------------------------------------------------------------------------------------------
    
    
//---- Add four UIViews to that View ------------------------------------------------
//    
//    A red UIView at (20,20) x, y coordinates and with width 100 and height 100
//    A green UIView at (150,150) x, y coordinates and with width 150 and height 200
//    A blue UIView at (40,400) x, y coordinates and with width 200 and height 150
//    A yellow UIView at (100,600) x, y coordinates and with width 180 and height 150
    
    self.redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    self.redView.backgroundColor = [UIColor redColor];
    [self.myView addSubview:self.redView];
    
    self.greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.myView addSubview:self.greenView];
    
    self.blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.myView addSubview:self.blueView];
    
    self.yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.myView addSubview:self.yellowView];
    
//---- Add four UIViews to that View ------------------------------------------------

    
}

- (void)viewDidAppear:(BOOL)animated {
    
//    self.view.bounds = CGRectOffset(self.view.bounds, 0, 100);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
