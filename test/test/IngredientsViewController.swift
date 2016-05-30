//
//  IngredientsViewController.swift
//  test
//
//  Created by Eliseo Fuentes on 5/29/16.
//  Copyright © 2016 Eliseo Fuentes. All rights reserved.
//

import UIKit

class IngredientsViewController: UIViewController {
    @IBOutlet weak var hasJam: UISwitch!
    @IBOutlet weak var hasPep: UISwitch!
    @IBOutlet weak var hasTurkey: UISwitch!
    @IBOutlet weak var hasSausage: UISwitch!
    @IBOutlet weak var hasOlives: UISwitch!
    @IBOutlet weak var hasOnnion: UISwitch!
    @IBOutlet weak var hasPepper: UISwitch!
    @IBOutlet weak var hasPinneaple: UISwitch!
    @IBOutlet weak var hasAnchoves: UISwitch!
    @IBOutlet weak var continueButton: UIButton!
    var pizza : [String] = [];
    var ingredientes = "";
    var i = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.enabled = false;
        [continueButton .setTitleColor(UIColor.grayColor(), forState: UIControlState.Disabled)];
        [continueButton .setTitleColor(UIColor.cyanColor(), forState: UIControlState.Normal)];

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        pizza[3]=ingredientes;
        let svc = segue.destinationViewController as! ResumeViewController;
        svc.pizza = self.pizza;
    }
    
    @IBAction func didSelectedAnIngredient(sender: AnyObject) {
        var isValid = false;
        checkIfOneOrFive(sender);
        
        let buton = sender as! UISwitch;
        if(buton.on){
            i += 1;
        }
        else{
            i -= 1;
        }
        if(i < 6 && i > 0){
            
            isValid = true;
        }
        else {
            isValid = false;
        }
        if(isValid){
            continueButton.enabled = true;
            continueButton.tintColor = UIColor.whiteColor();
        }
        else{
            continueButton.enabled = false;
        }
    }

    func checkIfOneOrFive(sender: AnyObject){
            //Has at least one selected
            //Verify there's no more than 5
        let swtch = sender as! UISwitch;
            if(swtch == hasJam){
                if(ingredientes.rangeOfString("Jamón") == nil){
                    ingredientes += "Jamón"
                }
                else{
                    ingredientes = ingredientes.stringByReplacingOccurrencesOfString("Jamón", withString: "")
                }
            }
            if(swtch == hasPep){
                if(ingredientes.rangeOfString("Pepperoni") == nil){
                    ingredientes += ", Pepperoni"
                }
                else{
                    ingredientes = ingredientes.stringByReplacingOccurrencesOfString(", Pepperoni", withString: "")
                }
            }
            if(swtch == hasTurkey){
                if(ingredientes.rangeOfString("Pavo") == nil){
                    ingredientes += ", Pavo"
                }
                else{
                    ingredientes = ingredientes.stringByReplacingOccurrencesOfString(", Pavo", withString: "")
                }
            }
            if(swtch == hasSausage){
                if(ingredientes.rangeOfString("Salchicha") == nil){
                    ingredientes += ", Salchicha"
                }
                else{
                    ingredientes = ingredientes.stringByReplacingOccurrencesOfString(", Salchicha", withString: "")
                }
            }
            if(swtch == hasOlives){
                if(ingredientes.rangeOfString("Aceitunas") == nil){
                    ingredientes += ", Aceitunas"
                }
                else{
                   ingredientes = ingredientes.stringByReplacingOccurrencesOfString(", Aceitunas", withString: "")
                }
            }
            if(swtch == hasOnnion){
                if(ingredientes.rangeOfString("Cebolla") == nil){
                    ingredientes += ", Cebolla"
                }
                else{
                    ingredientes = ingredientes.stringByReplacingOccurrencesOfString(", Cebolla", withString: "")
                }
            }
            if(swtch == hasPepper){
                if(ingredientes.rangeOfString("Pimiento") == nil){
                    ingredientes += ", Pimiento"
                }
                else{
                    ingredientes = ingredientes.stringByReplacingOccurrencesOfString(", Pimiento", withString: "")
                }
            }
            if(swtch == hasPinneaple){
                if(ingredientes.rangeOfString("Piña") == nil){
                    ingredientes += ", Piña"
                }
                else{
                    ingredientes = ingredientes.stringByReplacingOccurrencesOfString(", Piña", withString: "")
                }
            }
            if(swtch == hasAnchoves){
                if(ingredientes.rangeOfString("Anchoas") == nil){
                    ingredientes += ", Anchoas"
                }
                else{
                    ingredientes = ingredientes.stringByReplacingOccurrencesOfString(", Anchoas", withString: "")
                }
            }
        NSLog(ingredientes);
        
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
