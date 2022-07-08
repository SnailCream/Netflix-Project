//
//  ViewController.swift
//  Netflix Project
//
//  Created by carki on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnWinter: UIButton! //겨울왕국 버튼
    @IBOutlet weak var btnBusan: UIButton! //부산행 버튼
    @IBOutlet weak var btnKing: UIButton! //왕의남자 버튼
    
    @IBOutlet weak var imgMain: UIImageView! //메인 이미지
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnWinter.layer.cornerRadius = 55
        btnBusan.layer.cornerRadius = 55
        btnKing.layer.cornerRadius = 55
        
    }
    
    //겨울왕국 버튼을 눌렀을 때
    @IBAction func btnWinterClicked(_ sender: UIButton) {
        imgMain.image = UIImage(named: "겨울왕국2")
    }
    
    //왕의남자 버튼을 눌렀을 때
    @IBAction func btnKingClicked(_ sender: UIButton) {
        imgMain.image = UIImage(named: "왕의남자")
    }
    
    //부산행 버튼을 눌렀을 때
    @IBAction func btnBusanClicked(_ sender: UIButton) {
        imgMain.image = UIImage(named: "부산행")
    }
    

}

