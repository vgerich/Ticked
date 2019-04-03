//
//  ContentFViewController.swift
//  Ticked
//
//  Created by Владимир Гериханов on 30/03/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class ContentFViewController: UIViewController {

    @IBOutlet weak var titel: UILabel!
    @IBOutlet weak var subtitel: UILabel!
    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var pageButton: UIButton!
    
    var header = ""
    var subheader = ""
    var imageFile = ""
    var index = 0
    //Mark: - Loading data in FirstVC
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageButton.layer.cornerRadius = 10
        pageButton.layer.borderWidth = 1
        pageButton.layer.borderColor = UIColor.orange.cgColor
        
        pageButton.clipsToBounds = true
        
        pageControl.numberOfPages = 2
        pageControl.currentPage = index
        titel.text = header
        subtitel.text = subheader
        imageV.image = UIImage(named: imageFile)
        switch index {
        case 0:
            pageButton.setTitle("Дальше", for: .normal)
        case 1:
            pageButton.setTitle("Открыть", for: .normal)
        default:
            break
        }
    }

    //Mark: - transition to second ViewController
    @IBAction func pageButtonPressed(_ sender: Any) {
        switch index {
        case 0:
            let pageVC = parent as? FirstTitleViewController
            pageVC?.nextVC(atIndex: index)
        case 1:
            let userDefaults = UserDefaults.standard
            userDefaults.setValue(true, forKey: "wasIntroWatch")
            userDefaults.synchronize()
            
            
            dismiss(animated: true, completion: nil)
        default:
            break
        }
        
        
    }
    
 

}
