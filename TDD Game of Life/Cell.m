//
//  Cell.m
//  TDD Game of Life
//
//  Created by Italo Chesley Gomes da Silva on 9/19/16.
//  Copyright © 2016 Italo Chesley Gomes da Silva. All rights reserved.
//

#import "Cell.h"


@implementation Cell

- (BOOL)isAlive
{
    return [self aliveState];
}
- (void)resurrect
{
    [self setAliveState:YES];
}
- (void)kill
{
    [self setAliveState:NO];
}
@end
