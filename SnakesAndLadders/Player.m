#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
    }
    return self;
}

-(void)roll {
    int diceRandomValue = (arc4random_uniform(6) + 1);
    NSLog(@"Your result is %d", diceRandomValue);
    
    self.currentSquare = self.currentSquare + diceRandomValue;
    NSLog(@"New current square is: %ld", (long)self.currentSquare);
}

@end
