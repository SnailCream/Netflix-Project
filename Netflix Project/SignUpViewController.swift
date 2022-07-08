//
//  SignUpViewController.swift
//  Netflix Project
//
//  Created by carki on 2022/07/07.
//

import UIKit

//텍스트필드 디자인(텍스트필드id, placeholder 텍스트)
func textFieldDesign(textField: UITextField, placeholderContent: String) {
    //placeholder + color
    textField.attributedPlaceholder = NSAttributedString(string: placeholderContent, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    textField.textColor = .white // 입력될 내용의 색상
    textField.keyboardType = .default // 키보드 타입
    textField.textAlignment = .center // 정렬
    textField.borderStyle = .roundedRect // 모서리 스타일
    textField.backgroundColor = .gray // 배경색
    
}

//버튼 디자인(버튼id, 버튼 텍스트)
func btnDesign(btnId: UIButton, btnContent: String) {
    btnId.setTitle(btnContent, for: .normal) //버튼 텍스트
    btnId.setTitleColor(.black, for: .normal) // 버튼 텍스트 색
    btnId.backgroundColor = .white // 버튼 배경 색
    btnId.layer.cornerRadius = 10 // 모서리 둥글기 정도
}
    
    
//}

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel! //제목 레이블
    
    //회원가입 항목 텍스트필드
    @IBOutlet weak var idTextField: UITextField! //id
    @IBOutlet weak var passwordTextField: UITextField! //pw
    @IBOutlet weak var nicknameTextField: UITextField! //name
    @IBOutlet weak var locationTextField: UITextField! //location
    @IBOutlet weak var codeTextField: UITextField!  //code
    
    //회원가입 버튼
    @IBOutlet weak var signupBtn: UIButton!
    
    //추가 정보 입력 레이블
    @IBOutlet weak var inputLabel: UILabel!
    
    //스위치
    @IBOutlet weak var switchUi: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        titleLabel.textColor = .red
        inputLabel.textColor = .white
        
        textFieldDesign(textField: idTextField, placeholderContent: "이메일 주소 또는 전화번호")
        textFieldDesign(textField: passwordTextField, placeholderContent: "비밀번호")
        textFieldDesign(textField: nicknameTextField, placeholderContent: "닉네임")
        textFieldDesign(textField: locationTextField, placeholderContent: "위치")
        textFieldDesign(textField: codeTextField, placeholderContent: "추천 코드 입력")
        
        btnDesign(btnId: signupBtn, btnContent: "회원가입")
        
        switchUi.onTintColor = .red
        switchUi.setOn(false, animated: true)
        switchUi.thumbTintColor = .white
    }
    
    //회원가입 버튼 클릭
    @IBAction func btnClicked(_ sender: UIButton) {
        view.endEditing(true)
    }
    
    //루트 뷰 클릭 제스쳐
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}
