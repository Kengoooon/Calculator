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
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var subBtn: UIButton!
    @IBOutlet weak var mulBtn: UIButton!
    @IBOutlet weak var divBtn: UIButton!
    
    
    var sum:Float64 = 0
    var dotFlg:Int = 0
    var opeFlg:Int = 0
    var ope:String = ""
    var result:String = ""
    var ans:String = ""
    var i = 0
    var tmp:Float64 = 0
    var firstFlg = 0
    
    //整数の時に小数点以下を表示しない関数
    func disdot(input:Float64) -> String{
        ans = String(format:"%g",input)
        return ans
    }
    
    func flgClear() -> (){
        opeFlg = 0
        dotFlg = 0
    }
    
    //罫線をデフォルト値に戻す関数
    func bouderClear() -> (){
        addBtn.layer.borderWidth = 0.5;
        subBtn.layer.borderWidth = 0.5;
        mulBtn.layer.borderWidth = 0.5;
        divBtn.layer.borderWidth = 0.5;
    }
    
    
    //計算関数
    func culc(input:String) -> (){
        switch ope {
        case "+":
            sum += Float64(input)!
            print(sum)
            result = String(format:"%g",sum)
            resultlbl.text = result
        case "-":
            sum -= Float64(input)!
            print(sum)
            result = String(format:"%g",sum)
            resultlbl.text = result
        case "×":
            sum *= Float64(input)!
            print(sum)
            result = String(format:"%g",sum)
            resultlbl.text = result
        case "÷":
            sum /= Float64(input)!
            result = String(format:"%g",sum)
            resultlbl.text = result
         case "":
            sum = Float64(input)!
            result = String(format:"%g",sum)
            resultlbl.text = result
            firstFlg = 1
            
        default: break
        }
        return
    }
    
    //入力値をresultlblに表示
    @IBAction func zeroBtn(_ sender: Any) {
        if opeFlg == 0{
            result += "0"
            resultlbl.text = result
        }else{
            //tmp　に　演算子があれば　新しく文字列を表示　tmpをクリア
            result = "0"
            resultlbl.text = result
            flgClear()
            bouderClear()
        }

    }
    @IBAction func oneBtn(_ sender: Any) {
        //演算子がなければ 文字列を結合して表示していく
        if opeFlg == 0{
            result += "1"
            resultlbl.text = result
            //
                }else{
            //演算子があれば　新しく文字列を表示　演算子フラグを0に
            result = "1"
            resultlbl.text = result
            flgClear()
            bouderClear()
        }
    }
    @IBAction func twoBtn(_ sender: Any) {
        if opeFlg == 0{
            result += "2"
            resultlbl.text = result
        }else{
            result = "2"
            resultlbl.text = result
            flgClear()
            bouderClear()
        }
    }
    @IBAction func threeBtn(_ sender: Any) {
        if opeFlg == 0{
            result += "3"
            resultlbl.text = result
        }else{
            result = "3"
            resultlbl.text = result
            flgClear()
            bouderClear()
        }
    }
    @IBAction func fourBtn(_ sender: Any) {
        if opeFlg == 0{
            result += "4"
            resultlbl.text = result
        }else{
            result = "4"
            resultlbl.text = result
            flgClear()
            bouderClear()
        }
    }
    
    @IBAction func fiveBtn(_ sender: Any) {
        if opeFlg == 0{
            result += "5"
            resultlbl.text = result
        }else{
            result = "5"
            resultlbl.text = result
            flgClear()
            bouderClear()
        }
    }
    
    @IBAction func sixBtn(_ sender: Any) {
        if opeFlg == 0{
            result += "6"
            resultlbl.text = result
        }else{
            result = "6"
            resultlbl.text = result
            flgClear()
            bouderClear()
        }
    }
    
    @IBAction func sevenBtn(_ sender: Any) {
        if opeFlg == 0{
            result += "7"
            resultlbl.text = result
        }else{
            result = "7"
            resultlbl.text = result
            flgClear()
            bouderClear()
        }
    }
    
    @IBAction func eightBtn(_ sender: Any) {
        if opeFlg == 0{
            result += "8"
            resultlbl.text = result
        }else{
            result = "8"
            resultlbl.text = result
            flgClear()
            bouderClear()
        }
    }
    
    @IBAction func nineBtn(_ sender: Any) {
        if opeFlg == 0{
            result += "9"
            resultlbl.text = result
        }else{
            result = "9"
            resultlbl.text = result
            flgClear()
            bouderClear()
        }
    }
    
    @IBAction func dotBtn(_ sender: Any) {
        if dotFlg == 0{
        result += "."
        resultlbl.text = result
        dotFlg = 1
        }
    }
    
    //+/-ボタンの処理
    @IBAction func signBtn(_ sender: Any) {
        result = String(format:"%g",-1 * Float64(result)!)
        resultlbl.text = result
    }
    
    //%ボタンの処理(未完成)
    @IBAction func persentBtn(_ sender: Any) {
        result = String(Float64(result)! / 100)
        resultlbl.text = result
    }
    
    //Cボタンの処理
    @IBAction func clearBtn(_ sender: Any) {
        sum = 0
        result = ""
        resultlbl.text = "0"
        dotFlg = 0
        firstFlg = 0
        ope = ""
        opeFlg = 0
        tmp = 0
        bouderClear()
        
    }
    
    
    
    //足し算
    @IBAction func additionBtn(_ sender: Any) {
        if opeFlg == 0{
            culc(input: result)
            ope = "+"
            opeFlg = 1
            addBtn.layer.borderWidth = 2.0;
        }else if opeFlg == 1{
            ope = "+"
            bouderClear()
            addBtn.layer.borderWidth = 2.0;
        }
    }
    
    //引き算
    @IBAction func subtractionBtn(_ sender: Any) {
        if opeFlg == 0{
            culc(input: result)
            ope = "-"
            opeFlg = 1
            subBtn.layer.borderWidth = 2.0;
        }else if opeFlg == 1{
            ope = "-"
            bouderClear()
            subBtn.layer.borderWidth = 2.0;
        }
    }
    
    //掛け算
    @IBAction func multiplicationBtn(_ sender: Any) {
        if opeFlg == 0{
            print(result)
            culc(input: result)
            ope = "×"
            opeFlg = 1
            mulBtn.layer.borderWidth = 2.0;
        }else if opeFlg == 1{
            ope = "×"
            bouderClear()
            mulBtn.layer.borderWidth = 2.0;
        }
    }
    
    //割り算
    @IBAction func divisionBtn(_ sender: Any) {
        if opeFlg == 0{
            culc(input: result)
            ope = "÷"
            opeFlg = 1
            divBtn.layer.borderWidth = 2.0;
        }else if opeFlg == 1{
            ope = "÷"
            bouderClear()
            divBtn.layer.borderWidth = 2.0;
        }
    }

    @IBAction func equalBtn(_ sender: Any) {
        
        if result == "0"{
        resultlbl.text = "エラー"
        }else{
            culc(input: result)
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

