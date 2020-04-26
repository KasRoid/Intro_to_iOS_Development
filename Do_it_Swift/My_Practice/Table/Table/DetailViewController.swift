//
//  DetailViewController.swift
//  Table
//
//  Created by Kas Song on 2020.04.26.
//  Copyright © 2020 Kas Song. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // 입력받은 텍스트를 저장할 변수
    var receiveItem = ""
    
    // DetailView 의 Label 을 선언한 변수
    @IBOutlet var lblItem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 입력받은 텍스트 변수를 DetailView 의 Label 에 할당한다.
        lblItem.text = receiveItem
    }
    
    // itme 변수에 입력된 내용을 receiveItem 에 할당받는다.
    func receiveItem(_ item: String) {
        receiveItem = item
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
