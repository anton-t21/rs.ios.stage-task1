#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    int i = [number intValue];

    if (i < 0) {
        i = -i;
    }

    NSMutableArray *myArray = [NSMutableArray new];

    while (i > 0) {
        int n = i % 10;
        NSString *strValue = [@(n) stringValue];
        [myArray addObject:strValue];
        i = i / 10;
    }
    return myArray;
}

@end
