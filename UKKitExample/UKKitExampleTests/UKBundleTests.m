//
//  UKKitDemo
//

#import <XCTest/XCTest.h>
#import <UKKit/UKKit.h>

@interface UKBundleTests : XCTestCase

@property (nonatomic, strong) NSString *key;
@property (nonatomic, strong) NSString *table;
@property (nonatomic, strong) NSBundle *bundle;

@end

@implementation UKBundleTests

- (void)setUp
{
    [super setUp];
	_key = @"example";
	_table = @"LocalizableTable";
	_bundle = [NSBundle bundleForClass:[self class]];
}

- (void)tearDown
{
	_key = nil;
	_table = nil;
	_bundle = nil;
    [super tearDown];
}

#pragma mark - Bundle Resource Tests

- (void)testLocalizableStrings_AreLocalized {
	XCTAssertNotEqualObjects(NSLocalizedString(_key, nil), _key);
	XCTAssertNotEqualObjects(NSLocalizedStringFromTable(_key, _table, nil), _key);
	XCTAssertNotEqualObjects(NSLocalizedStringFromTableInBundle(_key, nil, _bundle, nil), _key);
}

#pragma mark - NSLocalisedString Tests

- (void)testLocalisedString_EqualsLocaliZedString
{
	XCTAssertEqualObjects(NSLocalisedString(_key, nil), NSLocalizedString(_key, nil));
}

- (void)testLocalisedStringFromTable_EqualsDefinedLocaliZedString
{
	XCTAssertEqualObjects(NSLocalisedStringFromTable(_key, _table, nil), NSLocalizedStringFromTable(_key, _table, nil));
}

- (void)testLocalisedStringFromTableInBundle_EqualsLocaliZedString
{
	XCTAssertEqualObjects(NSLocalisedStringFromTableInBundle(_key, nil, _bundle, nil), NSLocalizedStringFromTableInBundle(_key, nil, _bundle, nil));
}

- (void)testLocalisedStringWithDefault_WhenKeyUndefined_EqualsDefault
{
	XCTAssertEqualObjects( NSLocalisedStringWithDefaultValue(@"", nil, [NSBundle mainBundle], @"xyz", nil), @"xyz");
}

- (void)testLocalisedStringWithDefault_WhenKeyDefined_EqualsLocaliZedString
{
	XCTAssertEqualObjects( NSLocalisedStringWithDefaultValue(_key, nil, [NSBundle mainBundle], @"xyz", nil), NSLocalisedStringWithDefaultValue(_key, nil, [NSBundle mainBundle], @"xyz", nil));
}

@end
