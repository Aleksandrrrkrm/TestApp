//
//  ViewController.swift
//  TEST
//
//  Created by Александр Головин on 26.06.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var price: UITextField!
    
    @IBOutlet weak var motivation: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    var beforeNdfl:Double = 0
    var afterNdfl:Double = 0
    var ndfl:Double = 0

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func button(_ sender: UIButton) {
    
        beforeNdfl = ((Double(price.text ?? "") ?? 0) * (Double(motivation.text ?? "") ?? 0)) / Double(100)
        ndfl = (beforeNdfl * Double(13)) / Double(100)
        afterNdfl = beforeNdfl - ndfl
        result.text = String(afterNdfl)
        price.resignFirstResponder()
        motivation.resignFirstResponder()
        
        
        }
    }
    
    
    




