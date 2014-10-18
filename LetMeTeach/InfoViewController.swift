//
//  ViewController.swift
//  LetMeTeach
//
//  Created by Vadim Drobinin on 18/10/14.
//  Copyright (c) 2014 Vadim Drobinin. All rights reserved.
//

import UIKit


let colorWheel = Colorwheel()

class InfoViewController: UIViewController {
    @IBOutlet weak var textField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textField.backgroundColor = colorWheel.randomColor()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        navigationController?.navigationBarHidden = true
    }
}

