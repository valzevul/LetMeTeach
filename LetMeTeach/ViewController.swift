//
//  ViewController.swift
//  LetMeTeach
//
//  Created by Vadim Drobinin on 14/10/14.
//  Copyright (c) 2014 Vadim Drobinin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let factBook = FactBook()

    @IBOutlet weak var newFactLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        newFactLabel.text = factBook.factsArray[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNewFact() {
        newFactLabel.text = factBook.factsArray[1]
    }

}

