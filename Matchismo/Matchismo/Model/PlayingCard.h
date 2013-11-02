//
//  PlayingCard.h
//  Matchismo
//
//  Created by Karsten Schlautmann on 02.11.13.
//  Copyright (c) 2013 KarstensCode. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
