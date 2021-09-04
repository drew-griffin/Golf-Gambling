//
//  second_ViewController.swift
//  Golf Gambling
//
//  Created by Drew Seidel on 9/14/20.
//  Copyright © 2020 Drew Seidel. All rights reserved.
//

import UIKit

class second_ViewController: UIViewController, UITextFieldDelegate {

     var playerOne_Name = ""
     var playerTwo_Name = ""
     var playerThree_Name = ""
     var playerFour_Name = ""
    
    //Names of the players
     var final_PlayerOne_Name = ""
     var final_PlayerTwo_Name = ""
     var final_PlayerThree_Name = ""
     var final_PlayerFour_Name = ""
    
    //player scores in string format
     var player1_Scores = ""
     var player2_Scores = ""
     var player3_Scores = ""
     var player4_Scores = ""
    
    //number arrays of the converted string format scores.
     var player1Scores = [Int]()
     var player2Scores = [Int]()
     var player3Scores = [Int]()
     var player4Scores = [Int]()
    
    //initialzied variables for computation.
     var player1Sum = 0
     var player2Sum = 0
     var player3Sum = 0
     var player4Sum = 0
    
    var player1toPlayer2 = 0
    var player1toPlayer3 = 0
    var player1toPlayer4 = 0
    var player1Debt = [Int]()
    var player1Win = [Int]()
    var player1totalDebt = 0
    var player1Winnings = 0
    
    var player2toPlayer1 = 0
    var player2toPlayer3 = 0
    var player2toPlayer4 = 0
    var player2Debt = [Int]()
    var player2Win = [Int]()
    var player2totalDebt = 0
    var player2Winnings = 0

    var player3toPlayer1 = 0
    var player3toPlayer2 = 0
    var player3toPlayer4 = 0
    var player3Debt = [Int]()
    var player3Win = [Int]()
    var player3totalDebt = 0
    var player3Winnings = 0;

    var player4toPlayer1 = 0
    var player4toPlayer2 = 0
    var player4toPlayer3 = 0
    var player4Debt = [Int]()
    var player4Win = [Int]()
    var player4totalDebt = 0
    var player4Winnings = 0
    
    @IBOutlet weak var playerOne_score: UILabel!
    
    
    @IBOutlet weak var playerTwo_score: UILabel!
    
    
    @IBOutlet weak var playerThree_score: UILabel!
    
    @IBOutlet weak var playerFour_score: UILabel!
    
    @IBOutlet weak var one_Scores: UITextField!
    @IBOutlet weak var two_Scores: UITextField!
    @IBOutlet weak var three_Scores: UITextField!
    @IBOutlet weak var four_Scores: UITextField!
    
   
    @IBOutlet weak var check: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        one_Scores.delegate = self
        two_Scores.delegate = self
        three_Scores.delegate = self
        four_Scores.delegate = self
        // Do any additional setup after loading the view.
    
