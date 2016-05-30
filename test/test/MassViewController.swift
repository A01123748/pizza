//
//  MassViewController.swift
//  test
//
//  Created by Eliseo Fuentes on 5/29/16.
//  Copyright © 2016 Eliseo Fuentes. All rights reserved.
//

import UIKit

class MassViewController: UIViewController {
    var pizza : [String] = [];

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let b = sender as! UIButton;
        pizza[1]=(b.titleLabel?.text)!;
        let svc = segue.destinationViewController as! CheeseViewController;
        svc.pizza = self.pizza;
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
