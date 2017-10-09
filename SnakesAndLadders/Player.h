#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger currentSquare;
@property NSDictionary *gameLogic;
@property BOOL gameOver;

-(void)roll;

@end
