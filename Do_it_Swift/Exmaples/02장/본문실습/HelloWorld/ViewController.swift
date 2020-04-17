//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ho-Jeong Song on 17/09/2019.
//  Copyright © 2019 Ho-Jeong Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblHello: UILabel!
    @IBOutlet var txtName: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
    }
    
}

