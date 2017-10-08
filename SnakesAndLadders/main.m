#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        Player *player = [[Player alloc]init];
        
        char answerCString;
        printf("To start the game print roll \n > ");
        fgets(&answerCString, 255, stdin);
        NSString *result = [NSString stringWithCString:&answerCString
                                              encoding:NSUTF8StringEncoding];
        //removes new line and white spaces
        NSCharacterSet *resultSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *usersInp = [result stringByTrimmingCharactersInSet:(NSCharacterSet *)resultSet];
    
        while (gameOn == YES) {
            if ([usersInp isEqual: @"roll"]) {
                [player roll];
            }

        }

    }
    return 0;
}
