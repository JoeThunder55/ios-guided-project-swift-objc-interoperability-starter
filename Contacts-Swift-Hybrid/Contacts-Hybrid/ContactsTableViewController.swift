//
//  ContactsTableViewController.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 12/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit


class ContactsTableViewController: UITableViewController {
    
    let contactsController = ContactsController()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
	}
	
	
	// MARK: UITableViewDataSource methods
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TODO: Implement controller count
		return 0
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        
        // TODO: Implement display logic
		
		return cell
	}

}
