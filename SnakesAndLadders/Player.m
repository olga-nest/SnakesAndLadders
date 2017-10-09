#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogic = [NSDictionary new];
        _gameLogic = @{@5 : @10, @9: @12, @17: @15, @25 : @50, @33 : @11, @51 : @53, @57 : @32, @58 :@24, @60 : @2, @77 : @75, @81 : @90, @90 : @50};
        
    }
    return self;
}

-(void)roll {
    int diceRandomValue = (arc4random_uniform(6) + 1);
    NSLog(@"Your result is %d", diceRandomValue);
    
    self.currentSquare = self.currentSquare + diceRandomValue;
    
    NSNumber *currentSquareNumber = [NSNumber numberWithInteger:self.currentSquare];
    if ([self.gameLogic objectForKey:currentSquareNumber] != nil) {
     //   self.currentSquare = [[self.gameLogic objectForKey:currentSquareNumber] integerValue];
        if (self.currentSquare > [[self.gameLogic objectForKey:currentSquareNumber] integerValue]) {
            self.currentSquare = [[self.gameLogic objectForKey:currentSquareNumber] integerValue];
            NSLog(@"Oops! Snake! Now you are on square: %ld", (long)self.currentSquare);
        } else  if ((self.currentSquare < [[self.gameLogic objectForKey:currentSquareNumber] integerValue])) {
            self.currentSquare = [[self.gameLogic objectForKey:currentSquareNumber] integerValue];
            NSLog(@"Yay! Ladder! Now you are on square %ld", (long)self.currentSquare);
        }
        self.currentSquare = self.currentSquare;
        
    } else {
       NSLog(@"Now you are on square %ld", (long)self.currentSquare);
    }
}

@end
