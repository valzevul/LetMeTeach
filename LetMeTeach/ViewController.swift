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
    let colorWheel = Colorwheel()


    @IBOutlet weak var newFactLabel: UITextView!
    @IBOutlet weak var newFactButton: UIButton!
    @IBOutlet weak var infoButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.setNavigationBarHidden(true, animated: true)
        newFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNewFact() {
        view.backgroundColor = colorWheel.randomColor()
        newFactButton.tintColor = view.backgroundColor
        newFactLabel.text = factBook.randomFact()
        newFactLabel.backgroundColor = view.backgroundColor
    }

    @IBAction func showInfo() {
    }
    
    override func viewDidDisappear(animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
}

