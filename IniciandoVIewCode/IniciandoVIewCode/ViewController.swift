//
//  ViewController.swift
//  IniciandoVIewCode
//
//  Created by Kevin Longue on 14/02/23.
//

import UIKit
import Foundation

    
class ViewController: UIViewController {
    
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
        login.backgroundColor = .white
        login.layer.borderWidth = 3
        login.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
        login.layer.shadowColor = UIColor.black.cgColor
        login.layer.shadowOpacity = 0.2
        login.layer.shadowOffset = CGSize(width: 0, height: 2)
        login.layer.shadowRadius = 2
        
        
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
        pass.layer.borderWidth = 3
        pass.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
        pass.layer.shadowColor = UIColor.black.cgColor
        pass.layer.shadowOpacity = 0.2
        pass.layer.shadowOffset = CGSize(width: 0, height: 2)
        pass.layer.shadowRadius = 2
        
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
        button.layer.shadowOpacity = 0.2
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1)
        //Carregadora da tela - Tudo que e criado tem que estar aqui pra ser mostrado!
        
        addSubs()
        addConstraints()
        
        
    }
    
    func addSubs(){ //Funcao adiciona todas as telas dentro da ViewDidLoad
        self.view?.addSubview(bgYellow)
        self.view.addSubview(imageBall)
        self.view.addSubview(logoInitial)
        //COnjunto 1
        self.view.addSubview(labelLogin)
        self.view.addSubview(tfLogin)
        //Conjunto 2
        self.view.addSubview(labelPassword)
        self.view.addSubview(tfPassword)
        
        self.view.addSubview(passReset)
        
        self.view.addSubview(button1)
        self.view.addSubview(txtConectse)
        self.view.addSubview(viewSeparation)
    }
    
    func addConstraints(){
        
        NSLayoutConstraint.activate([//Funcao adiciona todas as telas dentro da ViewDidLoad
            
        //View Segundaria -> Cor Amarelo
        //MARK
        bgYellow.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
        bgYellow.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
        bgYellow.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
        bgYellow.heightAnchor.constraint(equalToConstant: 258),
        
        imageBall.centerYAnchor.constraint(equalTo: bgYellow.bottomAnchor, constant: 0),
        
        //Logomarca do app
        //MARK
        logoInitial.topAnchor.constraint(equalTo: bgYellow.topAnchor, constant: 80),
        logoInitial.heightAnchor.constraint(equalToConstant: 120),
        logoInitial.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -40),
        logoInitial.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40),
        //Adicionando constraints para a Texto de Login
        
        //MARK
        //MARK - GRUPO 1
        //Adicionando constraints para a o texto de login
        labelLogin.topAnchor.constraint(equalTo: bgYellow.bottomAnchor, constant: 50),
        labelLogin.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 25),
        //Adicionando constraints para a o textField de login
        tfLogin.topAnchor.constraint(equalTo: labelLogin.bottomAnchor,constant: 10),
        tfLogin.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 25),
        tfLogin.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: -25),
        tfLogin.heightAnchor.constraint(equalToConstant: 45),
        
        //MARK
        //MARK GRUPO 2
        //Adicionando constraints para a o texto da senha
        labelPassword.topAnchor.constraint(equalTo: tfLogin.bottomAnchor, constant: 20),
        labelPassword.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 25),
        //Adicionando constraints para a o textField de senha
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
        
        
        
        ])
    }
    
    
}
