//
//  LSIPersonSearchTableViewController.m
//  Hybrid Star Wars Search
//
//  Created by Spencer Curtis on 1/28/19.
//  Copyright © 2019 Spencer Curtis. All rights reserved.
//

#import "LSIPersonSearchTableViewController.h"
#import "LSIPerson.h"

// TODO: 1. Add both PersonController.swift and PersonTableViewCell.swift to the target
// TODO: 2. Fix the missing class using the bridging header issue
// TODO: 3. Import the Auto-generated "Module_Name-Swift.h" header file (always in the .m file)

@interface LSIPersonSearchTableViewController () <UISearchBarDelegate>

@property (nonatomic) NSArray<LSIPerson *> *people;

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation LSIPersonSearchTableViewController

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
	// TODO: Implement number of rows
	
	return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

	
	// TODO: Implement a custom cell named PersonTableViewCell.swift
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonCell" forIndexPath:indexPath];
    
	// TODO: Set the cell to the current Person object
	
	
    return cell;
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
    [LSIPersonController.shared searchForPeopleWith:searchBar.text
                                         completion:^(NSArray<LSIPerson *> *people, NSError *error) {
        if (error) {
            NSLog(@"Error searching for %@: %@", searchBar.text, error);
        }
        self.people = people;
        [self.tableView reloadData];
    }];
}

@end
