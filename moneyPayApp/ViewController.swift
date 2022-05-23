//
//  ViewController.swift
//  moneyPayApp
//
//  Created by 曾曜澤 on 2022/5/23.
//

import UIKit

class ViewController: UIViewController {
//花的數量數值
    @IBOutlet weak var flower1Stepper: UIStepper!
    @IBOutlet weak var flower2Stepper: UIStepper!
    @IBOutlet weak var flower3Stepper: UIStepper!
    @IBOutlet weak var flower4Stepper: UIStepper!
    @IBOutlet weak var flower5Stepper: UIStepper!
    @IBOutlet weak var flower6Stepper: UIStepper!
//花的數量
    @IBOutlet weak var Qty: UILabel!
//花的總價
    @IBOutlet weak var flowerTotalMoney: UILabel!
    @IBOutlet weak var flowerTotalMoney2: UILabel!
//花的總價格、總數量
    var price = 0
    var number = 0
//對話框
    @IBOutlet weak var doNotTouch: UIView!
//分頁2
    @IBOutlet weak var page2: UIView!
    //金額總數
    @IBOutlet weak var money1Stepper: UIStepper!
    @IBOutlet weak var money2Stepper: UIStepper!
    @IBOutlet weak var money3Stepper: UIStepper!
    @IBOutlet weak var money4Stepper: UIStepper!
    @IBOutlet weak var money5Stepper: UIStepper!
    @IBOutlet weak var money6Stepper: UIStepper!
    @IBOutlet weak var money7Stepper: UIStepper!
    //金額數量
    @IBOutlet weak var mQty1: UILabel!
    @IBOutlet weak var mQty2: UILabel!
    @IBOutlet weak var mQty3: UILabel!
    @IBOutlet weak var mQty4: UILabel!
    @IBOutlet weak var mQty5: UILabel!
    @IBOutlet weak var mQty6: UILabel!
    @IBOutlet weak var mQty7: UILabel!
    //總金額
    @IBOutlet weak var moneyPayTotal: UILabel!
    //要付的錢
    var payPrice = 0
    //對話框
    @IBOutlet weak var talk: UILabel!
    @IBOutlet weak var totalTalk: UILabel!
    @IBOutlet weak var payTalk: UILabel!
    @IBOutlet weak var ttTalk: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        doNotTouch.isHidden = false
        page2.isHidden = true
        totalTalk.isHidden = true
        payTalk.isHidden = true
        ttTalk.isHidden = true
    }
    @IBAction func totalFlower(_ sender: Any) {
        number = Int(flower1Stepper.value) + Int(flower2Stepper.value) + Int(flower3Stepper.value) + Int(flower4Stepper.value) + Int(flower5Stepper.value) + Int(flower6Stepper.value)
        Qty.text = "\(number)"
        price = Int(flower1Stepper.value) * 225 + Int(flower2Stepper.value) * 122 + Int(flower3Stepper.value) * 98 + Int(flower4Stepper.value) * 188 + Int(flower5Stepper.value) * 54 + Int(flower6Stepper.value) * 117
        flowerTotalMoney.text = "\(price)"
        flowerTotalMoney2.text = "\(price)"
    }
    @IBAction func Okay(_ sender: Any) {
        if price == 0 {
            doNotTouch.isHidden = false
        } else {
        doNotTouch.isHidden = true
        }
    }
    @IBAction func nextPage(_ sender: Any) {
        page2.isHidden = false
        totalTalk.isHidden = false
        payTalk.isHidden = false
        payTalk.text = "\(price)"
        
    }
    
    @IBAction func moneyTotal(_ sender: Any) {
        //金額數量變動
        mQty1.text = "\(Int(money1Stepper.value))"
        mQty2.text = "\(Int(money2Stepper.value))"
        mQty3.text = "\(Int(money3Stepper.value))"
        mQty4.text = "\(Int(money4Stepper.value))"
        mQty5.text = "\(Int(money5Stepper.value))"
        mQty6.text = "\(Int(money6Stepper.value))"
        mQty7.text = "\(Int(money7Stepper.value))"
        //總金額
        payPrice = Int(1000 * money1Stepper.value) + Int(500 * money2Stepper.value) + Int(100 * money3Stepper.value) + Int(50 * money4Stepper.value) + Int(10 * money5Stepper.value) + Int(5 * money6Stepper.value) + Int(1 * money7Stepper.value)
        //顯示價格
        moneyPayTotal.text = "\(payPrice)"
    }
    @IBAction func backPage(_ sender: Any) {
        page2.isHidden = true
    }
    @IBAction func buyIt(_ sender: Any) {
        ttTalk.isHidden = false
        if payPrice == price {
            talk.text = "Thank you"
        } else if payPrice >= price {
            talk.text = "Too much"
        } else {
            talk.text = "It's not enough"
        }
    }
    
}

