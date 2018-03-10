//
//  CommonCell.m
//  SampleForCommonCell
//
//  Created by Chung BD on 3/10/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

#import "CommonCell.h"

@implementation CommonCell
+ (CommonCell *)initiate:(int)index andValue:(NSObject *)value {
    CommonCell *cell = [[CommonCell alloc] init];
    cell.index = index;
    cell.value = value;
    cell.selected = NO;
    
    return cell;
}

+(NSString *)identifier
{
    return NSStringFromClass([self class]);
}
@end
