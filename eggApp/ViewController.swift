//
//  ViewController.swift
//  eggApp
//
//  Created by たっくん on 2020/09/05.
//  Copyright © 2020 tatsuya.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countLabel.text = String(count)
        textLabel.text = String("tap")
    }

    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!
    
    var count : Int = 100
    
    @IBOutlet weak var imageView: UIImageView!
    
    var dispImageNum = 0
    
    let imageArray = ["egg01","egg02","egg03",]
    
    func dispImage() {
        
        let name = imageArray[dispImageNum]
        
        let image = UIImage(named : name)
        
        imageView.image = image
    }
    
    @IBAction func Button(_ sender: Any) {
        
        count = count - 1
        countLabel.text = String(count)
        
        
// カウント数に応じたテキストの変更
        if (count == 75) {
            textLabel.text = "まだまた"
        }else if (count == 50){
            textLabel.text = "半分！"
            dispImageNum += 1
        }else if (count == 25){
            textLabel.text = "もうちょい！"
        }else if count == 0{
        dispImageNum += 1
            textLabel.text = "おつかれ"
        }else if count < 0 {
            countLabel.text = "0"
        }
    
    dispImage()
    
    }

}
