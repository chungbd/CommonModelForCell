//
//  CommonSection.h
//  SampleForCommonCell
//
//  Created by Chung BD on 3/10/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommonSection : NSObject
@property(nonatomic, assign) int index;
@property(nonatomic,assign) BOOL selected;
@property(nonatomic, copy) NSArray *cells;
@property(nonatomic, copy) id value;

+ (CommonSection *)initiateWithIndex:(int)index withValue:(id)value andCells:(NSArray *)cells ;
@end
