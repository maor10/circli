//
//  User.m
//  SendFriend
//
//  Created by Maor Kern on 6/9/16.
//  Copyright © 2016 Maor Kern. All rights reserved.
//

#import "User.h"

@implementation User


+ (User *)user
{
    static User *sharedSingleton;
    
    @synchronized(self)
    {
        if (!sharedSingleton)
            sharedSingleton = [[User alloc] init];
        
        return sharedSingleton;
    }
}

-(AFHTTPRequestOperationManager*)getGroups:(void (^)(NSArray*))completion{
    return [[Request request] getWithAction:[NSString stringWithFormat:@"%@/%@/groups", [User baseEntityURL], self.idS] parameters:nil success:^(NSArray* result){
        NSError *error;
        _groups = [Group arrayOfModelsFromDictionaries:result error:&error];
        completion(_groups);
        if (error) {
            NSLog(@"ER %@", error);
        }
    }];
}


@end
