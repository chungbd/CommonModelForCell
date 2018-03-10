//
//  CommonSection.m
//  SampleForCommonCell
//
//  Created by Chung BD on 3/10/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

#import "CommonSection.h"

@implementation CommonSection
+ (CommonSection *)initiateWithIndex:(int)index withValue:(id)value andCells:(NSArray *)cells {
    CommonSection *section = [[CommonSection alloc] init];
    
    section.index = index;
    section.value = value;
    section.cells = cells;
    
    section.selected = NO;
    
    return section;
}

@end
