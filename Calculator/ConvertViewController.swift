//
//  ConvertViewController.swift
//  Calculator
//
//  Created by 藤本健悟 on 2016/12/11.
//  Copyright © 2016年 kengo. All rights reserved.
//

import UIKit
import Foundation

class ConvertViewController: UIViewController {
    
    @IBOutlet weak var resultlbl: UILabel!
    
    var binaryArray:[Int] = []
    var result:String = ""
    var count:Int = 0
    var tmp:Int = 0
    var tmp2:Int = 0
    var ans: String = ""
    
    func power(lhs: Double, rhs:Double) -> Double{
        let power1 = pow(lhs,rhs)
        return power1
    }
    
    func Hexadecimal(input: Int) -> String{
        switch input {
        case 0:
            ans = "0"
        case 1:
            ans = "1"
        case 2:
            ans = "2"
        case 3:
            ans = "3"
        case 4:
            ans = "4"
        case 5:
            ans = "5"
        case 6:
            ans = "6"
        case 7:
            ans = "7"
        case 8:
            ans = "8"
        case 9:
            ans = "9"
        case 10:
            ans = "A"
        case 11:
            ans = "B"
        case 12:
            ans = "C"
        case 13:
            ans = "D"
        case 14:
            ans = "E"
        case 15:
            ans = "F"
        default: break
        }
        return ans
    }
    
//８進数への変換式を記載
//    func Octal(input: Int) -> String{
//        switch input {
//
//        }
//    }

    
    @IBAction func zeroBtn(_ sender: Any) {
        if binaryArray.count < 8{
        binaryArray.append(0)
        result += "0"
            resultlbl.text = result
        }
            
    }
    @IBAction func oneBtn(_ sender: Any) {
        if binaryArray.count < 8{
        binaryArray.append(1)
        result += "1"
        resultlbl.text = result
        }
        
    }
    @IBAction func additionBtn(_ sender: Any) {
    }
    @IBAction func substractionBtn(_ sender: Any) {
    }
    @IBAction func multiplicationBtn(_ sender: Any) {
    }
    @IBAction func divisionBtn(_ sender: Any) {
    }

    @IBAction func b2dBtn(_ sender: Any) {
        if binaryArray.count == 8{
                for i in 0...7{
                    if binaryArray[i] == 1{
                        tmp += Int(power(lhs: 2,rhs: Double(7-i)))
                        print(tmp)
                    }
                }
            resultlbl.text = String(tmp)
        }else{
            resultlbl.text = "エラー"
            
        }
    }
    @IBAction func b2oBtn(_ sender: Any) {
        if binaryArray.count == 7{
            
        }else{
            resultlbl.text = "エラー"
        }
    }
    @IBAction func b2hBtn(_ sender: Any) {
        if binaryArray.count == 8{
            for i in 0...3{
                if binaryArray[i] == 1{
                    tmp += Int(power(lhs: 2,rhs: Double(3-i)))
                }
            }
            print(tmp)
            result = Hexadecimal(input: tmp)
            for i in 4...7{
                if binaryArray[i] == 1{
                    tmp2 += Int(power(lhs: 2,rhs: Double(7-i)))
                }
            }
            print(tmp2)
            result += Hexadecimal(input: tmp2)
            resultlbl.text = result
        }else{
            resultlbl.text = "エラー"
        }
    }
    
    @IBAction func clearBtn(_ sender: Any) {
        result = ""
        resultlbl.text = "0"
        count = 0
        tmp = 0
        tmp2 = 0
        binaryArray = []
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
