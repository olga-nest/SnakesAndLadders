#import <Foundation/Foundation.h>
#import "Player.h"
#import "PlayerManager.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        InputHandler *inputHandler = [[InputHandler alloc]init];
        PlayerManager *playerManager = [[PlayerManager alloc]init];
        Player *player = [[Player alloc]init];
        
        int numberOfPlayers = [inputHandler getNumberOfPlayers];
        [playerManager createPlayers:numberOfPlayers];
        if ([playerManager.players count] == 0)  {
       //FIX ME! handle 0 players flow
            [playerManager createPlayers:numberOfPlayers];
        } else {
        
        NSString *usersInp = [inputHandler getGameCommands];
     
        while (gameOn == YES) {
            if ([usersInp isEqual: @"roll"] || [usersInp isEqual: @"r"]) {
               [player roll];
                if ([player gameOver] == NO) {
                    [player roll];
                } else if ([player gameOver] == YES) {
                    NSLog(@"Game is over!");
                    gameOn = NO;
                }

            }

        }

    }
    }
    return 0;
}
