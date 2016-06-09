//
//  Group.m
//  SendFriend
//
//  Created by Maor Kern on 6/9/16.
//  Copyright © 2016 Maor Kern. All rights reserved.
//

#import "Group.h"

@implementation Group

-(AFHTTPRequestOperationManager*)getUsers:(void (^)(NSArray*))completion{
    return [[Request request] getWithAction:[NSString stringWithFormat:@"%@/%@/users", [Group baseEntityURL], self.idS] parameters:nil success:^(NSArray* result){
        NSError *error;
        _users = [User arrayOfModelsFromDictionaries:result error:&error];
        completion(_users);
        if (error) {
            NSLog(@"ER %@", error);
        }
    }];
}
@end
