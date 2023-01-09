//
//  ViewController.swift
//  RandomFoodChoice
//
//  Created by 이홍렬 on 2023/01/03.
//

import UIKit

class ViewController: UIViewController {
    let FoodArray = ["김치찌개","마라탕","쌀국수","금촌","돈까스","육회비빔밥","마라샹궈","떡볶이"]
    
    @IBOutlet var foodName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    showFood()
    }
    
    
    func showFood(){
        foodName.text = "메뉴 대신 골라줍니다"
        
    }

    @IBAction func foodBtn(_ sender: UIButton) {
    
        foodName.text = FoodArray.randomElement()
    }
    
    
    
    
    @IBAction func addFoodBtn(_ sender: UIButton) {
     
    
        let secondVC = SecondViewController()
    
        //self.present(showSecondVC, animated: true, completion: nil)
        self.present(secondVC, animated: true, completion: nil)
    }

}

