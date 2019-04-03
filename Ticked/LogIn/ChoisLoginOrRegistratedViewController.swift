//
//  ChoisLoginOrRegistratedViewController.swift
//  Ticked
//
//  Created by Владимир Гериханов on 25/03/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class ChoisLoginOrRegistratedViewController: UIViewController {
    
    @IBOutlet weak var whatForLabel: UILabel!
    @IBOutlet weak var buttLog: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        createLabelAndButton()
        // Do any additional setup after loading the view.
    }
    func createLabelAndButton(){
        buttLog.layer.cornerRadius = 5
        buttLog.layer.borderWidth = 1
        buttLog.layer.borderColor = UIColor.orange.cgColor
        
        whatForLabel.text = "Введите свои личные данные один раз и покупайте билеты еще быстрее"
        whatForLabel.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 20)
        whatForLabel.numberOfLines = 0
    }
    
    @IBAction func pressedToLogin(_ sender: UIButton) {
    }
    
    @IBAction func pressedToRegistrated(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
