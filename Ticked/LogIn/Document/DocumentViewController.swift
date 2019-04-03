//
//  DocumentViewController.swift
//  Ticked
//
//  Created by Владимир Гериханов on 02/04/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class DocumentViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var surname: UITextField!
    @IBOutlet weak var dateOfBith: UITextField!
    @IBOutlet weak var nationality: UITextField!
    @IBOutlet weak var manOrWoman: UISegmentedControl!
    @IBOutlet weak var numberUrDocumnet: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.layer.cornerRadius = 10
        saveButton.layer.borderWidth = 1
        saveButton.layer.borderColor = UIColor.orange.cgColor

        // Do any additional setup after loading the view.
    }
    //Mark: - chois a man or a woman and save in coreData
    @IBAction func choisUrHero(_ sender: UISegmentedControl) {
        
    }
    //Mark: - save all data in coreData
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        if name.text == "" && surname.text == "" && dateOfBith.text == "" && nationality.text == ""  && numberUrDocumnet.text == ""  {
            let allFields = UIAlertController(title: "Ошибка", message: "Поля не заполнены", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            allFields.addAction(warning)
            self.present(allFields, animated: true, completion: nil)
        }
        else if name.text == "" {
            let nameWar = UIAlertController(title: "Ошибка", message: "Введите имя", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            nameWar.addAction(warning)
            self.present(nameWar, animated: true, completion: nil)
        }
        else if surname.text == "" {
            let surnameWar = UIAlertController(title: "Ошибка", message: "Введите фамиля", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            surnameWar.addAction(warning)
            self.present(surnameWar, animated: true, completion: nil)
        }
        else if dateOfBith.text == "" {
            let date = UIAlertController(title: "Ошибка", message: "Введите дату рождания", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            date.addAction(warning)
            self.present(date, animated: true, completion: nil)
        }
        else if nationality.text == "" {
            let gender = UIAlertController(title: "Ошибка", message: "Введите страну проживания", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            gender.addAction(warning)
            self.present(gender, animated: true, completion: nil)
        }
        else if numberUrDocumnet.text == "" {
            let doc = UIAlertController(title: "Ошибка", message: "Введите номер документа", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            doc.addAction(warning)
            self.present(doc, animated: true, completion: nil)
        }
        else {
             performSegue(withIdentifier: "unwindToProfile", sender: self)
        }
        
    }
    
}
