//
//  SignUpViewController.swift
//  Netflix Project
//
//  Created by carki on 2022/07/07.
//

import UIKit

extension UITextField {
    func setPlaceholder(color: UIColor) {
        guard let string = self.placeholder else {
            return
        }
        attributedPlaceholder = NSAttributedString(string: string, attributes: [.foregroundColor: color])
    }
}

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel! //제목 레이블
    @IBOutlet var textFieldCollection: [UITextField]!//userTextField Collection
    @IBOutlet weak var signupBtn: UIButton! //회원가입 버튼
    @IBOutlet weak var inputLabel: UILabel!//추가 정보 입력 레이블
    @IBOutlet weak var switchUi: UISwitch!//스위치
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        inputLabel.textColor = .white
        
        textFieldDesign()
        titleLabelDesign(label: titleLabel)
        btnDesign(btnId: signupBtn, btnContent: "회원가입")
        
        switchUi.onTintColor = .red
        switchUi.setOn(false, animated: true)
        switchUi.thumbTintColor = .white
    }
    
    //텍스트필드 디자인(텍스트필드id, placeholder 텍스트)
    func textFieldDesign() {
        let place_holderArr = ["이메일 주소 또는 전화번호", "비밀번호", "닉네임", "위치", "추천 코드 입력"]
        for i in 0..<textFieldCollection.count {
            textFieldCollection[i].backgroundColor = .gray
            textFieldCollection[i].placeholder = place_holderArr[i]
            textFieldCollection[i].setPlaceholder(color: .white)
            textFieldCollection[i].textAlignment = .center
        }
    }
    
    func titleLabelDesign(label: UILabel) {
        label.text = "NFLIX"
        label.textAlignment = .center
        label.textColor = .red
        label.font = .boldSystemFont(ofSize: 50)
    }

    //버튼 디자인(버튼id, 버튼 텍스트)
    func btnDesign(btnId: UIButton, btnContent: String) {
        btnId.setTitle(btnContent, for: .normal) //버튼 텍스트
        btnId.setTitleColor(.black, for: .normal) // 버튼 텍스트 색
        btnId.backgroundColor = .white // 버튼 배경 색
        btnId.layer.cornerRadius = 5 // 모서리 둥글기 정도
    }
    
    //회원가입 버튼 클릭
    @IBAction func btnClicked(_ sender: UIButton) {
        view.endEditing(true)
    }
    
    //루트 뷰 클릭 제스쳐
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    @IBAction func idTextFieldClicked(_ sender: UITextField) {
        textFieldCollection[0].placeholder = ""
        
        
        if textFieldCollection[0].text == ""  && textFieldCollection[0].placeholder == "" {
            textFieldCollection[0].placeholder = "ID는 필수로 입력해주셔야 합니다."
            textFieldCollection[0].setPlaceholder(color: .red)
        }
    }
    
    @IBAction func passwordTextFieldClicked(_ sender: UITextField) {
        textFieldCollection[1].placeholder = ""
        
        if textFieldCollection[1].text == ""  && textFieldCollection[1].placeholder == "" {
            textFieldCollection[1].placeholder = "PW는 필수로 입력해주셔야 합니다."
            textFieldCollection[1].setPlaceholder(color: .red)
            
//            if textFieldCollection[1].text.count < 6 {
//                textFieldCollection[1].placeholder = "PW는 최소 6자 이상으로 입력해주셔야 합니다."
//            }
        }
    }
    
    
}
