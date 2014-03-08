//
//  UKKit
//

#import <Foundation/Foundation.h>

@interface UKBundle : NSObject

@end

#define NSLocalisedString(key, comment) \
[[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]
#define NSLocalisedStringFromTable(key, tbl, comment) \
[[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:(tbl)]
#define NSLocalisedStringFromTableInBundle(key, tbl, bundle, comment) \
[bundle localizedStringForKey:(key) value:@"" table:(tbl)]
#define NSLocalisedStringWithDefaultValue(key, tbl, bundle, val, comment) \
[bundle localizedStringForKey:(key) value:(val) table:(tbl)]