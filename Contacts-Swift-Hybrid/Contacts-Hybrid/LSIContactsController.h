//
//  ContactsController.h
//  Contacts-Hybrid
//
//  Created by Joe on 6/2/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LSIContact;

NS_ASSUME_NONNULL_BEGIN
//Changes Name in OBJC if we refactor in Swift
NS_SWIFT_NAME(LSIContactsController)

@interface LSIContactsController : NSObject

@property (nonatomic, readonly, copy, nonnull) NSArray<LSIContact *> *contacts;

- (nonnull LSIContact *)contactAtIndex:(NSInteger)index;

@property (nonatomic, readonly) NSInteger contactCount;

@end

NS_ASSUME_NONNULL_END
