#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger currentSquare;
@property NSDictionary *gameLogic;
@property BOOL gameOver;
@property NSString *output;
@property NSString *name;

-(void)roll;
-(instancetype)initWithName: (NSString *) name;

@end
