#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    if (self.count == 0) {
        return nil;
    } else {
        float maxElement = -MAXFLOAT;
        float minElement = MAXFLOAT;

        for (NSNumber *num in self) {
            float x = num.floatValue;
            if (x < minElement) minElement = x;
            if (x > maxElement) maxElement = x;
        }
        return [NSNumber numberWithFloat: minElement];
    }
}

@end
