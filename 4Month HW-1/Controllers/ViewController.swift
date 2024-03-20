//
//  ViewController.swift
//  4Month HW-1
//
//  Created by Aslan Toktogulov on 20/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var myImage1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "1")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myStackBack: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myBackLabel: UILabel = {
        let view = UILabel()
        view.text = "Welcome Back"
        view.font = .systemFont(ofSize: 34, weight: .bold)
        view.textColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myBackLabel2: UILabel = {
        let view = UILabel()
        view.text = "Sign in to continue"
        view.font = .systemFont(ofSize: 20, weight: .light)
        view.textColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myView2: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 35
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myLabelView2: UILabel = {
        let view = UILabel()
        view.text = "Employee Id / Email"
        view.font = .systemFont(ofSize: 12, weight: .light)
        view.textColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var reqTF: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 16
        tf.backgroundColor = .systemBackground
        tf.layer.borderColor = UIColor.gray.cgColor
        tf.layer.borderWidth = 2
        tf.placeholder = "Your e-mail address"
        tf.translatesAutoresizingMaskIntoConstraints = false
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        tf.leftView = view
        tf.leftViewMode = .always
        return tf
    }()
    
    private lazy var myLabel2View2: UILabel = {
        let lbl = UILabel()
        lbl.text = "Password"
        lbl.font = .systemFont(ofSize: 12, weight: .light)
        lbl.textColor = .gray
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private lazy var passwordTF: UITextField = {
        let passTF = UITextField()
        passTF.layer.cornerRadius = 16
        passTF.layer.borderColor = UIColor.gray.cgColor
        passTF.layer.borderWidth = 2
        passTF.placeholder = "Password"
        passTF.translatesAutoresizingMaskIntoConstraints = false
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        passTF.leftView = view
        passTF.leftViewMode = .always
        return passTF
    }()
    
    private lazy var frgPswrdBT: UIButton = {
        let frg = UIButton(type: .system)
        frg.setTitle("Forgot Password?", for: .normal)
        frg.tintColor = .systemBlue
        frg.translatesAutoresizingMaskIntoConstraints = false
        return frg
    }()
    
    private lazy var myRememberLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Remember Me"
        lbl.font = .systemFont(ofSize: 18, weight: .medium)
        lbl.textColor = .black
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private lazy var singInBT: UIButton = {
        let sng = UIButton(type: .system)
        sng.backgroundColor = .systemCyan
        sng.setTitle("Sing In", for: .normal)
        sng.tintColor = .white
        sng.layer.cornerRadius = 20
        sng.addTarget(self, action: #selector(showNextView( sender:)), for: .touchUpInside)
        sng.translatesAutoresizingMaskIntoConstraints = false
        return sng
    }()
    
    private lazy var accountLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Don’t have an Account?"
        lbl.textColor = .black
        lbl.font = .systemFont(ofSize: 15, weight: .medium)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private lazy var singUpBT: UIButton = {
        let frg = UIButton(type: .system)
        frg.setTitle("Sign Up", for: .normal)
        frg.tintColor = .systemBlue
        frg.addTarget(self, action: #selector(goNextView( sender:)), for: .touchUpInside)
        frg.translatesAutoresizingMaskIntoConstraints = false
        return frg
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemCyan
        setupImage()
        myStackBack1()
        setupLabel()
        setupLabel2()
        setupLabelView2()
        setupReqTF()
        setupLabel2View2()
        setupPasswordTF()
        setupfrgPswrdBT()
        setupmyRememberLabel()
        setupsingInBT()
        setupsingUpBT()
        
        singInBT.addTarget(self, action: #selector(showNextView), for: .touchUpInside)
        
        singUpBT.addTarget(self, action: #selector(goNextView), for: .touchUpInside)
        
    }
    
    private func setupImage() {
        view.addSubview(myImage1)
        
        NSLayoutConstraint.activate([
            myImage1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            myImage1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            myImage1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            myImage1.heightAnchor.constraint(equalToConstant: 256)
        ])
    }
    private func myStackBack1() {
        view.addSubview(myStackBack)
        
        NSLayoutConstraint.activate([
            myStackBack.topAnchor.constraint(equalTo: myImage1.bottomAnchor, constant: 0),
            myStackBack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            myStackBack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -119),
            myStackBack.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func setupLabel() {
        myStackBack.addArrangedSubview(myBackLabel)
        myStackBack.addArrangedSubview(myBackLabel2)
        
        NSLayoutConstraint.activate([
            myBackLabel.widthAnchor.constraint(equalToConstant: 226),
            myBackLabel.heightAnchor.constraint(equalToConstant: 48),
            myBackLabel2.widthAnchor.constraint(equalToConstant: 165),
            myBackLabel2.heightAnchor.constraint(equalToConstant: 26),
        ])
    }
    
    
    
    private func setupLabel2() {
        view.addSubview(myView2)
        
        NSLayoutConstraint.activate([
            myView2.topAnchor.constraint(equalTo: myStackBack.bottomAnchor, constant: 8),
            myView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            myView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            myView2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            myView2.widthAnchor.constraint(equalToConstant: 360),
            myView2.heightAnchor.constraint(equalToConstant: 600),
        ])
    }
    
    private func setupLabelView2() {
        myView2.addSubview(myLabelView2)
        
        NSLayoutConstraint.activate([
            myLabelView2.topAnchor.constraint(equalTo: myView2.topAnchor, constant: 43),
            myLabelView2.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 23),
            myLabelView2.widthAnchor.constraint(equalToConstant: 193),
            myLabelView2.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    private func setupReqTF() {
        myView2.addSubview(reqTF)
        
        NSLayoutConstraint.activate([
            reqTF.topAnchor.constraint(equalTo: myLabelView2.bottomAnchor, constant: 13),
            reqTF.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 23),
            reqTF.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -16),
            reqTF.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupLabel2View2() {
        myView2.addSubview(myLabel2View2)
        
        NSLayoutConstraint.activate([
            myLabel2View2.topAnchor.constraint(equalTo: reqTF.bottomAnchor, constant: 25),
            myLabel2View2.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 23),
            myLabel2View2.widthAnchor.constraint(equalToConstant: 54),
            myLabel2View2.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    private func setupPasswordTF() {
        myView2.addSubview(passwordTF)
        
        NSLayoutConstraint.activate([
            passwordTF.topAnchor.constraint(equalTo: myLabel2View2.bottomAnchor, constant: 10),
            passwordTF.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 23),
            passwordTF.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -16),
            passwordTF.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupfrgPswrdBT() {
        myView2.addSubview(frgPswrdBT)
        
        NSLayoutConstraint.activate([
            frgPswrdBT.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 3),
            frgPswrdBT.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -22),
            frgPswrdBT.widthAnchor.constraint(equalToConstant: 150),
            frgPswrdBT.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func setupmyRememberLabel() {
        myView2.addSubview(myRememberLabel)
        
        NSLayoutConstraint.activate([
            myRememberLabel.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 41),
            myRememberLabel.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 56),
            myRememberLabel.widthAnchor.constraint(equalToConstant: 122),
            myRememberLabel.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    private func setupsingInBT() {
        myView2.addSubview(singInBT)
        
        NSLayoutConstraint.activate([
            singInBT.topAnchor.constraint(equalTo: myRememberLabel.bottomAnchor, constant: 35),
            singInBT.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 98),
            singInBT.trailingAnchor.constraint(equalTo: myView2.trailingAnchor, constant: -94),
            singInBT.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupsingUpBT() {
        myView2.addSubview(singUpBT)
        myView2.addSubview(accountLabel)
        
        NSLayoutConstraint.activate([
            singUpBT.topAnchor.constraint(equalTo: singInBT.bottomAnchor, constant: 10),
            singUpBT.leadingAnchor.constraint(equalTo: accountLabel.leadingAnchor, constant: 160),
            singUpBT.heightAnchor.constraint(equalToConstant: 16),
            singUpBT.widthAnchor.constraint(equalToConstant: 70),
            
            accountLabel.topAnchor.constraint(equalTo: singInBT.bottomAnchor, constant: 10),
            accountLabel.leadingAnchor.constraint(equalTo: myView2.leadingAnchor, constant: 5),
        ])
    }
    
        @objc func  goNextView( sender: UIButton) {
            navigationController?.pushViewController(ThirdViewController(), animated: true)
        }
    
    
    @objc func showNextView(sender: UIButton) {
        guard let emailText = reqTF.text, !emailText.isEmpty else {
            if let text = reqTF.text, text.count < 6 {
                reqTF.placeholder = "Enter your email"
                reqTF.layer.borderColor = UIColor.red.cgColor
                reqTF.layer.borderWidth = 2
                return
            }
            return
            
        }
        
        guard let passwordText = passwordTF.text, passwordText.count >= 6 else {
            passwordTF.placeholder = "Enter a valid password"
            passwordTF.layer.borderColor = UIColor.red.cgColor
            passwordTF.layer.borderWidth = 2
            return
        }
    
        
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

