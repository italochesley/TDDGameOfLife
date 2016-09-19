//
//  CellSpec.m
//  TDD Game of Life
//
//  Created by Italo Chesley Gomes da Silva on 9/19/16.
//  Copyright © 2016 Italo Chesley Gomes da Silva. All rights reserved.
//

#import "Specta/Specta.h"
#define EXP_SHOWTHAND
#import "Expecta.h"
#import "Cell.h"

SpecBegin(Cell)
describe(@"Cell", ^
{
    it(@"is dead on creation", ^{
        Cell *cell = [[Cell alloc]init];
        expect([cell isAlive]).to.equal(NO);
    });
    it(@"is alive when brought to life", ^{
        Cell *cell = [[Cell alloc]init];
        [cell resurrect];
        expect([cell isAlive]).to.equal(YES);
    });
    it(@"is dead when killed after being brought to life", ^
    {
        Cell *cell = [[Cell alloc]init];
        [cell resurrect];
        [cell kill];
        expect([cell isAlive]).to.equal(NO);
    });
});
SpecEnd

