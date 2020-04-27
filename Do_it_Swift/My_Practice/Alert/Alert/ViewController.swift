//
//  ViewController.swift
//  Alert
//
//  Created by Kas Song on 2020.04.27.
//  Copyright © 2020 Kas Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imgOn = UIImage(named: "lamp-on.png")
    let imgOff = UIImage(named: "lamp-off.png")
    let imgRemove = UIImage(named: "lamp-remove.png")
    var isLampOn = true
    
    @IBOutlet var lampImg: UIImageView!
    @IBOutlet var btnOn: UIButton!
    @IBOutlet var btnOff: UIButton!
    @IBOutlet var btnRemove: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        btnOn.setTitle("켜기", for: .normal)
        btnOff.setTitle("끄기", for: .normal)
        btnRemove.setTitle("제거", for: .normal)
        
        lampImg.image = imgOn // 램프의 이미지의 변수를 램프뷰에 할당
    }
    
    @IBAction func btnLampOn(_ sender: UIButton) {
        if(isLampOn) {
            // UIAlertController 생성
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다", preferredStyle: UIAlertController.Style.alert)
            // Alert 에 대한 사용자의 동작 설정. 특별한 동작이 필요없을 경우 handler 를 nil 로 설정한다.
            let onAction = UIAlertAction(title: "알겠습니다", style: UIAlertAction.Style.default, handler: nil)
            // 생성된 사용자 동작 설정을 UIAlertController 에 연결한다.
            lampOnAlert.addAction(onAction)
            // present 메서드를 실행한다.
            present(lampOnAlert, animated: true, completion: nil)
        }
        else {
            lampImg.image = imgOn
            isLampOn = true
        }
    }
    @IBAction func btnLampOff(_ sender: UIButton) {
        if(!isLampOn) {
            let lampOffAlert = UIAlertController(title: "경고", message: "현재 Off 상태입니다. 램프를 켜시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            // 사용자의 선택에 따라 적절한 동작을 실행한다. Handler 에 중괄호로 필요한 동작을 입력하며 변수에는 반드시 self 를 붙여야 한다.
            let onAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImg.image = self.imgOn
                self.isLampOn = true
            })
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            
            // 생성한 사용자 선택 메세지를 경고메세지에 연결한다.
            lampOffAlert.addAction(onAction)
            lampOffAlert.addAction(cancelAction)
            
            present(lampOffAlert, animated: true, completion: nil)
        }
        else {
            lampImg.image = imgOff
            isLampOn = false
        }
    }
    @IBAction func btnLampRemove(_ sender: UIButton) {
        let lampRemoveAlert = UIAlertController(title: "경고", message: "램프를 정말 제거하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
        let onAction = UIAlertAction(title: "아니오. 켜겠습니다", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImg.image = self.imgOn; self.isLampOn = true})
        let offAction = UIAlertAction(title: "아니오. 끄겠습니다", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImg.image = self.imgOff; self.isLampOn = false})
        let removeAction = UIAlertAction(title: "네 제거합니다", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImg.image = self.imgRemove; self.isLampOn = false})
        
        lampRemoveAlert.addAction(onAction)
        lampRemoveAlert.addAction(offAction)
        lampRemoveAlert.addAction(removeAction)
        
        present(lampRemoveAlert, animated: true, completion: nil)
    }
}

