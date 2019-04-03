//
//  RegistratedViewController.swift
//  Ticked
//
//  Created by Владимир Гериханов on 24/03/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class RegistratedViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var surname: UITextField!
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var mail: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var returnPassword: UITextField!
    @IBOutlet weak var registratedButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        registratedButton.layer.cornerRadius = 10
        registratedButton.layer.borderWidth = 1
        registratedButton.layer.borderColor = UIColor.orange.cgColor
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        // Do any additional setup after loading the view.
    }
    
    //Mark: - error checking  and registrated
    @IBAction func pressedToRegistrated(_ sender: UIButton) {
        if name.text == "" && surname.text == "" && mail.text == "" && phoneNumber.text == ""  && password.text == ""  && returnPassword.text == ""  {
            let allFields = UIAlertController(title: "Ошибка", message: "Поля не заполнены", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            allFields.addAction(warning)
            self.present(allFields, animated: true, completion: nil)
        }
        else if name.text == "" {
            let nameField = UIAlertController(title: "Ошибка", message: "Имя не заполнено", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            nameField.addAction(warning)
            self.present(nameField, animated: true, completion: nil)
        }
        else if surname.text == "" {
            let surnameField = UIAlertController(title: "Ошибка", message: "Фамилия не заполнена", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            surnameField.addAction(warning)
            self.present(surnameField, animated: true, completion: nil)
        }
        else if login.text == "" {
            let surnameField = UIAlertController(title: "Ошибка", message: "Фамилия не заполнена", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            surnameField.addAction(warning)
            self.present(surnameField, animated: true, completion: nil)
        }
        else if mail.text == "" {
            let mailField = UIAlertController(title: "Ошибка", message: "Почта не заполнена", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            mailField.addAction(warning)
            self.present(mailField, animated: true, completion: nil)
        }
        else if phoneNumber.text == "" {
            let phoneNumberField = UIAlertController(title: "Ошибка", message: "Номер телефона не заполнен", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            phoneNumberField.addAction(warning)
            self.present(phoneNumberField, animated: true, completion: nil)
        }
        else if password.text == "" {
            let passwordField = UIAlertController(title: "Ошибка", message: "Пароль не заполнен", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            passwordField.addAction(warning)
            self.present(passwordField, animated: true, completion: nil)
        }
        else if returnPassword.text == "" {
            let returnPasswordField = UIAlertController(title: "Ошибка", message: "Повторение пароля не заполнено", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            returnPasswordField.addAction(warning)
            self.present(returnPasswordField, animated: true, completion: nil)
        }
        else if password.text != returnPassword.text {
            let alert = UIAlertController(title: "Ошибка", message: "Пароль введен некоректно", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alert.addAction(warning)
            self.present(alert, animated: true, completion: nil)
        }
        else {
          
            performSegue(withIdentifier: "registratedSegue", sender: self)
            
        }
    }
    
}
