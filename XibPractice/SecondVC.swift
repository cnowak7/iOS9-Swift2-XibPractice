//
//  SecondVC.swift
//  XibPractice
//
//  Created by Chris Nowak on 5/30/16.
//  Copyright © 2016 Chris Nowak Tho, LLC. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    // IBOutlets
    
    @IBOutlet weak var messageLabel: UILabel!
    
    // Variables
    
    var messageFromPresentingVC = ""
    
    // View Lifecyle
    
    convenience init(messageFromPresentingVC: String) {
        self.init(nibName: "SecondVC", bundle: nil)
        self.messageFromPresentingVC = messageFromPresentingVC
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: "SecondVC", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.messageLabel.text = self.messageFromPresentingVC
    }
    
    // IBActions
    
    @IBAction func backButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
