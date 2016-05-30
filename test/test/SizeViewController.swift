//
//  SizeViewController.swift
//  test
//
//  Created by Eliseo Fuentes on 5/29/16.
//  Copyright © 2016 Eliseo Fuentes. All rights reserved.
//

import UIKit

class SizeViewController: UIViewController {
    var pizza : [String] = ["","","",""];
    @IBOutlet weak var largeButton: UIButton!
    @IBOutlet weak var medButton: UIButton!
    @IBOutlet weak var SmallButton: UIButton!

    override func viewDidLoad() {
        /*largeButton.frame = CGRectMake(0, 0, 500, 500);
        largeButton.layer.cornerRadius = medButton.bounds.size.width / 2.0;
        largeButton.layer.masksToBounds = true;
        largeButton.backgroundColor = UIColor.redColor();
        
        medButton.frame = CGRectMake(0, 0, 400, 400);
        medButton.layer.cornerRadius = medButton.bounds.size.width / 2.0;
        medButton.layer.masksToBounds = true;
        medButton.backgroundColor = UIColor.blueColor();

        medButton.frame = CGRectMake(0, 0, 300, 300);
        medButton.layer.cornerRadius = medButton.bounds.size.width / 2.0;
        medButton.layer.masksToBounds = true;
        medButton.backgroundColor = UIColor.whiteColor();*/
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let b = sender as! UIButton;
        pizza[0]=(b.titleLabel?.text)!;
        let svc = segue.destinationViewController as! MassViewController;
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
