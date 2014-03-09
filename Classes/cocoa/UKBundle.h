//
//  UKKit
//

#import <Foundation/Foundation.h>

@interface UKBundle : NSObject

@end

#define NSLocalisedString(key, comment) \
NSLocalizedString(key,comment)

#define NSLocalisedStringFromTable(key, tbl, comment) \
NSLocalizedStringFromTable(key, tbl, comment)

#define NSLocalisedStringFromTableInBundle(key, tbl, bundle, comment) \
NSLocalizedStringFromTableInBundle(key, tbl, bundle, comment)

#define NSLocalisedStringWithDefaultValue(key, tbl, bundle, val, comment) \
NSLocalizedStringWithDefaultValue(key, tbl, bundle, val, comment)