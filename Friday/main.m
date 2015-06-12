//
//  main.m
//  Friday
//
//  Created by Z on 6/11/15.
//  Copyright (c) 2015 dereknetto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>

struct Player {
    
    __unsafe_unretained NSString *name; // used because NSString has issues in struct
    float health;
    float BAC;
    float money;
    BOOL knifeDrawn;
    
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int playerHand;
        int enemyHand;
        
        printf("Select your weapon: \n 1) ROCK \n 2) PAPER \n 3) SCISSORS \n");
        scanf("%i", &playerHand);
        
        enemyHand = arc4random_uniform(3) + 1;
        
        if (enemyHand==1) {
            printf("Enemy chose ROCK. \n");
        }
        else if (enemyHand == 2) {
            printf("Enemy chose PAPER. \n");
        }
        else {
            printf("Enemy chose SCISSORS. \n");
        }
        
        
        
        DELAY(1000);
        
        if ((playerHand == 1 && enemyHand == 3) || (playerHand == 3 && enemyHand == 2) || (playerHand == 2 && enemyHand ==1)) {
            printf("YOU WIN!");
        }
        
        else if (playerHand == enemyHand) {
            printf("It's a DRAW.");
        }
        else {
            printf("YOU LOSE.");
        }
        
    
     
    }
    return 0;
}
