//
//  ViewController.swift
//  Ticked
//
//  Created by Владимир Гериханов on 13/03/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class SearchTickedViewController: UIViewController {
    @IBOutlet weak var from: UITextField!
    @IBOutlet weak var to: UITextField!
    @IBOutlet weak var dateIn: UITextField!
    @IBOutlet weak var dateTo: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        createButton()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //Mark: - metod that will help us download FirstVC
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let userDefaults = UserDefaults.standard
        let wasIntro = userDefaults.bool(forKey: "wasIntroWatch")
        guard !wasIntro else {return}
        
        
        if let pageVC = storyboard?.instantiateViewController(withIdentifier: "pageView") as? FirstTitleViewController{
            present(pageVC, animated: true, completion: nil)
            
        }
        
        
    }
    //Mark: - custon button
    func createButton() {
        searchButton.layer.cornerRadius = 10
        searchButton.layer.borderWidth = 1
        searchButton.layer.borderColor = UIColor.orange.cgColor
    }
    //Mark: - searchTicked
    @IBAction func searchTicket (_ sender: UIButton){
    
    }
    


}

