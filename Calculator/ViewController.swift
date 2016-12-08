//
//  ViewController.swift
//  Calculator
//
//  Created by 藤本健悟 on 2016/12/08.
//  Copyright © 2016年 kengo. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var resultlbl: UILabel!
    
    var sum:Float64 = 0
    var dotFlg:Int = 0
    var tmp:String = ""
    var result:String = ""
    
    //入力値をresultlblに表示
    @IBAction func zeroBtn(_ sender: Any) {
    }
    @IBAction func oneBtn(_ sender: Any) {
        result += "1"
        resultlbl.text = result
    }
    @IBAction func twoBtn(_ sender: Any) {
        result += "2"
        resultlbl.text = result
    }
    @IBAction func threeBtn(_ sender: Any) {
        result += "3"
        resultlbl.text = result
    }
    @IBAction func fourBtn(_ sender: Any) {
        result += "4"
        resultlbl.text = result
    }
    
    @IBAction func fiveBtn(_ sender: Any) {
        result += "5"
        resultlbl.text = result
    }
    @IBAction func sixBtn(_ sender: Any) {
        result += "6"
        resultlbl.text = result
    }
    @IBAction func sevenBtn(_ sender: Any) {
        result += "7"
        resultlbl.text = result
    }
    @IBAction func eightBtn(_ sender: Any) {
        result += "8"
        resultlbl.text = result
    }
    @IBAction func nineBtn(_ sender: Any) {
        result += "9"
        resultlbl.text = result
    }
    @IBAction func dotBtn(_ sender: Any) {
        result += "."
        resultlbl.text = result
        dotFlg = 1
    }
    
    @IBAction func signBtn(_ sender: Any) {
        result = String(format:"%g",-1 * Float64(result)!)
    }
    @IBAction func persentBtn(_ sender: Any) {
        result = String(Float64(result)! / 100)
    }
    @IBAction func clearBtn(_ sender: Any) {
        sum = 0
        result = ""
        resultlbl.text = ""
        dotFlg = 0
    }
    
    
    //tmpに演算子を格納
    @IBAction func additionBtn(_ sender: Any) {
        sum = Float64(result)!
        tmp = "+"
        resultlbl.text = ""
        result = ""
        
    }
    @IBAction func subtractionBtn(_ sender: Any) {
        sum = Float64(result)!
        tmp = "-"
        resultlbl.text = ""
        result = ""
    }
        @IBAction func multiplicationBtn(_ sender: Any) {
        sum = Float64(result)!
        tmp = "×"
        resultlbl.text = ""
        result = ""
    }
        @IBAction func divisionBtn(_ sender: Any) {
        sum = Float64(result)!
        tmp = "÷"
        resultlbl.text = ""
        result = ""
    }

    @IBAction func equalBtn(_ sender: Any) {
        
        if result == "0"{
        resultlbl.text = "エラー"
        }else{
    
            switch tmp {
            case "+":
                result = String(format:"%g",sum + Float64(result)!)
                    resultlbl.text = result
            case "-":
                result = String(format:"%g",sum - Float64(result)!)
                    resultlbl.text = result
            case "×":
                result = String(format:"%g",sum * Float64(result)!)
                    resultlbl.text = result
            case "÷":
                result = String(format:"%g",sum / Float64(result)!)
                    resultlbl.text = result

            default: break
            }
                
                
            }
        
        
        }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

