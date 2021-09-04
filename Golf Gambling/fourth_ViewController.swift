//
//  fourth_ViewController.swift
//  Golf Gambling
//
//  Created by Drew Seidel on 9/16/20.
//  Copyright © 2020 Drew Seidel. All rights reserved.
//

import UIKit

class fourth_ViewController: UIViewController {

        var count = 0
    
    
        var playerOne_Name = ""
        var playerTwo_Name = ""
        var playerThree_Name = ""
        var playerFour_Name = ""
       
       //Names of the players
        var final2_PlayerOne_Name = ""
        var final2_PlayerTwo_Name = ""
        var final2_PlayerThree_Name = ""
        var final2_PlayerFour_Name = ""
       
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
    
       var wager_value = [Int]();
   
    
    @IBOutlet weak var player1_main: UILabel!
    @IBOutlet weak var player1_debt1: UILabel!
    @IBOutlet weak var player1_debt2: UILabel!
    @IBOutlet weak var player1_debt3: UILabel!
    
    
    @IBOutlet weak var player2_main: UILabel!
    @IBOutlet weak var player2_debt1: UILabel!
    @IBOutlet weak var player2_debt2: UILabel!
    @IBOutlet weak var player2_debt3: UILabel!
    
    
    @IBOutlet weak var player3_main: UILabel!
    @IBOutlet weak var player3_debt1: UILabel!
    @IBOutlet weak var player3_debt2: UILabel!
    @IBOutlet weak var player3_debt3: UILabel!
    
    
    @IBOutlet weak var player4_main: UILabel!
    @IBOutlet weak var player4_debt1: UILabel!
    @IBOutlet weak var player4_debt2: UILabel!
    @IBOutlet weak var player4_debt3: UILabel!
    
    
   
   
    @IBOutlet weak var simplify_status: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        print(wager_value[0])
        // Do any additional setup after loading the view.
        player1_main.text = "\(final2_PlayerOne_Name) owe's"
        player1_debt1.text = " \(final2_PlayerTwo_Name) \(player1toPlayer2 * wager_value[0]) dollars"
         player1_debt2.text = " \(final2_PlayerThree_Name) \(player1toPlayer3 * wager_value[0]) dollars"
         player1_debt3.text = " \(final2_PlayerFour_Name) \(player1toPlayer4 * wager_value[0]) dollars"
        
        player2_main.text = "\(final2_PlayerTwo_Name) owe's"
              player2_debt1.text = " \(final2_PlayerOne_Name) \(player2toPlayer1 * wager_value[0]) dollars"
               player2_debt2.text = " \(final2_PlayerThree_Name) \(player2toPlayer3 * wager_value[0]) dollars"
               player2_debt3.text = " \(final2_PlayerFour_Name) \(player2toPlayer4 * wager_value[0]) dollars"
        
