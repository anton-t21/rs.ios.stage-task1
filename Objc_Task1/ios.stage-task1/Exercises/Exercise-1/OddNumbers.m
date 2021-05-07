//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    int numbers = 0;

        for (NSNumber *key in array) {

            int object = [key intValue];

            if ( object % 2 != 0 ) {
                numbers++;
            }
        }

        return numbers;
}

@end
