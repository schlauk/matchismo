//
//  Deck.h
//  Matchismo
//
//  Created by Karsten Schlautmann on 02.11.13.
//  Copyright (c) 2013 KarstensCode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
