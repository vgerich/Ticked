//
//  EntryViewController.swift
//  Ticked
//
//  Created by Владимир Гериханов on 20/03/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {
    @IBOutlet weak var logIN: UITextField!
    @IBOutlet weak var passwordIN: UITextField!
    @IBOutlet weak var logButton: UIButton!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        createButton()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        // Do any additional setup after loading the view.
    }
    //Mark: - custom button
    func createButton() {
        logButton.layer.cornerRadius = 10
        logButton.layer.borderWidth = 1
        logButton.layer.borderColor = UIColor.orange.cgColor
    }
    //Mark: - entry profile
    @IBAction func loginInProfile(_ sender: UIButton){
        
    }
    //Mark: - segue to registration
    @IBAction func registrated(_ sender: UIButton){
        
    }
    //Mark - unwind segue in EntryViewController
    @IBAction func unwindToEntry(_ sender: UIStoryboardSegue){
        
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
