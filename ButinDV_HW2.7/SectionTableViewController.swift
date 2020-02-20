//
//  SectionTableViewController.swift
//  ButinDV_HW2.7
//
//  Created by Dmitriy Butin on 20.02.2020.
//  Copyright © 2020 Dmitriy Butin. All rights reserved.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    var persons:[Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(persons)
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(persons[section].firstName) \(persons[section].secondName)"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionCell")
        
        if indexPath.row == 0 {
            cell?.textLabel?.text = persons[indexPath.section].phoneNumber
            cell?.textLabel?.textColor = .label
        } else {
            cell?.textLabel?.text = persons[indexPath.section].mail
            cell?.textLabel?.textColor = .systemBlue
        }
        
        return cell!
    }
    
    
    
}
