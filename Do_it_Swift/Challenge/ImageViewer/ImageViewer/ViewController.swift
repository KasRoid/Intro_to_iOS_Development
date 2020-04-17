//
//  ViewController.swift
//  ImageViewer
//
//  Created by Kas Song on 2020.04.17.
//  Copyright © 2020 Kas Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numImage: Int = 1
    var image1: UIImage?
    var image2: UIImage?
    var image3: UIImage?
    
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        image1 = UIImage(named: "1.jpeg")
        image2 = UIImage(named: "2.jpeg")
        image3 = UIImage(named: "3.png")
        
        imgView.image = image1 // 시작 이미지 할당
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        if numImage < 3 {
            numImage += 1
            switch numImage {
            case 2:
                imgView.image = image2
            case 3:
                imgView.image = image3
            default:
                imgView.image = image1
            }
        }
        else {
            numImage = 3
        }
    }
    
    @IBAction func btnBack(_ sender: UIButton) {
        if numImage > 1 {
            numImage -= 1
            switch numImage {
            case 1:
                imgView.image = image1
            case 2:
                imgView.image = image2
            default:
                imgView.image = image3
            }
        }
        else {
            numImage = 1
        }
    }
    
}

