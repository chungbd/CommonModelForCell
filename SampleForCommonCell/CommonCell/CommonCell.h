//
//  CommonCell.h
//  SampleForCommonCell
//
//  Created by Chung BD on 3/10/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommonCell : NSObject
@property(nonatomic,assign) int index;
@property(nonatomic,assign) BOOL selected;
@property(nonatomic,copy) NSObject *value;

+ (CommonCell *)initiate:(int)index andValue:(NSObject *)value;
+ (NSString *) identifier;
@end
