//
//  OnlyCellTableViewController.swift
//  ButinDV_HW2.7
//
//  Created by Dmitriy Butin on 20.02.2020.
//  Copyright © 2020 Dmitriy Butin. All rights reserved.
//

import UIKit

class OnlyCellTableViewController: UITableViewController {
    
    var persons:[Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        createRandomArray()
        (tabBarController?.viewControllers?.last as! SectionTableViewController).persons = self.persons
    }

    func createRandomArray() -> [Person] {
        let maxCount = nameArray.count
        var randomIndexName: Int = 0
        var randomIndexSecondName: Int = 0
        var randomIndexPhone: Int = 0
        var randomIndexMail: Int = 0
        for _ in 0..<maxCount {
            randomIndexName = Int.random(in: 0..<nameArray.count)
            randomIndexSecondName = Int.random(in: 0..<secondNameArray.count)
            randomIndexPhone = Int.random(in: 0..<phoneNumberArray.count)
            randomIndexMail = Int.random(in: 0..<mailArray.count)
            persons.append(Person(firstName: nameArray[randomIndexName],
                                  secondName: secondNameArray[randomIndexSecondName],
                                  phoneNumber: phoneNumberArray[randomIndexPhone],
                                  mail: mailArray[randomIndexMail]))
            nameArray.remove(at: randomIndexName)
            secondNameArray.remove(at: randomIndexSecondName)
            phoneNumberArray.remove(at: randomIndexPhone)
            mailArray.remove(at: randomIndexMail)
        }
        return persons
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "onlyCell", for: indexPath)

        cell.textLabel?.text = "\(persons[indexPath.row].firstName) \(persons[indexPath.row].secondName)"
        return cell
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! PersonViewController
            detailVC.person = persons[indexPath.row]
        }
    }

   
   
}
