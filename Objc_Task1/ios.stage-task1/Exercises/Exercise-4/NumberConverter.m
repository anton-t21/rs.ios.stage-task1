#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    int intNumber = [number intValue];

    if (intNumber < 0) {
        intNumber = -intNumber;
    }

    NSMutableArray *resultArray = [NSMutableArray new];

    while (intNumber > 0) {
        int intLastSymbol = intNumber % 10;
        NSString *strValue = [@(intLastSymbol) stringValue];
        [resultArray addObject:strValue];
        intNumber = intNumber / 10;
    }
    return resultArray;
}

@end
