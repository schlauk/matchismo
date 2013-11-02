//
//  Card.h
//  Matchismo
//
//  Created by Karsten Schlautmann on 02.11.13.
//  Copyright (c) 2013 KarstensCode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
