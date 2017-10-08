#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogic = [NSDictionary new];
        _gameLogic = @{@5 : @10, @9: @12, @17: @15, @25 : @50, @33 : @11};
        
    }
    return self;
}

-(void)roll {
    int diceRandomValue = (arc4random_uniform(6) + 1);
    NSLog(@"Your result is %d", diceRandomValue);
    
    self.currentSquare = self.currentSquare + diceRandomValue;
//    NSLog(@"New current square is: %ld", (long)self.currentSquare);
    
    NSNumber *currentSquareNumber = [NSNumber numberWithInteger:self.currentSquare];
    if ([self.gameLogic objectForKey:currentSquareNumber] != nil) {
        self.currentSquare = [[self.gameLogic objectForKey:currentSquareNumber] integerValue];
        NSLog(@"Oops! snake! New current square is: %ld", (long)self.currentSquare);
        self.currentSquare = self.currentSquare;
    } else {
       NSLog(@"New current square is: %ld", (long)self.currentSquare);
    }
}

@end



//dict = @{ k1 : o1, k2 : o2, k3 : o3 };
//[songDict setObject:@"2 minutes" forKey:@"durationKey"];
