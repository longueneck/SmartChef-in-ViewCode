//
//  SignInViewController.swift
//  IniciandoVIewCode
//
//  Created by Kevin Longue on 23/02/23.
//

import UIKit

class SignInViewController: UIViewController {
    
    var labelWelcome: UILabel = {
        let welcome = UILabel()
        welcome.translatesAutoresizingMaskIntoConstraints = false
        welcome.text = "Crie sua conta"
        welcome.textColor = UIColor(red: 255/255, green: 177/255, blue: 20/255, alpha: 1)
        welcome.font = UIFont.boldSystemFont(ofSize: 26)
        return welcome
    }()
    
    var labelTextPresentation: UILabel = {
        let textPresentation = UILabel()
        textPresentation.translatesAutoresizingMaskIntoConstraints = false
        textPresentation.text = "Cozinhe com ingredientes da sua dispensa"
        textPresentation.textColor = UIColor(red: 48/255, green: 69/255, blue: 22/255, alpha: 1)
        textPresentation.font = UIFont.systemFont(ofSize: 14)
        return textPresentation
    }()
    
    var logoChar: UIImageView = {
        let char = UIImageView()
        char.translatesAutoresizingMaskIntoConstraints = false
        char.image = UIImage(named: "logo1.png")
        return char
    }()
    
    
    var logoName: UIImageView = {
        let nameLogo = UIImageView()
        nameLogo.translatesAutoresizingMaskIntoConstraints = false
        nameLogo.image = UIImage(named: "logoname.png")
        
        
        return nameLogo
    }()
    
    var labelUserName: UILabel = {
        let textPresentation = UILabel()
        textPresentation.translatesAutoresizingMaskIntoConstraints = false
        textPresentation.text = "Nome de usuário"
        textPresentation.textColor = UIColor(red: 48/255, green: 69/255, blue: 22/255, alpha: 1)
        textPresentation.font = UIFont.systemFont(ofSize: 18)
        return textPresentation
    }()
    
