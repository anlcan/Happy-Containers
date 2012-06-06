//
//  VerticalContainer.m
//  YellowPages
//
//  Created by Anil Can Baykal on 12/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "VerticalContainer.h"

@implementation VerticalContainer

-(void)setup{

    _type = VerticalScrollableContainer; 
    expandable = NO; 
    scrollable = NO; 
    self.autoresizesSubviews = NO; 
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setup]; 
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder]; 
    if (self) {
        [self setup]; 
        
    }
    return self;
}




@end
