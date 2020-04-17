//
//  ViewController.swift
//  HelloWorld
//
//  Created by Kas Song on 2020.04.17.
//  Copyright © 2020 Kas Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var IbHello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnSend(_ sender: UIButton) {
        IbHello.text = "Hello, " + txtName.text!
    }
}

