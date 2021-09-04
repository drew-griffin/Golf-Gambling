//
//  ViewController.swift
//  Golf Gambling
//
//  Created by Drew Seidel on 9/14/20.
//  Copyright © 2020 Drew Seidel. All rights reserved.
//

//view controller
//look at 
import UIKit

class ViewController: UIViewController {

    
    var playerOne_Name = ""
    var playerTwo_Name = ""
    var playerThree_Name = ""
    var playerFour_Name = ""
   
    
    @IBOutlet weak var playerOne: UITextField!
    
    @IBOutlet weak var playerTwo: UITextField!
    
    
    @IBOutlet weak var playerThree: UITextField!
    
    
    @IBOutlet weak var playerFour: UITextField!
    
    
    @IBOutlet weak var nowCalculating: UITextView!
    
    
   //functions for second view controller
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerOne.delegate = self
        playerTwo.delegate = self
        playerThree.delegate = self
        playerFour.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
       

    
    @IBAction func printIfPressed(_ sender: Any) {
         
        self.playerOne_Name = playerOne.text!
       // performSegue(withIdentifier: "names", sender: self)
        
        self.playerTwo_Name = playerTwo.text!
      //  performSegue(withIdentifier: "names", sender: self)
        
        
        self.playerThree_Name = playerThree.text!
       // performSegue(withIdentifier: "names", sender: self)
        
        
        self.playerFour_Name = playerFour.text!
        performSegue(withIdentifier: "names", sender: self)
        
    
        
       // nowCalculating.text = "Now Calculating wins and losses for \(playerOne.text!), //\(playerTwo.text!), \(playerThree.text!) and \(playerFour.text!)!"
    
        
       // nowCalculating.text = "LOADING..."
        
    /*
        guard let vc = storyboard?.instantiateViewController(identifier:
        "second_page") as? second_ViewController else {
            return
        }
     
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // Change `2.0` to the desired number of seconds.
           // Code you want to be delayed
            // self.present(vc, animated: true)
            
        }
        
     */
        
    // self.present(vc, animated: true)
       
     /* let secondsToDelay = 5.0
     DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
         print("This message is delayed")
          sleep(4)
      }
       
*/
        
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! second_ViewController
        let vc2 = segue.destination as! second_ViewController
        let vc3 = segue.destination as! second_ViewController
        let vc4 = segue.destination as! second_ViewController
        
        vc.final_PlayerOne_Name = self.playerOne_Name
        vc2.final_PlayerTwo_Name = self.playerTwo_Name
        vc3.final_PlayerThree_Name = self.playerThree_Name
        vc4.final_PlayerFour_Name = self.playerFour_Name
    }
    
    
    
}

extension ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
}



