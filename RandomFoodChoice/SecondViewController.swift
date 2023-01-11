//
//  SecondView.swift
//  RandomFoodChoice
//
//  Created by 이홍렬 on 2023/01/09.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate{
    
    var FoodArray = ["김치찌개","마라탕","쌀국수","금촌","돈까스","육회비빔밥","마라샹궈","떡볶이"]
    @IBOutlet var AddFoodTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        AddFoodTextField.delegate = self
    }
    
    
    @IBAction func AddingBtn(_ sender: Any) {
        
        
        print(AddFoodTextField.text!)
        FoodArray.append(AddFoodTextField.text!)
        AddFoodTextField.endEditing(true)
    }
    //버튼으로 입력
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{

            
            print(AddFoodTextField.text!)
        AddFoodTextField.endEditing(true)
            return true
        
        }
    //키보드 엔터로 입력
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if AddFoodTextField.text != ""{
           return true
        }else{
            AddFoodTextField.placeholder = "음식 이름을 입력해주세요"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField){
        
            AddFoodTextField.text = ""

        }
    
       
    
    
}
