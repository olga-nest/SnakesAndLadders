#import "PlayerManager.h"
#import "Player.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray new];
    }
    return self;
}

-(void)createPlayers: (int) numberOfPlayers {
    for (int i = 1; i < numberOfPlayers; i++) {
        NSString *createPlayerName = [NSString stringWithFormat:@"Player%d", i];
        Player *newPlayer = [[Player alloc]initWithName:createPlayerName];
        [self.players addObject:newPlayer];
    }
}

@end
