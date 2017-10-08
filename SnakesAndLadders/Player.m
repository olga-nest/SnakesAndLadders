#import "Player.h"

@implementation Player

-(void)roll {
    int diceValue = arc4random_uniform(6);
    NSLog(@"Your result is %d", diceValue);
}

@end