        playerOne_score.text = "Enter \(final_PlayerOne_Name)'s Scores"
        playerTwo_score.text = "Enter \(final_PlayerTwo_Name)'s Scores"
        playerThree_score.text = "Enter \(final_PlayerThree_Name)'s Scores"
        playerFour_score.text = "Enter \(final_PlayerFour_Name)'s Scores"
        
       
        check.text = ""
        
         
          
    }
    
    
    
    @IBAction func calculate_Scores(_ sender: Any) {
      
        self.player1_Scores = one_Scores.text!
        self.player2_Scores = two_Scores.text!
        self.player3_Scores = three_Scores.text!
        self.player4_Scores = four_Scores.text!
        
       player1Scores = player1_Scores.compactMap{$0.wholeNumberValue}
       player2Scores = player2_Scores.compactMap{$0.wholeNumberValue}
       player3Scores = player3_Scores.compactMap{$0.wholeNumberValue}
       player4Scores = player4_Scores.compactMap{$0.wholeNumberValue}
        
        
        
        if player1Scores.count < 9 || player2Scores.count < 9 || player3Scores.count < 9 || player4Scores.count < 9 {
            
            check.text = "*ENTER AT LEAST 9 SCORES PER PLAYER!!"
            
            return
        }
        
     //  print(player1Scores)
       
        for i in 0...8 {
          
        if ((player1Scores[i] < player2Scores[i]) && (player1Scores[i] < player3Scores[i]) && (player1Scores[i] < player4Scores[i])){
                  
                  player2toPlayer1 += 1;
                  player3toPlayer1 += 1;
                  player4toPlayer1 += 1;
                 
                  
              }
              
              if ((player2Scores[i] < player1Scores[i]) && (player2Scores[i] < player3Scores[i]) && (player2Scores[i] < player4Scores[i])){
                         
                         player1toPlayer2 += 1;
                         player3toPlayer2 += 1;
                         player4toPlayer2 += 1;
                     
                     }
                  if ((player3Scores[i] < player1Scores[i]) && (player3Scores[i] < player2Scores[i]) && (player3Scores[i] < player4Scores[i])){
                            
                            player1toPlayer3 += 1;
                            player2toPlayer3 += 1;
                            player4toPlayer3 += 1;
                         
                        }
         
              
              
              
              if ((player4Scores[i] < player1Scores[i]) && (player4Scores[i] < player3Scores[i]) && (player4Scores[i] < player2Scores[i])){
                                   
                                   player1toPlayer4 += 1;
                                   player2toPlayer4 += 1;
                                   player3toPlayer4 += 1;
              
                 
              }
          
         
              
              
              
              
              if ((player1Scores[i] == player2Scores[i] && player1Scores[i] == player3Scores[i]) && (player1Scores[i]  < player4Scores[i])){
                  
                  player4toPlayer1 += 1;
                  player4toPlayer2 += 1;
                  player4toPlayer3 += 1;
             
             
              }
          
              if ((player2Scores[i] == player3Scores[i] && player2Scores[i] == player4Scores[i]) && player2Scores[i] < player1Scores[i]){
                     
                     player1toPlayer2 += 1;
                     player1toPlayer3 += 1;
                     player1toPlayer4 += 1;
              
                
                 }
            if ((player1Scores[i] == player2Scores[i] && player1Scores[i] == player4Scores[i]) && player1Scores[i] < player3Scores[i]){
                 
                 player3toPlayer1 += 1;
                 player3toPlayer2 += 1;
                 player3toPlayer4 += 1;
             
           
             }
              
         if ((player1Scores[i] == player3Scores[i] && player1Scores[i] == player4Scores[i]) && player1Scores[i] < player2Scores[i]){
                   
                   player2toPlayer1 += 1;
                   player2toPlayer3 += 1;
                   player2toPlayer4 += 1;
          
         }
         
        
              
          
          if ((player1Scores[i] == player2Scores[i]) && player1Scores[i] < player3Scores[i] && player1Scores[i] < player4Scores[i]){
                  
                  player3toPlayer1 += 1;
                  player3toPlayer2 += 1;
                  player4toPlayer1 += 1;
                  player4toPlayer2 += 1;
               
              }
          if ((player1Scores[i] == player3Scores[i]) && player1Scores[i] < player2Scores[i] && player1Scores[i] < player4Scores[i]){
                     
                     player2toPlayer1 += 1;
                     player2toPlayer3 += 1;
                     player4toPlayer1 += 1;
                     player4toPlayer3 += 1;
              
                 }
         if ((player1Scores[i] == player4Scores[i]) && player1Scores[i] < player2Scores[i] && player1Scores[i] < player3Scores[i]){
                     
                     player2toPlayer1 += 1;
                     player2toPlayer4 += 1;
                     player3toPlayer1 += 1;
                     player3toPlayer4 += 1;
                 
         }
         if ((player2Scores[i] == player3Scores[i]) && player2Scores[i] < player1Scores[i] && player2Scores[i] < player4Scores[i]){
             
             player1toPlayer2 += 1;
             player1toPlayer3 += 1;
             player4toPlayer2 += 1;
             player4toPlayer2 += 1;
          
            }
              if ((player2Scores[i] == player4Scores[i]) && player2Scores[i] < player1Scores[i] && player2Scores[i] < player3Scores[i]){
                    
                    player1toPlayer2 += 1;
                    player1toPlayer4 += 1;
                    player3toPlayer2 += 1;
                    player3toPlayer4 += 1;
               
                   }
          
          if ((player3Scores[i] == player4Scores[i]) && player3Scores[i] < player1Scores[i] && player3Scores[i] < player2Scores[i]){
             
             player1toPlayer3 += 1;
             player1toPlayer4 += 1;
             player2toPlayer3 += 1;
             player2toPlayer4 += 1;
         
            }
          

            
        }
       
        for i in 0...8 {
           
            player1Sum += player1Scores[i];
            player2Sum += player2Scores[i];
            player3Sum += player3Scores[i];
            player4Sum += player4Scores[i];

        }
    
         
        
          self.playerOne_Name = final_PlayerOne_Name
         // performSegue(withIdentifier: "names", sender: self)
          
          self.playerTwo_Name = final_PlayerTwo_Name
        //  performSegue(withIdentifier: "names", sender: self)
          
          
          self.playerThree_Name = final_PlayerThree_Name
         // performSegue(withIdentifier: "names", sender: self)
          
          
          self.playerFour_Name = final_PlayerFour_Name
          performSegue(withIdentifier: "computation", sender: self)
          
        
        
    
    }
    
    
    @IBAction func round_18(_ sender: Any) {
   
        
        
       
        
        
        
        self.player1_Scores = one_Scores.text!
          self.player2_Scores = two_Scores.text!
          self.player3_Scores = three_Scores.text!
          self.player4_Scores = four_Scores.text!
          
         player1Scores = player1_Scores.compactMap{$0.wholeNumberValue}
         player2Scores = player2_Scores.compactMap{$0.wholeNumberValue}
         player3Scores = player3_Scores.compactMap{$0.wholeNumberValue}
         player4Scores = player4_Scores.compactMap{$0.wholeNumberValue}
          
        // print(player1Scores)
        
        if player1Scores.count < 18 || player2Scores.count < 18 || player3Scores.count < 18 || player4Scores.count < 18 {
                  
                  check.text = "*ENTER AT LEAST 18 SCORES PER PLAYER!!"
                  
                  return
              }
        
        
        
          for i in 0...17 {
            
          if ((player1Scores[i] < player2Scores[i]) && (player1Scores[i] < player3Scores[i]) && (player1Scores[i] < player4Scores[i])){
                    
                    player2toPlayer1 += 1;
                    player3toPlayer1 += 1;
                    player4toPlayer1 += 1;
                   
                    
                }
                
                if ((player2Scores[i] < player1Scores[i]) && (player2Scores[i] < player3Scores[i]) && (player2Scores[i] < player4Scores[i])){
                           
                           player1toPlayer2 += 1;
                           player3toPlayer2 += 1;
                           player4toPlayer2 += 1;
                       
                       }
                    if ((player3Scores[i] < player1Scores[i]) && (player3Scores[i] < player2Scores[i]) && (player3Scores[i] < player4Scores[i])){
                              
                              player1toPlayer3 += 1;
                              player2toPlayer3 += 1;
                              player4toPlayer3 += 1;
                           
                          }
           
                
                
                
                if ((player4Scores[i] < player1Scores[i]) && (player4Scores[i] < player3Scores[i]) && (player4Scores[i] < player2Scores[i])){
                                     
                                     player1toPlayer4 += 1;
                                     player2toPlayer4 += 1;
                                     player3toPlayer4 += 1;
                
                   
                }
            
           
                
                
                
                
                if ((player1Scores[i] == player2Scores[i] && player1Scores[i] == player3Scores[i]) && (player1Scores[i]  < player4Scores[i])){
                    
                    player4toPlayer1 += 1;
                    player4toPlayer2 += 1;
                    player4toPlayer3 += 1;
               
               
                }
            
                if ((player2Scores[i] == player3Scores[i] && player2Scores[i] == player4Scores[i]) && player2Scores[i] < player1Scores[i]){
                       
                       player1toPlayer2 += 1;
                       player1toPlayer3 += 1;
                       player1toPlayer4 += 1;
                
                  
                   }
              if ((player1Scores[i] == player2Scores[i] && player1Scores[i] == player4Scores[i]) && player1Scores[i] < player3Scores[i]){
                   
                   player3toPlayer1 += 1;
                   player3toPlayer2 += 1;
                   player3toPlayer4 += 1;
               
             
               }
                
           if ((player1Scores[i] == player3Scores[i] && player1Scores[i] == player4Scores[i]) && player1Scores[i] < player2Scores[i]){
                     
                     player2toPlayer1 += 1;
                     player2toPlayer3 += 1;
                     player2toPlayer4 += 1;
            
           }
           
          
                
            
            if ((player1Scores[i] == player2Scores[i]) && player1Scores[i] < player3Scores[i] && player1Scores[i] < player4Scores[i]){
                    
                    player3toPlayer1 += 1;
                    player3toPlayer2 += 1;
                    player4toPlayer1 += 1;
                    player4toPlayer2 += 1;
                 
                }
            if ((player1Scores[i] == player3Scores[i]) && player1Scores[i] < player2Scores[i] && player1Scores[i] < player4Scores[i]){
                       
                       player2toPlayer1 += 1;
                       player2toPlayer3 += 1;
                       player4toPlayer1 += 1;
                       player4toPlayer3 += 1;
                
                   }
           if ((player1Scores[i] == player4Scores[i]) && player1Scores[i] < player2Scores[i] && player1Scores[i] < player3Scores[i]){
                       
                       player2toPlayer1 += 1;
                       player2toPlayer4 += 1;
                       player3toPlayer1 += 1;
                       player3toPlayer4 += 1;
                   
           }
           if ((player2Scores[i] == player3Scores[i]) && player2Scores[i] < player1Scores[i] && player2Scores[i] < player4Scores[i]){
               
               player1toPlayer2 += 1;
               player1toPlayer3 += 1;
               player4toPlayer2 += 1;
               player4toPlayer2 += 1;
            
              }
                if ((player2Scores[i] == player4Scores[i]) && player2Scores[i] < player1Scores[i] && player2Scores[i] < player3Scores[i]){
                      
                      player1toPlayer2 += 1;
                      player1toPlayer4 += 1;
                      player3toPlayer2 += 1;
                      player3toPlayer4 += 1;
                 
                     }
            
            if ((player3Scores[i] == player4Scores[i]) && player3Scores[i] < player1Scores[i] && player3Scores[i] < player2Scores[i]){
               
               player1toPlayer3 += 1;
               player1toPlayer4 += 1;
               player2toPlayer3 += 1;
               player2toPlayer4 += 1;
           
              }
            

              
          }
         
          for i in 0...17 {
             
              player1Sum += player1Scores[i];
              player2Sum += player2Scores[i];
              player3Sum += player3Scores[i];
              player4Sum += player4Scores[i];

          }
      
           
          
            self.playerOne_Name = final_PlayerOne_Name
           // performSegue(withIdentifier: "names", sender: self)
            
            self.playerTwo_Name = final_PlayerTwo_Name
          //  performSegue(withIdentifier: "names", sender: self)
            
            
            self.playerThree_Name = final_PlayerThree_Name
           // performSegue(withIdentifier: "names", sender: self)
            
            
            self.playerFour_Name = final_PlayerFour_Name
            performSegue(withIdentifier: "computation", sender: self)
            
          
          
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let vc = segue.destination as! third_ViewController
           let vc2 = segue.destination as! third_ViewController
           let vc3 = segue.destination as! third_ViewController
           let vc4 = segue.destination as! third_ViewController
           
           let vc5 = segue.destination as! third_ViewController
           let vc6 = segue.destination as! third_ViewController
           let vc7 = segue.destination as! third_ViewController
           let vc8 = segue.destination as! third_ViewController
        
           let vc9 = segue.destination as! third_ViewController
           let vc10 = segue.destination as! third_ViewController
           let vc11 = segue.destination as! third_ViewController
           let vc12 = segue.destination as! third_ViewController
        
            let vc13 = segue.destination as! third_ViewController
            let vc14 = segue.destination as! third_ViewController
            let vc15 = segue.destination as! third_ViewController
            let vc16 = segue.destination as! third_ViewController
        
        let vc17 = segue.destination as! third_ViewController
        let vc18 = segue.destination as! third_ViewController
        let vc19 = segue.destination as! third_ViewController
        let vc20 = segue.destination as! third_ViewController
        let vc21 = segue.destination as! third_ViewController
        let vc22 = segue.destination as! third_ViewController
        let vc23 = segue.destination as! third_ViewController
        
        let vc24 = segue.destination as! third_ViewController
        let vc25 = segue.destination as! third_ViewController
        let vc26 = segue.destination as! third_ViewController
        let vc27 = segue.destination as! third_ViewController
        let vc28 = segue.destination as! third_ViewController
        let vc29 = segue.destination as! third_ViewController
        let vc30 = segue.destination as! third_ViewController
        
        let vc31 = segue.destination as! third_ViewController
               let vc32 = segue.destination as! third_ViewController
               let vc33 = segue.destination as! third_ViewController
               let vc34 = segue.destination as! third_ViewController
               let vc35 = segue.destination as! third_ViewController
               let vc36 = segue.destination as! third_ViewController
               let vc37 = segue.destination as! third_ViewController
        
        let vc38 = segue.destination as! third_ViewController
               let vc39 = segue.destination as! third_ViewController
               let vc40 = segue.destination as! third_ViewController
               let vc41 = segue.destination as! third_ViewController
               let vc42 = segue.destination as! third_ViewController
               let vc43 = segue.destination as! third_ViewController
               let vc44 = segue.destination as! third_ViewController
    
                  
           
           vc.final_PlayerOne_Name = self.playerOne_Name
           vc2.final_PlayerTwo_Name = self.playerTwo_Name
           vc3.final_PlayerThree_Name = self.playerThree_Name
           vc4.final_PlayerFour_Name = self.playerFour_Name
           
           vc5.player1_Scores = self.player1_Scores
          vc6.player2_Scores = self.player2_Scores
          vc7.player3_Scores = self.player3_Scores
          vc8.player4_Scores  = self.player4_Scores
        
          vc9.player1Scores = self.player1Scores
          vc10.player2Scores = self.player2Scores
          vc11.player3Scores = self.player3Scores
          vc12.player4Scores = self.player4Scores
        
         vc13.player1Sum = self.player1Sum
          vc14.player2Sum = self.player2Sum
         vc15.player3Sum = self.player3Sum
         vc16.player4Sum = self.player4Sum
        
        
        vc17.player1toPlayer2 = self.player1toPlayer2
        vc18.player1toPlayer3 = self.player1toPlayer3
        vc19.player1toPlayer4 = self.player1toPlayer4
        vc20.player1Debt = self.player1Debt
        vc21.player1Win = self.player1Win
        vc22.player1totalDebt = self.player1totalDebt
        vc23.player1Winnings = self.player1Winnings
        
        vc24.player2toPlayer1 = self.player2toPlayer1
        vc25.player2toPlayer3 = self.player2toPlayer3
        vc26.player2toPlayer4 = self.player2toPlayer4
        vc27.player2Debt = self.player2Debt
        vc28.player2Win = self.player2Win
        vc29.player2totalDebt = self.player2totalDebt
        vc30.player2Winnings = self.player2Winnings
        
        vc31.player3toPlayer1 = self.player3toPlayer1
        vc32.player3toPlayer2 = self.player3toPlayer2
        vc33.player3toPlayer4 = self.player3toPlayer4
        vc34.player3Debt = self.player3Debt
        vc35.player3Win = self.player3Win
        vc36.player3totalDebt = self.player3totalDebt
        vc37.player3Winnings = self.player3Winnings
        
        vc38.player4toPlayer1 = self.player4toPlayer1
        vc39.player4toPlayer2 = self.player4toPlayer2
        vc40.player4toPlayer3 = self.player4toPlayer3
        vc41.player4Debt = self.player4Debt
        vc42.player4Win = self.player4Win
        vc43.player4totalDebt = self.player4totalDebt
        vc44.player4Winnings = self.player4Winnings
        
        
        
        
       }
 
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        one_Scores.resignFirstResponder()
        two_Scores.resignFirstResponder()
        three_Scores.resignFirstResponder()
        four_Scores.resignFirstResponder()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
