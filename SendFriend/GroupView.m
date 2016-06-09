//
//  GroupView.m
//  SendFriend
//
//  Created by Maor Kern on 6/9/16.
//  Copyright © 2016 Maor Kern. All rights reserved.
//

#import "GroupView.h"

@implementation GroupView

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    self.layer.cornerRadius = frame.size.width/2;
    self.backgroundColor = [UIColor clearColor];
    self.layer.borderColor = [UIColor greenColor].CGColor;
    self.layer.borderWidth = 8.0;

    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
