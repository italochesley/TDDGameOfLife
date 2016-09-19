//
//  Cell.h
//  TDD Game of Life
//
//  Created by Italo Chesley Gomes da Silva on 9/19/16.
//  Copyright © 2016 Italo Chesley Gomes da Silva. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cell : NSObject

- (BOOL)isAlive;
- (void)resurrect;
- (void)kill;
@property  (nonatomic) BOOL aliveState;
@end
