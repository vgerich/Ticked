//
//  FirstTitleViewController.swift
//  Ticked
//
//  Created by Владимир Гериханов on 30/03/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class FirstTitleViewController: UIPageViewController {
    //Mark: - создание информации которая будет находится в ContentViewController
    var headerArray = ["Находите", "Сохраняйте"]
    var subheaderArray = ["Найдите лучший билет для путешествий", "Теперь ненужно искать повторно один и тот же маршрут"]
    var imagesArray = ["air", "history"]
    
    //Mark: - загрузка данных VC
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        if let firstVC = displayViewController(atIndex: 0) {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
        // Do any additional setup after loading the view.
    }
    //Mark: - определение какой VC нам надо погрузить
    func displayViewController(atIndex index: Int) -> ContentFViewController? {
        guard index >= 0 else { return nil }
        guard index < headerArray.count else { return nil }
        guard let contentVC = storyboard?.instantiateViewController(withIdentifier: "contentView") as? ContentFViewController else { return nil }
        
        contentVC.header = headerArray[index]
        contentVC.subheader = subheaderArray[index]
        contentVC.imageFile = imagesArray[index]
        contentVC.index = index
        return contentVC
    }
    func nextVC (atIndex index: Int){
        if let contentVC = displayViewController(atIndex: index+1) {
            setViewControllers([contentVC], direction: .forward, animated: true, completion: nil)
        }
        
    }
    



}
// Mark: - переход вперед и назад в FirstTitel  VC
extension FirstTitleViewController: UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! ContentFViewController).index
        index -= 1
        return displayViewController(atIndex: index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! ContentFViewController).index
        index += 1
        return displayViewController(atIndex: index)
    }
    
    
}
