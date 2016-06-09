//
//  Group.h
//  SendFriend
//
//  Created by Maor Kern on 6/9/16.
//  Copyright © 2016 Maor Kern. All rights reserved.
//

#import "BaseEntity.h"
#import "User.h"

@class User;
@interface Group : BaseEntity

@property(nonatomic, strong) NSString *name;

@property(nonatomic, strong) User<Ignore> *managing_user;
@property(nonatomic, strong)  NSArray<Ignore> *users;

-(AFHTTPRequestOperationManager*)getUsers:(void (^)(NSArray*))completion;

@end
