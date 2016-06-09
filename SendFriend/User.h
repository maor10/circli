//
//  User.h
//  SendFriend
//
//  Created by Maor Kern on 6/9/16.
//  Copyright © 2016 Maor Kern. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <BaseEntity.h>
#import "Group.h"

@class Group;
@interface User : BaseEntity

@property(nonatomic, strong) NSString *google_token;
@property(nonatomic, strong) NSArray<Optional> *groups;

+ (User *)user;

-(AFHTTPRequestOperationManager*)getGroups:(void (^)(NSArray*))completion;

@end
