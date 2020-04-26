//
//  AddViewController.swift
//  Table
//
//  Created by Kas Song on 2020.04.26.
//  Copyright © 2020 Kas Song. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet var tfAddItem: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnAddItem(_ sender: UIButton) {
        items.append(tfAddItem.text!) // 텍스트 필드의 값을 추가한다.
        itemsImageFile.append("clock.png") // 지정된 이미지 파일을 추가한다.
        tfAddItem.text = "" // 텍스트 필드의 내용을 지운다.
        _ = navigationController?.popViewController(animated: true) // TableView 로 되돌아가게 한다.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
