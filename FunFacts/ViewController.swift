//
//  ViewController.swift
//  FunFacts
//
//  Created by Iman Mk R on 1/11/15.
//  Copyright (c) 2015 Iman Mk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ChangeTheFact: UILabel!
    @IBOutlet weak var buttonColor: UIButton!
    
    var factBook = FactBook()
    var colorWheel = ColorWheel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ChangeTheFact.text = factBook.randomFact()
        view.backgroundColor = colorWheel.randomColor()

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ShowNextFact() {
       var randomColor = colorWheel.randomColor()
        
        UIView.animateWithDuration(4.0, animations: {
            self.ChangeTheFact.text = self.factBook.randomFact()
            self.ChangeTheFact.frame.origin = CGPoint(x: 0, y: 667)
            self.view.backgroundColor = randomColor
            self.buttonColor.tintColor = randomColor
            
            }, completion: {
                (finished : Bool) in
                UIView.animateWithDuration(4.0){
                self.ChangeTheFact.frame.origin = CGPoint(x: 375, y: 667)
                }
            })



    }

}

