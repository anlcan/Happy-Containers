//
//  ScrollableContainer.m
//  YellowPages
//
//  Created by Anil Can Baykal on 12/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ScrollableContainer.h"

@implementation ScrollableContainer

@synthesize topMargin, leftMargin, bottomMargin, rightMargin;
@synthesize scrollable, expandable;
@synthesize type = _type; 
@synthesize marginX, marginY; 

-(void)checkSize{
    
    _currentScrollableSize = CGSizeMake(_currentX + rightMargin, _currentY + bottomMargin);
    
    if (expandable){
        
        CGRect tmp = self.frame; 
        tmp.size.width = _currentX + rightMargin; 
        tmp.size.height = _currentY + bottomMargin;        
    } 
    
    if ( scrollable) {
        
        self.contentSize = _currentScrollableSize;         
    }    
}

-(void) appendView:(UIView*)view{
        
    CGRect frame  		= view.frame;     
    CGPoint newOrigin 	= CGPointZero; 
    
    if ( _type == HorizontalScrollableContainer) {
        
        newOrigin.x = _currentX + marginX; 
        newOrigin.y = topMargin; 
                         
    } else {
        
        newOrigin.x = leftMargin; 
        newOrigin.y = _currentY + marginY; 
        
    }
    
    frame.origin = newOrigin; 
    view.frame = frame;
    
    _currentX = newOrigin.x + view.frame.size.width;
    _currentY = newOrigin.y + view.frame.size.height; 
    
    [self addSubview:view];     
    
    [self checkSize]; 
}


-(void)scrollToView:(UIView*)v animated:(BOOL)animated{
    
    if ( NSNotFound == [self.subviews indexOfObject:v]) {
        NSLog(@"cannot scroll if v is not a subview"); 
        return; 
    }
    
    [self setContentOffset:v.frame.origin animated:animated]; 
    
}

-(void)scrollToView:(UIView*)v{
    
    [self scrollToView:v animated:NO]; 
}


@end
