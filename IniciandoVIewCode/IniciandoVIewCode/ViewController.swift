//
//  ViewController.swift
//  IniciandoVIewCode
//
//  Created by Kevin Longue on 14/02/23.
//

import UIKit
import Foundation

    
class ViewController: UIViewController {
    
    var mainView: UIView = {
        let main = UIView()
        
        main.translatesAutoresizingMaskIntoConstraints = false
        main.backgroundColor = .white
            return main
        }()
    
    var bgYellow: UIView = {
        let background = UIView()
        
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1)
            return background
        }()
    
    var imageBall: UIImageView = {
        let balls = UIImageView()
        
        balls.image = UIImage(named: "bolas.png")
        balls.translatesAutoresizingMaskIntoConstraints = false
            return balls
        }()
    
    var logoInitial: UIImageView = {
       let logoImage = UIImageView()
        
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.image = UIImage(named: "logomainlogin.png")
        logoImage.contentMode = .scaleAspectFit
            return logoImage
        }()
    
    var labelLogin: UILabel = {
       let loginText = UILabel()
        
        loginText.translatesAutoresizingMaskIntoConstraints = false
        loginText.text = "Usuário"
        loginText.font = UIFont.boldSystemFont(ofSize: 17)
        loginText.textColor = UIColor(red: 69/255, green: 47/255, blue: 20/255, alpha: 1)
            return loginText
        }()
    
    
    var tfLogin: UITextField = {
       let login = UITextField()
        
        login.translatesAutoresizingMaskIntoConstraints = false
        login.layer.cornerRadius = 10
        login.textColor = UIColor.black
        login.backgroundColor = .white
        login.layer.borderWidth = 3
        login.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
        login.layer.shadowColor = UIColor.black.cgColor
        login.layer.shadowOpacity = 0.1
        login.layer.shadowOffset = CGSize(width: 0, height: 2)
        login.layer.shadowRadius = 2
        login.keyboardType = .emailAddress
        login.autocapitalizationType = .none
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: login.frame.height))
            login.leftView = paddingView
            login.leftViewMode = .always
            return login
        }()
    
    var labelPassword: UILabel = {
       let password = UILabel()
        
        password.translatesAutoresizingMaskIntoConstraints = false
        password.text = "Senha"
        password.font = UIFont.boldSystemFont(ofSize: 17)
        password.textColor = UIColor(red: 69/255, green: 47/255, blue: 20/255, alpha: 1)
            return password
        }()
    
    var tfPassword: UITextField = {
        
       let pass = UITextField()
        
        pass.translatesAutoresizingMaskIntoConstraints = false
        pass.layer.cornerRadius = 10
        pass.backgroundColor = .white
        pass.textColor = UIColor.black
        pass.layer.borderWidth = 3
        pass.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
        pass.layer.shadowColor = UIColor.black.cgColor
        pass.layer.shadowOpacity = 0.1
        pass.layer.shadowOffset = CGSize(width: 0, height: 2)
        pass.layer.shadowRadius = 2
        pass.isSecureTextEntry = true
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: pass.frame.height))
            pass.leftView = paddingView
            pass.leftViewMode = .always
            return pass
        }()
    
    var passReset: UILabel = {
       let reset = UILabel()
        
        reset.translatesAutoresizingMaskIntoConstraints = false
        reset.text = "Recupere sua senha"
        reset.font = UIFont.boldSystemFont(ofSize: 12)
        reset.textColor = UIColor(red: 69/255, green: 47/255, blue: 20/255, alpha: 1)
            return reset
        }()

    var button1: UIButton = {
       let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(UIColor(red: 69/255, green: 47/255, blue: 20/255, alpha: 1), for: .normal)
        button.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1)
        button.layer.cornerRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.1
        button.layer.shadowOffset = CGSize(width: 0, height: 2)
        button.layer.shadowRadius = 2
            return button
        }()

    var txtConectse: UILabel = {
       let reset = UILabel()
        
        reset.translatesAutoresizingMaskIntoConstraints = false
        reset.text = "Ou conecte-se com"
        reset.font = UIFont.boldSystemFont(ofSize: 12)
        reset.textColor = UIColor(red: 69/255, green: 47/255, blue: 20/255, alpha: 1)
            return reset
    }()
    
    var viewSeparation: UIView = {
        let background = UIView()
        
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1)
        background.layer.cornerRadius = 5
            return background
        }()

    var appleIcon: UIButton = {
       let apple = UIButton()
        
        apple.translatesAutoresizingMaskIntoConstraints = false
        apple.setTitleColor(UIColor(red: 69/255, green: 47/255, blue: 20/255, alpha: 1), for: .normal)
        apple.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1)
        apple.layer.cornerRadius = 10
        apple.layer.shadowColor = UIColor.black.cgColor
        apple.layer.shadowOpacity = 0.1
        apple.layer.shadowOffset = CGSize(width: 0, height: 2)
        apple.layer.shadowRadius = 2
        apple.setImage(UIImage(named: "appleicon.png"), for: .normal)
            return apple
        }()
    
    var btGoogleIcon: UIButton = {
       let google = UIButton()
        
        google.translatesAutoresizingMaskIntoConstraints = false
        google.setTitleColor(UIColor(red: 69/255, green: 47/255, blue: 20/255, alpha: 1), for: .normal)
        google.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1)
        google.layer.cornerRadius = 10
        google.layer.shadowColor = UIColor.black.cgColor
        google.layer.shadowOpacity = 0.1
        google.layer.shadowOffset = CGSize(width: 0, height: 2)
        google.layer.shadowRadius = 2
        google.setImage(UIImage(named: "googleicon.png"), for: .normal)
            return google
        }()
    
    var btFaceIcon: UIButton = {
       let facebook = UIButton()
        
        facebook.translatesAutoresizingMaskIntoConstraints = false
        facebook.setTitleColor(UIColor(red: 69/255, green: 47/255, blue: 20/255, alpha: 1), for: .normal)
        facebook.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1)
        facebook.layer.cornerRadius = 10
        facebook.layer.shadowColor = UIColor.black.cgColor
        facebook.layer.shadowOpacity = 0.1
        facebook.layer.shadowOffset = CGSize(width: 0, height: 2)
        facebook.layer.shadowRadius = 2
        facebook.setImage(UIImage(named: "faceicon.png"), for: .normal)
            return facebook
        }()
    
    var buttonSignIn: UIButton = {
       let entrar = UIButton()
        
        entrar.translatesAutoresizingMaskIntoConstraints = false
        entrar.setTitle("Inscreva-se", for: .normal)
        entrar.setTitleColor(UIColor(red: 69/255, green: 47/255, blue: 20/255, alpha: 1), for: .normal)
        entrar.backgroundColor = .white
        entrar.layer.borderWidth = 3
        entrar.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
        entrar.layer.cornerRadius = 10
        entrar.layer.shadowColor = UIColor.black.cgColor
        entrar.layer.shadowOpacity = 0.1
        entrar.layer.shadowOffset = CGSize(width: 0, height: 2)
        entrar.layer.shadowRadius = 2
        entrar.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
            return entrar
        }()
    
    @objc func buttonTapped() {
        print("Botão foi pressionado!")
        let signInVC = SignInViewController()
        self.navigationController?.pushViewController(signInVC, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubs()
        addConstraints()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        [tfLogin, tfPassword].forEach {
            $0?.resignFirstResponder()
        }
    }
    
    
    func addSubs(){
        //Elements
        self.view.addSubview(mainView)
        self.view?.addSubview(bgYellow)
        self.view.addSubview(imageBall)
        self.view.addSubview(logoInitial)
        self.view.addSubview(labelLogin)
        self.view.addSubview(tfLogin)
        self.view.addSubview(labelPassword)
        self.view.addSubview(tfPassword)
        self.view.addSubview(passReset)
        self.view.addSubview(button1)
        self.view.addSubview(txtConectse)
        self.view.addSubview(viewSeparation)
        self.view.addSubview(appleIcon)
        self.view.addSubview(btFaceIcon)
        self.view.addSubview(btGoogleIcon)
        self.view.addSubview(buttonSignIn)
        
        //Delegates
        tfLogin.delegate = self
        tfPassword.delegate = self
        
    }
    
//    func setDelegateTextFields(){
//        tfLogin.delegate = self
//        tfPassword.delegate = self
//    }
    
    
    func addConstraints(){
        
        NSLayoutConstraint.activate([
            
        mainView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
        mainView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
        mainView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
        mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),

        bgYellow.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
        bgYellow.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
        bgYellow.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
        bgYellow.heightAnchor.constraint(equalToConstant: 258),
        
        imageBall.centerYAnchor.constraint(equalTo: bgYellow.bottomAnchor, constant: 0),
        
        logoInitial.topAnchor.constraint(equalTo: bgYellow.topAnchor, constant: 80),
        logoInitial.heightAnchor.constraint(equalToConstant: 120),
        logoInitial.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -40),
        logoInitial.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40),
    
        labelLogin.topAnchor.constraint(equalTo: bgYellow.bottomAnchor, constant: 50),
        labelLogin.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 25),
       
        tfLogin.topAnchor.constraint(equalTo: labelLogin.bottomAnchor,constant: 10),
        tfLogin.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 25),
        tfLogin.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: -25),
        tfLogin.heightAnchor.constraint(equalToConstant: 45),
 
        labelPassword.topAnchor.constraint(equalTo: tfLogin.bottomAnchor, constant: 20),
        labelPassword.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 25),
      
        tfPassword.topAnchor.constraint(equalTo: labelPassword.bottomAnchor,constant: 10),
        tfPassword.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 25),
        tfPassword.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: -25),
        tfPassword.heightAnchor.constraint(equalToConstant: 45),
        
        passReset.topAnchor.constraint(equalTo: tfPassword.bottomAnchor, constant: 7),
        passReset.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 32),
        
        button1.topAnchor.constraint(equalTo: passReset.bottomAnchor,constant: 20),
        button1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 25),
        button1.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: -25),
        button1.heightAnchor.constraint(equalToConstant: 45),
    
        
        txtConectse.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 16),
        txtConectse.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        
        viewSeparation.topAnchor.constraint(equalTo: txtConectse.bottomAnchor,constant: 7),
        viewSeparation.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 25),
        viewSeparation.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: -25),
        viewSeparation.heightAnchor.constraint(equalToConstant: 10),
        
        appleIcon.centerXAnchor.constraint(equalTo: viewSeparation.centerXAnchor),
        appleIcon.topAnchor.constraint(equalTo: viewSeparation.bottomAnchor, constant: 16),
        appleIcon.heightAnchor.constraint(equalToConstant: 64),
        appleIcon.widthAnchor.constraint(equalToConstant: 64),
        
        btFaceIcon.leadingAnchor.constraint(equalTo: viewSeparation.leadingAnchor),
        btFaceIcon.topAnchor.constraint(equalTo: viewSeparation.bottomAnchor, constant: 16),
        btFaceIcon.heightAnchor.constraint(equalToConstant: 64),
        btFaceIcon.widthAnchor.constraint(equalToConstant: 64),
     
        btGoogleIcon.trailingAnchor.constraint(equalTo: viewSeparation.trailingAnchor),
        btGoogleIcon.topAnchor.constraint(equalTo: viewSeparation.bottomAnchor, constant: 16),
        btGoogleIcon.heightAnchor.constraint(equalToConstant: 64),
        btGoogleIcon.widthAnchor.constraint(equalToConstant: 64),
                                   
        buttonSignIn.topAnchor.constraint(equalTo: appleIcon.bottomAnchor,constant: 20),
        buttonSignIn.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 25),
        buttonSignIn.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: -25),
        buttonSignIn.heightAnchor.constraint(equalToConstant: 45),

      
        ])
    }
    
  
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor(red: 48/255, green: 68/255, blue: 20/255, alpha: 1).cgColor
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print(#function)
        return true
    }
    
   
    
}
