//
//  ViewController.swift
//  ButinDV_HW2.7
//
//  Created by Dmitriy Butin on 20.02.2020.
//  Copyright © 2020 Dmitriy Butin. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {
    
    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var otherInfoLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personNameLabel.text = "\(person.firstName) \(person.secondName)"
        otherInfoLabel.text = "E-mail: \(person.mail)\n\nPhone: \(person.phoneNumber)"
        
    }


}

