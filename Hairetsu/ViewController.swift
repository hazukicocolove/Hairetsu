//
//  ViewController.swift
//  Hairetsu
//
//  Created by Hazuki Tamura on 2021/08/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doingLabel: UILabel!
    
    let itsuArray:[String] = ["一年前","１週間前","先月","昨日","さっき"]
    let dokodeArray:[String] = ["家で","学校で","そこで","アメリカで","クラスで"]
    let daregaArray:[String] = ["私が","あなたが","母が","大統領が","友達が"]
    let doingArray:[String] = ["遊んだ","労働した","キャンプした","知り合った","怒った"]
    
    var index:Int = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func reset(){
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doingLabel.text = "----"
        
        index = 0
    }
    
    @IBAction func change(){
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doingLabel.text = doingArray[index]
        
        index = index + 1
        
        if index > 4 {
            index = 0
        }
    }
    
    @IBAction func random(){
        //乱数
        let itsuIndex = Int.random(in: 0...4)
        let dokodeIndex = Int.random(in: 0...4)
        let daregaIndex = Int.random(in: 0...4)
        let doingIndex = Int.random(in: 0...4)
        
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("誰が: \(daregaIndex)")
        print("何した: \(doingIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doingLabel.text = doingArray[doingIndex]
    }
}

