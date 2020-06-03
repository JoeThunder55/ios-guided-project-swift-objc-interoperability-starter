//
//  LSIPerson.h
//  Hybrid Star Wars Search
//
//  Created by Spencer Curtis on 1/28/19.
//  Copyright © 2019 Spencer Curtis. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_SWIFT_NAME(Person)

@interface LSIPerson : NSObject

// TODO: Add nullabilty annotations

@property (nonatomic, copy, readonly, nonnull) NSString *name;
@property (nonatomic, copy, readonly, nonnull) NSString *birthYear;
@property (nonatomic, readonly) double height;
@property (nonatomic, copy, readonly, nonnull) NSString *eyeColor;

- (nonnull instancetype)initWithName:(nonnull NSString *)name
                   birthYear:(nonnull NSString *)birthYear
                      height:(double)height
                    eyeColor:(nonnull NSString *)eyeColor;

- (nullable instancetype)initWithDictionary:(nonnull NSDictionary *)dictionary;

@end
