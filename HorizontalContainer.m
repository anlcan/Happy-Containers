//
//  HorizontalContainer.m
//  YellowPages
//
//  Created by Anil Can Baykal on 12/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "HorizontalContainer.h"

@implementation HorizontalContainer

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        _type = HorizontalScrollableContainer; 
        expandable = NO; 
        scrollable = NO; 
        
        self.autoresizesSubviews = NO; 
    }
    return self;
}



@end
