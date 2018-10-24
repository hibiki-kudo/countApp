//
//  ViewController.swift
//  CountApp
//
//  Created by 工藤 響 on 2018/10/21.
//  Copyright © 2018 工藤 響. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {

    @IBOutlet weak var CountText: UITextView!
    var CountNumber:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CountText.delegate = self
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        if (appDelegate.lastText) != nil{
            CountNumber = Int(appDelegate.lastText!)!
            CountText.text = String(CountNumber)
        }else{
            CountText.text = String(CountNumber)
        }
        
        }
    
    
    @IBAction func AddCount(_ sender: Any) {
        CountNumber += 1
        CountText.text = String(CountNumber)
        
    }
    
    @IBAction func DiffCount(_ sender: Any) {
        CountNumber -= 1
        CountText.text = String(CountNumber)
    }
    
    @IBAction func AllClear(_ sender: Any) {
        CountNumber = 0
        CountText.text = String(CountNumber)
        
    func textViewDidChange(_ textView: UITextView){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.lastText = CountText.text
        }

    }
}