    var userTextField: UITextField = {
        let userTf = UITextField()
        userTf.translatesAutoresizingMaskIntoConstraints = false
        userTf.backgroundColor = .white
        userTf.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
        userTf.layer.borderWidth = 3
        userTf.layer.cornerRadius = 5
        userTf.layer.shadowColor = UIColor.black.cgColor
        userTf.layer.shadowOpacity = 0.1
        userTf.layer.shadowOffset = CGSize(width: 0, height: 2)
        userTf.layer.shadowRadius = 2
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: userTf.frame.height))
        userTf.leftView = paddingView
        userTf.leftViewMode = .always
        
        return userTf
    }()
    
    @objc func buttonTapped() {
        print("Botão foi pressionado!")
        let signInVC = AccountCreatedViewController()
        self.navigationController?.pushViewController(signInVC, animated: false)
    }
    
    var labelEmail: UILabel = {
        let email = UILabel()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.text = "E-mail"
        email.textColor = UIColor(red: 48/255, green: 69/255, blue: 22/255, alpha: 1)
        email.font = UIFont.systemFont(ofSize: 18)
        return email
    }()
    
    var emailTextField: UITextField = {
        let tfEmail = UITextField()
        tfEmail.translatesAutoresizingMaskIntoConstraints = false
        tfEmail.backgroundColor = .white
        tfEmail.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
        tfEmail.layer.borderWidth = 3
        tfEmail.layer.cornerRadius = 5
        tfEmail.layer.shadowColor = UIColor.black.cgColor
        tfEmail.layer.shadowOpacity = 0.1
        tfEmail.layer.shadowOffset = CGSize(width: 0, height: 2)
        tfEmail.layer.shadowRadius = 2
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tfEmail.frame.height))
        tfEmail.leftView = paddingView
        tfEmail.leftViewMode = .always
        
        return tfEmail
    }()
    
    var labelPassword: UILabel = {
        let pass = UILabel()
        pass.translatesAutoresizingMaskIntoConstraints = false
        pass.text = "Senha"
        pass.textColor = UIColor(red: 48/255, green: 69/255, blue: 22/255, alpha: 1)
        pass.font = UIFont.systemFont(ofSize: 18)
        return pass
    }()
    
    var passwordTextField: UITextField = {
        let tfpass = UITextField()
        tfpass.translatesAutoresizingMaskIntoConstraints = false
        tfpass.backgroundColor = .white
        tfpass.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
        tfpass.layer.borderWidth = 3
        tfpass.layer.cornerRadius = 5
        tfpass.layer.shadowColor = UIColor.black.cgColor
        tfpass.layer.shadowOpacity = 0.1
        tfpass.layer.shadowOffset = CGSize(width: 0, height: 2)
        tfpass.layer.shadowRadius = 2
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tfpass.frame.height))
            tfpass.leftView = paddingView
            tfpass.leftViewMode = .always
        return tfpass
    }()
    
    var buttonCreate: UIButton = {
        let entrar = UIButton()
        
        entrar.translatesAutoresizingMaskIntoConstraints = false
        entrar.setTitle("Criar conta", for: .normal)
        entrar.setTitleColor(UIColor(red: 68/255, green: 49/255, blue: 22/255, alpha: 1), for: .normal)
        entrar.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1)
        entrar.layer.cornerRadius = 10
        entrar.layer.shadowColor = UIColor.black.cgColor
        entrar.layer.shadowOpacity = 0.1
        entrar.layer.shadowOffset = CGSize(width: 0, height: 2)
        entrar.layer.shadowRadius = 2
        entrar.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        return entrar
    }()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubs()
        setConstrints()
        setDelegateTextFields()
        
        // Do any additional setup after loading the view.
    }
    
    func setDelegateTextFields(){
        userTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    
    func addSubs(){
        self.view.addSubview(labelWelcome)
        self.view.addSubview(labelTextPresentation)
        self.view.addSubview(logoChar)
        self.view.addSubview(logoName)
        self.view.addSubview(labelUserName)
        self.view.addSubview(userTextField)
        self.view.addSubview(labelEmail)
        self.view.addSubview(emailTextField)
        self.view.addSubview(labelPassword)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(buttonCreate)
    }
    
    
    func setConstrints(){
        
        NSLayoutConstraint.activate([
            
            labelWelcome.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
            labelWelcome.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            
            labelTextPresentation.topAnchor.constraint(equalTo: labelWelcome.bottomAnchor, constant: 7),
            labelTextPresentation.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            
            logoChar.topAnchor.constraint(equalTo: labelTextPresentation.bottomAnchor, constant: 50),
            logoChar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            
            logoName.centerYAnchor.constraint(equalTo: logoChar.centerYAnchor),
            logoName.leadingAnchor.constraint(equalTo: logoChar.trailingAnchor, constant: 7),
            
            labelUserName.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            labelUserName.topAnchor.constraint(equalTo: logoChar.bottomAnchor, constant: 35),
            
            userTextField.topAnchor.constraint(equalTo: labelUserName.bottomAnchor, constant: 5),
            userTextField.heightAnchor.constraint(equalToConstant: 40),
            userTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            userTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30),
            
            labelEmail.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            labelEmail.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 15),
            
            emailTextField.topAnchor.constraint(equalTo: labelEmail.bottomAnchor, constant: 5),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            emailTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30),
            
            labelPassword.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            labelPassword.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            
            passwordTextField.topAnchor.constraint(equalTo: labelPassword.bottomAnchor, constant: 5),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            passwordTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30),
            
            buttonCreate.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 50),
            buttonCreate.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 30),
            buttonCreate.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: -30),
            buttonCreate.heightAnchor.constraint(equalToConstant: 40),
            
            
            
            
        ])
        
        
    }
    
    
}
    
    extension SignInViewController: UITextFieldDelegate {
        
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

