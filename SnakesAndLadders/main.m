#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        char answerCString;
        printf("To start the game print roll");
        fgets(&answerCString, 255, stdin);
        NSString *result = [NSString stringWithCString:&answerCString
                                              encoding:NSUTF8StringEncoding];
        
        //removes new line and white spaces
        NSCharacterSet *resultSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *usersInp = [result stringByTrimmingCharactersInSet:(NSCharacterSet *)resultSet];
        
        
        while (gameOn == YES) {
            
        }
    }
    return 0;
}
