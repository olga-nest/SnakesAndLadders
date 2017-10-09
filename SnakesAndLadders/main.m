#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        Player *player = [[Player alloc]init];
        
        int buf = 50;
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
    return 0;
}
