//
//  playViewController.swift
//  Hand Cricket Attack
//
//  Created by KARTHIK on 5/26/15.
//  Copyright (c) 2015 sam. All rights reserved.
//

import UIKit

class playViewController: UIViewController{
    
    @IBOutlet weak var input: UITextField!
    
    
    @IBOutlet var output: UIView!
    
    @IBOutlet weak var currscorelabel: UILabel!
    
    
    
    @IBOutlet weak var currscoreoutput: UITextView!
    
    
    @IBOutlet weak var chase: UITextField!
    @IBOutlet weak var settarget: UILabel!
    
    
    var target : UInt32 = 0
    
    var bowl : UInt32 = 0
    var gameOver = true
    
    
    var score : Int = 0
    func consoleOut(text : String) {
        
        currscoreoutput.text = currscoreoutput.text + text
        
    }
    
    
    func generatebowling() ->UInt32 {
        return arc4random_uniform(7)
    }
    
    func clearInput() {
        input.text = ""
    }
    
    func setter()
    {
        var set : Int? = chase.text.toInt()
        
        

    }
    
    
        @IBAction func BeginChase(sender: AnyObject) {
           
            
            

                       if gameOver {
                var newGame = input.text
                        
                if newGame == "Y" {
                    
                    gameOver = false
                    
                   clearInput()
                    var alertView = UIAlertView();
                    alertView.addButtonWithTitle("Start");
                    alertView.title = "New Game";
                    alertView.message = "Enter the number to play";
                    alertView.show();
                   consoleOut("\n Enter the number to play\n")
                    setter()
                     clearInput()
                    score = 0
                    
                    return
                }
                       
            }
            
            var possibleGuess : Int? = input.text.toInt()
            var set : Int? = chase.text.toInt()
            

            
            if let guess = possibleGuess {
                if guess < 7
                {
                   target = generatebowling()
                    if UInt32(guess) != target {
                    var batt = String(guess)
                    currscoreoutput.text = ""+batt
                        
                  
                   
                      
                    score = score + guess
                    consoleOut("\n The Current Score: \(score)\n")
                        
                        var alertView = UIAlertView();
                        alertView.addButtonWithTitle("Ok");
                        alertView.title = "SCORE CARD";
                        alertView.message = "The current score \(score)";
                        alertView.show();

                        
                        
                       
                        if (score >= set)
                            
                        {
                            consoleOut("\nYou have Won the Match!!\n")
                            
                            
                            currscoreoutput.text = "\n you Have won the match!!! :) wanna play again? (Y)\n"
                            var alertView = UIAlertView();
                            alertView.addButtonWithTitle("Ok");
                            alertView.title = "WON";
                            alertView.message = "Congratulations! You Have won the Match! Enter Y for next match!";
                            alertView.show();

                           
                            gameOver = true
                           
                            
                        }
                         clearInput()
                        
                   }
                  
                  
                     else {
                        if guess == 6
                        {
                        
                        var alertView1 = UIAlertView();
                        
                        alertView1.addButtonWithTitle("Ok");
                        alertView1.title = "Wicket";
                        alertView1.message = "You Have been caught";
                        alertView1.show();
                        }
                        else if guess == 5
                        {
                            var alertView1 = UIAlertView();
                            
                            alertView1.addButtonWithTitle("Ok");
                            alertView1.title = "Wicket";
                            alertView1.message = "You Lose by LBW";
                            alertView1.show();
                        }
                        else if guess == 4
                        {
                            var alertView1 = UIAlertView();
                            
                            alertView1.addButtonWithTitle("Ok");
                            alertView1.title = "Wicket";
                            alertView1.message = "You Have been bowled";
                            alertView1.show();
  
                        }
                        else if (guess == 1||2||3)
                        {
                            var alertView1 = UIAlertView();
                            
                            alertView1.addButtonWithTitle("Ok");
                            alertView1.title = "Wicket";
                            alertView1.message = "You got run out";
                            alertView1.show();

                        }
                         var alertView1 = UIAlertView();
                        alertView1.addButtonWithTitle("Ok");
                        alertView1.title = "LOSE!!!!";
                        alertView1.message = "OOPSS!!! You Have lose the Match! Enter Y for next match!";
                        alertView1.show();

                        
                    consoleOut("\n\(guess): You Lose the match!\n")
                    currscoreoutput.text = "\n You Lose the match!! :( wanna play again? (Y)\n"
                        
                    
                    gameOver = true
                }
                clearInput()
                
                    
            } else {
                    
                    var alertView1 = UIAlertView();
                    alertView1.addButtonWithTitle("Ok");
                    alertView1.title = "ILLEGAL";
                    alertView1.message = "You can't score more than six in a ball :P ";
                    alertView1.show();
                consoleOut("\nYou can't score more than six in a ball :P !\n")
                
            }
            }
    }

        
        

    

       override func viewDidLoad() {
        super.viewDidLoad()
     

        
        
        
        // Do any additional setup after loading the view.
          }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: "handleSingleTap:")
        tapRecognizer.numberOfTapsRequired = 1
        self.view.addGestureRecognizer(tapRecognizer)
        
    }
    
    func handleSingleTap(recognizer: UITapGestureRecognizer) {
        
        self.view.endEditing(true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    @IBAction func beginchase(sender: AnyObject) {
        
    }
    

    @IBAction func tomainviewpressed(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
        
    }
}
