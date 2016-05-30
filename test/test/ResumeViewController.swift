//
//  ResumeViewController.swift
//  test
//
//  Created by Eliseo Fuentes on 5/29/16.
//  Copyright © 2016 Eliseo Fuentes. All rights reserved.
//

import UIKit

class ResumeViewController: UIViewController {
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var ingrLabel: UITextField!

    var pizza : [String] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sizeLabel.text = pizza[0];
        massLabel.text = pizza[1];
        cheeseLabel.text = pizza[2];
        ingrLabel.text = pizza[3];
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func confirm(sender: AnyObject) {
        let alert = UIAlertController(title: "Orden confirmada", message: "Tu pizza será enviada tan pronto sea posible", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: {
            (action: UIAlertAction!) in
            self.navigationController?.popToRootViewControllerAnimated(true)
        }))
        self.presentViewController(alert, animated: true, completion:nil)
    }

    @IBAction func cancel(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
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
