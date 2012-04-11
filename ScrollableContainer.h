//
//  ScrollableContainer.h
//  YellowPages
//
//  Created by Anil Can Baykal on 12/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum _ScrollableContainerType {
    
    HorizontalScrollableContainer,
    VerticalScrollableContainer,
    
}ScrollableContainerType;

@interface ScrollableContainer : UIScrollView {
    
    BOOL isScrollable; 
 
    CGFloat marginX; // margins for subviews horizontal
    CGFloat marginY; // margins for subviews vertical
    
    CGFloat _currentY;     
    CGFloat _currentX;         
    CGSize _currentScrollableSize; 
    
    CGFloat leftMargin; 
    CGFloat topMargin; 
    CGFloat rightMargin; 
    CGFloat bottomMargin;
    
    
    
    BOOL scrollable;
    BOOL expandable; // does actual size(frame) expands with each subview 
    
    ScrollableContainerType _type; 
    
}

@property (nonatomic, readonly) ScrollableContainerType type;
@property (nonatomic, assign, setter = setExpandable:, getter = isExpandable) BOOL expandable; 
@property (nonatomic, assign, setter = setScrollable:, getter = isScrollable) BOOL scrollable; 

@property (nonatomic, assign) CGFloat leftMargin; 
@property (nonatomic, assign) CGFloat rightMargin; 
@property (nonatomic, assign) CGFloat bottomMargin; 
@property (nonatomic, assign) CGFloat topMargin; 

@property (nonatomic, assign) CGFloat marginX; 
@property (nonatomic, assign) CGFloat marginY; 




-(void)appendView:(UIView*)v;

-(void)scrollToView:(UIView*)v animated:(BOOL)animated; 
-(void)scrollToView:(UIView*)v ; 

@end
