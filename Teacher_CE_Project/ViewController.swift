//
//  ViewController.swift
//  Teacher_CE_Project
//
//  Created by csylvester15 on 5/23/15.
//  Copyright (c) 2015 csylvester15. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var usernameBox: UITextField!
    @IBOutlet weak var passwordBox: UITextField!
    
    var model = Model()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "Login"){
            
        }
    }
    @IBAction func loginPress(sender: UIButton) {
        if(model.checkUsername(usernameBox.text)){
            if(model.checkPassword(passwordBox.text)){
                      performSegueWithIdentifier("Login", sender: loginButton)
            }
        }
    }
    
    @IBAction func usernameEdited(sender: UITextField) {
        textFieldDidBeginEditing(sender)
    }
    
    @IBAction func usernameFinished(sender: UITextField) {
        textFieldDidEndEditing(sender)
    }
    
    @IBAction func passwordEdited(sender: UITextField) {
        textFieldDidBeginEditing(sender)
    }
    
    @IBAction func passwordFinished(sender: UITextField) {
        textFieldDidEndEditing(sender)
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        animateViewMoving(true, moveValue: 100)
    }
    func textFieldDidEndEditing(textField: UITextField) {
        animateViewMoving(false, moveValue: 100)
    }
    
    func animateViewMoving (up:Bool, moveValue :CGFloat){
        var movementDuration:NSTimeInterval = 0.3
        var movement:CGFloat = ( up ? -moveValue : moveValue)
        UIView.beginAnimations( "animateView", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(movementDuration )
        self.view.frame = CGRectOffset(self.view.frame, 0,  movement)
        UIView.commitAnimations()
    }

    
}

