//
//  ThirdVC.swift
//  XibPractice
//
//  Created by Chris Nowak on 5/30/16.
//  Copyright © 2016 Chris Nowak Tho, LLC. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {
    
    // IBOutlets
    
    @IBOutlet weak var messageLabel: UILabel!
    
    // Variables
    
    var messageFromSecondVC = ""
    
    // View Lifecycle
    
    convenience init(messageFromSecondVC: String) {
        self.init(nibName: "ThirdVC", bundle: nil)
        self.messageFromSecondVC = messageFromSecondVC
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: "ThirdVC", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.messageLabel.text = self.messageFromSecondVC
    }
    
    // IBActions
    
    @IBAction func backToSecondVCButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