        player3_main.text = "\(final2_PlayerThree_Name) owe's"
              player3_debt1.text = " \(final2_PlayerOne_Name) \(player3toPlayer1 * wager_value[0]) dollars"
               player3_debt2.text = " \(final2_PlayerTwo_Name) \(player3toPlayer2 * wager_value[0]) dollars"
               player3_debt3.text = " \(final2_PlayerFour_Name) \(player3toPlayer4 * wager_value[0]) dollars"
    
         
          player4_main.text = "\(final2_PlayerFour_Name) owe's"
                player4_debt1.text = " \(final2_PlayerOne_Name) \(player4toPlayer1 * wager_value[0]) dollars"
                 player4_debt2.text = " \(final2_PlayerTwo_Name) \(player4toPlayer2 * wager_value[0]) dollars"
                 player4_debt3.text = " \(final2_PlayerThree_Name) \(player4toPlayer3 * wager_value[0]) dollars"
    
        
        //simplify_status.text = "Simplification Ready"
        simplify_status.text = ""
        
    }
    
    
    @IBAction func simplify(_ sender: Any) {
   
        if count == 0 {
        
            
          if (player1toPlayer2 >= player2toPlayer1){
                 player1toPlayer2 = player1toPlayer2 - player2toPlayer1;
                 player2toPlayer1 = 0;
             }
             else{
                 player2toPlayer1 = player2toPlayer1 - player1toPlayer2;
                 player1toPlayer2 = 0;
             }
             
             if (player1toPlayer3 >= player3toPlayer1){
                 player1toPlayer3 = player1toPlayer3 - player3toPlayer1;
                 player3toPlayer1 = 0;
             }
             else {
                 player3toPlayer1 = player3toPlayer1 - player1toPlayer3;
                 player1toPlayer3 = 0;
             }
           
             if (player1toPlayer4 >= player4toPlayer1){
                 player1toPlayer4 = player1toPlayer4 - player4toPlayer1;
                 player4toPlayer1 = 0;
             }
             else{
                 player4toPlayer1 = player4toPlayer1 - player1toPlayer4;
                 player1toPlayer4 = 0;
             }

             if (player2toPlayer3 >= player3toPlayer2){
                 player2toPlayer3 = player2toPlayer3 - player3toPlayer2;
                 player3toPlayer2 = 0;
             }
             else{
                 player3toPlayer2 = player3toPlayer2 - player2toPlayer3;
                 player2toPlayer3 = 0;
             }
             if(player2toPlayer4 >= player4toPlayer2){
                 player2toPlayer4 = player2toPlayer4 - player4toPlayer2;
                 player4toPlayer2 = 0;
             }
             else{
                 player4toPlayer2 = player4toPlayer2 - player2toPlayer4;
                 player2toPlayer4 = 0;
             }
             if (player3toPlayer4 >= player4toPlayer3){
                 player3toPlayer4 = player3toPlayer4 - player4toPlayer3;
                 player4toPlayer3 = 0;
             }
             else{
                 player4toPlayer3 = player4toPlayer3 - player3toPlayer4;
                 player3toPlayer4 = 0;
                 
             }
            
//
            
            player1_main.text = "\(final2_PlayerOne_Name) owe's"
                player1_debt1.text = " \(final2_PlayerTwo_Name) \(player1toPlayer2 * wager_value[0]) dollars"
                 player1_debt2.text = " \(final2_PlayerThree_Name) \(player1toPlayer3 * wager_value[0]) dollars"
                 player1_debt3.text = " \(final2_PlayerFour_Name) \(player1toPlayer4 * wager_value[0]) dollars"
                
                player2_main.text = "\(final2_PlayerTwo_Name) owe's"
                      player2_debt1.text = " \(final2_PlayerOne_Name) \(player2toPlayer1 * wager_value[0]) dollars"
                       player2_debt2.text = " \(final2_PlayerThree_Name) \(player2toPlayer3 * wager_value[0]) dollars"
                       player2_debt3.text = " \(final2_PlayerFour_Name) \(player2toPlayer4 * wager_value[0]) dollars"
                
                player3_main.text = "\(final2_PlayerThree_Name) owe's"
                      player3_debt1.text = " \(final2_PlayerOne_Name) \(player3toPlayer1 * wager_value[0]) dollars"
                       player3_debt2.text = " \(final2_PlayerTwo_Name) \(player3toPlayer2 * wager_value[0]) dollars"
                       player3_debt3.text = " \(final2_PlayerFour_Name) \(player3toPlayer4 * wager_value[0]) dollars"
            
                 
                  player4_main.text = "\(final2_PlayerFour_Name) owe's"
                        player4_debt1.text = " \(final2_PlayerOne_Name) \(player4toPlayer1 * wager_value[0]) dollars"
                         player4_debt2.text = " \(final2_PlayerTwo_Name) \(player4toPlayer2 * wager_value[0]) dollars"
                         player4_debt3.text = " \(final2_PlayerThree_Name) \(player4toPlayer3 * wager_value[0]) dollars"
            
            
            
            //player1_main.text = "\(final2_PlayerOne_Name) owe's"
//                   player1_debt1.text = "\(final2_PlayerTwo_Name) \(player1toPlayer2 * wager_value[0]) dollars"
//                    player1_debt2.text = "\(final2_PlayerThree_Name) \(player1toPlayer3 *wa) dollars"
//                    player1_debt3.text = "\(final2_PlayerFour_Name) \(player1toPlayer4) dollars"
//
//                   player2_main.text = "\(final2_PlayerTwo_Name) owe's"
//                         player2_debt1.text = "\(final2_PlayerOne_Name) \(player2toPlayer1) dollars"
//                          player2_debt2.text = "\(final2_PlayerThree_Name) \(player2toPlayer3) dollars"
//                          player2_debt3.text = "\(final2_PlayerFour_Name) \(player2toPlayer4) dollars"
//
//                   player3_main.text = "\(final2_PlayerThree_Name) owe's"
//                         player3_debt1.text = "\(final2_PlayerOne_Name) \(player3toPlayer1) dollars"
//                          player3_debt2.text = "\(final2_PlayerTwo_Name) \(player3toPlayer2) dollars"
//                          player3_debt3.text = "\(final2_PlayerFour_Name) \(player3toPlayer4) dollars"
//
//
//                     player4_main.text = "\(final2_PlayerFour_Name) owe's"
//                           player4_debt1.text = "\(final2_PlayerOne_Name) \(player4toPlayer1) dollars"
//                            player4_debt2.text = "\(final2_PlayerTwo_Name) \(player4toPlayer2) dollars"
//                            player4_debt3.text = "\(final2_PlayerThree_Name) \(player4toPlayer3) dollars"
//
                   
                   simplify_status.text = "*Press Again To\nSimplify Further"
        
              
                
        
        
        }
        
        if count == 1 {
            
            
            for i in 0...3 {
                    
                    if (i == 0){
                       
                        player1Debt.insert(0, at: i)
                        player2Debt.insert(player2toPlayer1, at: i)
                        player3Debt.insert(player3toPlayer1, at: i)
                        player4Debt.insert(player4toPlayer1, at: i)
                        
                        player1Win.insert(0, at: i)
                        player2Win.insert(player1toPlayer2, at: i)
                        player3Win.insert(player1toPlayer3, at: i)
                        player4Win.insert(player1toPlayer4, at: i)
                                               
                        
                        
                    }
                    if (i == 1){
                       
                        
                        
                        player2Debt.insert(0, at: i)
                        player1Debt.insert(player1toPlayer2, at: i)
                        player3Debt.insert(player3toPlayer2, at: i)
                        player4Debt.insert(player4toPlayer2, at: i)
                        
                        player2Win.insert(0, at: i)
                        player1Win.insert(player2toPlayer1, at: i)
                        player3Win.insert(player2toPlayer3, at: i)
                        player4Win.insert(player2toPlayer4, at: i)
                        
                        
                        
                        

                        
                        
                    }
                   if (i == 2){
            
        
                    player3Debt.insert(0, at: i)
                    player1Debt.insert(player1toPlayer3, at: i)
                    player2Debt.insert(player2toPlayer3, at: i)
                    player4Debt.insert(player4toPlayer3, at: i)
                    
                    player3Win.insert(0, at: i)
                    player1Win.insert(player3toPlayer1, at: i)
                    player2Win.insert(player3toPlayer2, at: i)
                    player4Win.insert(player3toPlayer4, at: i)
                    
    
                   
                   
                   }
                if (i == 3){
                
                    player4Debt.insert(0, at: i)
                    player1Debt.insert(player1toPlayer4, at: i)
                    player2Debt.insert(player2toPlayer4, at: i)
                    player3Debt.insert(player3toPlayer4, at: i)
                    
                    player4Win.insert(0, at: i)
                    player1Win.insert(player4toPlayer1, at: i)
                    player2Win.insert(player4toPlayer2, at: i)
                    player3Win.insert(player4toPlayer3, at: i)
                    
                    

                          }
                
                
                }
                
                
            for i in 0...3{
                       player1totalDebt += player1Debt[i];
                       player2totalDebt += player2Debt[i];
                       player3totalDebt += player3Debt[i];
                       player4totalDebt += player4Debt[i];
                        
                      player1Winnings += player1Win[i];
                      player2Winnings += player2Win[i];
                      player3Winnings += player3Win[i];
                     player4Winnings += player4Win[i];
                       
                 }
               /* player1Winnings = player2toPlayer1 + player3toPlayer1 + player4toPlayer1;
                player2Winnings = player1toPlayer2 + player3toPlayer2 + player4toPlayer2;
                player3Winnings = player1toPlayer3 + player2toPlayer3 + player4toPlayer3;
                player4Winnings = player1toPlayer4 + player2toPlayer4 + player3toPlayer4;
            */
               
               /* printf("\n%d %d", player1totalDebt, player1Winnings);
                 printf("\n%d %d", player2totalDebt, player2Winnings);
                 printf("\n%d %d", player3totalDebt, player3Winnings);
                 printf("\n%d %d", player4totalDebt, player4Winnings);
                printf("\n%d %d",player4Debt[0], player4toPlayer1);
                */
               
                if (player1totalDebt > player1Winnings){
                    for i in 0...3{
                        for j in 0...3{
                            if (player1Debt[i] > player1Win[j] && player1Win[j] > 0){
                                //printf("STOPPED HERE %d, %d", i, j);
                                //player2Win[j] = player2Win[j] - player2Debt[i];
                                 player1Debt[i] = player1Debt[i] - player1Win[j];
                                if (j == 0){
                                    player1Debt[0] = player1Debt[0] - player1Win[j];
                                    player1Debt[i] = player1Debt[i] + player1Win[j];
                                }
                                if (j == 1){
                                    player2Debt[0] = player2Debt[0] - player1Win[j];
                                    player2Debt[i] = player2Debt[i] + player1Win[j];
                                }
                                if (j == 2){
                                    player3Debt[0] = player3Debt[0] - player1Win[j];
                                    player3Debt[i] = player3Debt[i] + player2Win[j];
                                }
                                if (j == 3){
                                    player4Debt[0] = player4Debt[0] - player1Win[j];
                                    player4Debt[i] = player4Debt[i] + player1Win[j];
                                }
                            }
                        }
                    }
                }
                if (player2totalDebt > player2Winnings){
                    for i in 0...3{
                        for j in 0...3{
                            if (player2Debt[i] > player2Win[j] && player2Win[j] > 0){
                                //printf("STOPPED HERE %d, %d", i, j);
                                //player2Win[j] = player2Win[j] - player2Debt[i];
                                 player2Debt[i] = player2Debt[i] - player2Win[j];
                                if (j == 0){
                                    player1Debt[1] = player1Debt[1] - player2Win[j];
                                    player1Debt[i] = player1Debt[i] + player2Win[j];
                                }
                                if (j == 1){
                                    player2Debt[1] = player2Debt[1] - player2Win[j];
                                    player2Debt[i] = player2Debt[i] + player2Win[j];
                                }
                                if (j == 2){
                                    player3Debt[1] = player3Debt[1] - player2Win[j];
                                    player3Debt[i] = player3Debt[i] + player2Win[j];
                                }
                                if (j == 3){
                                    player4Debt[1] = player4Debt[1] - player2Win[j];
                                    player4Debt[i] = player4Debt[i] + player2Win[j];
                                }
                            }
                        }
                    }
                }
                if (player3totalDebt > player3Winnings){
                    for i in 0...3{
                        for j in 0...3{
                               if (player3Debt[i] > player3Win[j] && player3Win[j] > 0){
                                  // printf("STOPPED HERE %d, %d", i, j);
                                   //player2Win[j] = player2Win[j] - player2Debt[i];
                                    player3Debt[i] = player3Debt[i] - player3Win[j];
                                   if (j == 0){
                                       player1Debt[2] = player1Debt[2] - player3Win[j];
                                       player1Debt[i] = player1Debt[i] + player3Win[j];
                                   }
                                   if (j == 1){
                                       player2Debt[1] = player2Debt[1] - player3Win[j];
                                       player2Debt[i] = player2Debt[i] + player3Win[j];
                                   }
                                   if (j == 2){
                                       player3Debt[2] = player3Debt[2] - player3Win[j];
                                       player3Debt[i] = player3Debt[i] + player3Win[j];
                                   }
                                   if (j == 3){
                                       player4Debt[2] = player4Debt[2] - player3Win[j];
                                       player4Debt[i] = player4Debt[i] + player3Win[j];
                                   }
                               }
                           }
                       }
                
                  }
               if (player4totalDebt > player4Winnings){
                for i in 0...3{
                    for j in 0...3{
                           if (player4Debt[i] > player4Win[j] && player4Win[j] > 0){
                              // printf("STOPPED HERE %d, %d", i, j);
                               //player2Win[j] = player2Win[j] - player2Debt[i];
                                player4Debt[i] = player4Debt[i] - player4Win[j];
                               if (j == 0){
                                   player1Debt[3] = player1Debt[3] - player4Win[j];
                                   player1Debt[i] = player1Debt[i] + player4Win[j];
                               }
                               if (j == 1){
                                   player2Debt[3] = player2Debt[3] - player4Win[j];
                                   player2Debt[i] = player2Debt[i] + player4Win[j];
                               }
                               if (j == 2){
                                   player3Debt[3] = player3Debt[3] - player4Win[j];
                                   player3Debt[i] = player3Debt[i] + player4Win[j];
                               }
                               if (j == 3){
                                   player4Debt[3] = player4Debt[3] - player4Win[j];
                                   player4Debt[i] = player4Debt[i] + player4Win[j];
                               }
                           }
                       }
                   }
               }
            
             player1_main.text = "\(final2_PlayerOne_Name) owe's"
             player1_debt1.text = " \(final2_PlayerTwo_Name) \(player1Debt[1] * wager_value[0]) dollars"
             player1_debt2.text = " \(final2_PlayerThree_Name) \(player1Debt[2] * wager_value[0]) dollars"
            player1_debt3.text = " \(final2_PlayerFour_Name) \(player1Debt[3] * wager_value[0]) dollars"
                              
            player2_main.text = " \(final2_PlayerTwo_Name) owe's"
            player2_debt1.text = " \(final2_PlayerOne_Name) \(player2Debt[0] * wager_value[0]) dollars"
            player2_debt2.text = " \(final2_PlayerThree_Name) \(player2Debt[2] * wager_value[0]) dollars"
            player2_debt3.text = " \(final2_PlayerFour_Name) \(player2Debt[3] * wager_value[0]) dollars"
                              
            player3_main.text = " \(final2_PlayerThree_Name) owe's"
            player3_debt1.text = " \(final2_PlayerOne_Name) \(player3Debt[0] * wager_value[0]) dollars"
            player3_debt2.text = " \(final2_PlayerTwo_Name) \(player3Debt[1] * wager_value[0]) dollars"
            player3_debt3.text = " \(final2_PlayerFour_Name) \(player3Debt[3] * wager_value[0]) dollars"
                          
                               
            player4_main.text = "\(final2_PlayerFour_Name) owe's"
            player4_debt1.text = " \(final2_PlayerOne_Name) \(player4Debt[0] * wager_value[0]) dollars"
            player4_debt2.text = " \(final2_PlayerTwo_Name) \(player4Debt[1] * wager_value[0]) dollars"
            player4_debt3.text = " \(final2_PlayerThree_Name) \(player4Debt[2] * wager_value[0]) dollars"
                          
                              
            simplify_status.text = "*Fully Simplified"
                   
       
        }
        
         count += 1
    
    }
    
   
    
    
    @IBAction func restart(_ sender: Any) {
    
        performSegue(withIdentifier: "restart", sender: self)
        
    
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
