#import <Foundation/Foundation.h>
#import "Player.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        int buf = 50;
        
        PlayerManager *playerManager = [[PlayerManager alloc]init];
        Player *player = [[Player alloc]init];
        
        
        
        char answerCString1[buf];
        printf("Input the number of players \n > ");
        fgets(answerCString1, buf, stdin);
        NSString *result1 = [NSString stringWithCString:answerCString1
                                              encoding:NSUTF8StringEncoding];
        //removes new line and white spaces
        NSCharacterSet *resultSet1 = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *numberOfPlayersInput = [result1 stringByTrimmingCharactersInSet:(NSCharacterSet *)resultSet1];
            int numberOfPlayers = [numberOfPlayersInput intValue];
            [playerManager createPlayers:numberOfPlayers];
        if ([playerManager.players count] == 0)  {
       //FIX ME! handle 0 players flow
            [playerManager createPlayers:numberOfPlayers];
        } else {
        
        char answerCString[buf];
        printf("To start the game print roll \n > ");
        fgets(answerCString, buf, stdin);
        NSString *result = [NSString stringWithCString:answerCString
                                              encoding:NSUTF8StringEncoding];
        //removes new line and white spaces
        NSCharacterSet *resultSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *usersInp = [result stringByTrimmingCharactersInSet:(NSCharacterSet *)resultSet];
     
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
