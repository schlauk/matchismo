//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Karsten Schlautmann on 02.11.13.
//  Copyright (c) 2013 KarstensCode. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"



@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@property (strong, nonatomic) Deck *deck;

@end



@implementation CardGameViewController

- (Deck *)deck
{
    if (!_deck) [self createDeck];
    
    return _deck;
}

- (void)createDeck
{
    _deck = [[PlayingCardDeck alloc] init];
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount changed to %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@""
                forState:UIControlStateNormal];
    } else {
        Card *randomCard = [self.deck drawRandomCard];
        if (randomCard) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                              forState:UIControlStateNormal];
            [sender setTitle:randomCard.contents
                    forState:UIControlStateNormal];
        }
    }
    self.flipCount++;
}

@end
