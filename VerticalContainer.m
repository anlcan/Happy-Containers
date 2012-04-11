//
//  VerticalContainer.m
//  YellowPages
//
//  Created by Anil Can Baykal on 12/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "VerticalContainer.h"

@implementation VerticalContainer

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        _type = VerticalScrollableContainer; 
        expandable = NO; 
        scrollable = NO; 
        
        self.autoresizesSubviews = NO; 
    }
    return self;
}





@end
