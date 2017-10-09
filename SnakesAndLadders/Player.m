#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogic = [NSDictionary new];
        _gameLogic = @{@5 : @10, @9: @12, @17: @15, @25 : @50, @33 : @11, @51 : @53, @57 : @32, @58 :@24, @60 : @2, @77 : @75, @81 : @90, @90 : @50};
        _gameOver = NO;
        
    }
    return self;
}

-(void)roll {
    int diceRandomValue = (arc4random_uniform(6) + 1);
    NSLog(@"Your rolled a %d", diceRandomValue);
    
    self.currentSquare = self.currentSquare + diceRandomValue;
    
    if (self.currentSquare >= 100) {
        NSLog(@"You won!");
        self.gameOver = YES;
    } else {

    NSNumber *currentSquareNumber = [NSNumber numberWithInteger:self.currentSquare];
    
    if ([self.gameLogic objectForKey:currentSquareNumber] != nil) {
        if (self.currentSquare > [[self.gameLogic objectForKey:currentSquareNumber] integerValue]) {
            NSLog(@"Oops! Snake! You fall from %ld to %ld", self.currentSquare, [[self.gameLogic objectForKey:currentSquareNumber] integerValue]);
            self.currentSquare = [[self.gameLogic objectForKey:currentSquareNumber] integerValue];
        } else  if ((self.currentSquare < [[self.gameLogic objectForKey:currentSquareNumber] integerValue])) {
            NSLog(@"Yay! Ladder! You jumped from %ld to %ld", (long)self.currentSquare, [[self.gameLogic objectForKey:currentSquareNumber] integerValue]);
            self.currentSquare = [[self.gameLogic objectForKey:currentSquareNumber] integerValue];
        }
        self.currentSquare = self.currentSquare;
    } else {
       NSLog(@"You landed on %ld", (long)self.currentSquare);
    }
}
}

@end
