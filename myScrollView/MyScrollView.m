//
//  MyScrollView.m
//  myScrollView
//
//  Created by Sergio Martinez on 2016-03-21.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()

@property (nonatomic) UIPanGestureRecognizer *panGestureRecognizer;

@end

@implementation MyScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


// In the method that handles events from the PanGestureRecognizer, look for how far your have panned. Then, move (translate) the view's bounds, but do not permit values that would violate contentSize.

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
      
        self.panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
        [self addGestureRecognizer:self.panGestureRecognizer];
    }
    return self;
}


- (IBAction)handlePan:(UIPanGestureRecognizer *)panGestureRecognizer {
    
        CGPoint translation = [panGestureRecognizer translationInView:self];
        
        CGRect bounds = self.bounds;
    
        bounds.origin.x -= translation.x;
        bounds.origin.y -= translation.y;
    
        CGRect contentSizeRect = CGRectMake(0, 0, self.contentSize.width, self.contentSize.height);
    
        if (CGRectContainsRect(contentSizeRect, bounds)) {
            self.bounds = bounds;
        }
    
    
        [panGestureRecognizer setTranslation:CGPointMake(0, 0) inView:self];

}

@end
