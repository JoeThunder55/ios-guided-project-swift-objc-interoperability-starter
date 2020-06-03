//
//  ContactsController.m
//  Contacts-Hybrid
//
//  Created by Joe on 6/2/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ContactsController.h"

@interface ContactsController ()
    
@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation ContactsController

- (instancetype)init
{
    if (self = [super init]) {
        _internalContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)contacts
{
    return _internalContacts.copy;
}

@end
