#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {

    if ([self length] > 0 && [self length] <= 100) {
        NSCharacterSet* nonNumbers = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
        NSRange range = [self rangeOfCharacterFromSet: nonNumbers];
        return range.location == NSNotFound;
    } else {
        return false;
    }
}

@end
