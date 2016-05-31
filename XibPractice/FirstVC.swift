//
//  FirstVC.swift
//  XibPractice
//
//  Created by Chris Nowak on 5/30/16.
//  Copyright © 2016 Chris Nowak Tho, LLC. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    // View Lifecyle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // IBActions
    
    @IBAction func secondVCButtonPressed(sender: AnyObject) {
        let secondVC = SecondVC()
        secondVC.messageFromPresentingVC = "First View Controller Says Hello!"
        self.presentViewController(secondVC, animated: true, completion: nil)
    }

}
