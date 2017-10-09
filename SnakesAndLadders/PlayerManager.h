#import <Foundation/Foundation.h>

@interface PlayerManager : NSObject

@property NSMutableArray *players;

-(void)createPlayers: (int) numberOfPlayers;

@end
