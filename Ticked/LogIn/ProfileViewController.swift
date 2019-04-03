//
//  ProfileViewController.swift
//  Ticked
//
//  Created by Владимир Гериханов on 25/03/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var segueInDocument: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated:true)
        segueInDocument.layer.cornerRadius = 10
        segueInDocument.layer.borderWidth = 1
        segueInDocument.layer.borderColor = UIColor.orange.cgColor
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        // Do any additional setup after loading the view.
        
    }
    @IBAction func segueInDocumentPressed(_ sender: UIButton){
        
    }
    @IBAction func unwindToProfile(_ sender: UIStoryboardSegue){
        
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
