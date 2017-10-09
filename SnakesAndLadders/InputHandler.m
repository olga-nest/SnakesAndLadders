#import "InputHandler.h"

@implementation InputHandler

int buf = 50;

-(int)getNumberOfPlayers {
    
    char answerCString1[buf];
    printf("Input the number of players \n > ");
    fgets(answerCString1, buf, stdin);
    NSString *result1 = [NSString stringWithCString:answerCString1
                                           encoding:NSUTF8StringEncoding];
    //removes new line and white spaces
    NSCharacterSet *resultSet1 = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *numberOfPlayersInput = [result1 stringByTrimmingCharactersInSet:(NSCharacterSet *)resultSet1];
    int numberOfPlayers = [numberOfPlayersInput intValue];
    
    return numberOfPlayers;

    
}

-(NSString *)getGameCommands {
    char answerCString[buf];
    printf("To start the game print roll \n > ");
    fgets(answerCString, buf, stdin);
    NSString *result = [NSString stringWithCString:answerCString
                                          encoding:NSUTF8StringEncoding];
    //removes new line and white spaces
    NSCharacterSet *resultSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *usersInp = [result stringByTrimmingCharactersInSet:(NSCharacterSet *)resultSet];
    
    return usersInp;
}


@end
