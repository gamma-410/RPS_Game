//
//  main.swift
//  RPS_Game
//
//  Created by moka on 2021/08/02.
//

import Foundation


class RPS_Game {

    // Game_run MainFunc()
    func Game_run(){
        
        print("== Select ✊(r) ✋(p) ✌️(s). (End: e) ==")
        let user_answer_before = readLine()
        
        switch user_answer_before {
        case "r":
            let user_answer_after = user_answer_before?.replacingOccurrences(of: "r", with: "✊")
            let new_answer = user_answer_after ?? ""
            print("You: \(new_answer) (Rock)")
            
        case "p":
            let user_answer_after = user_answer_before?.replacingOccurrences(of: "p", with: "✋")
            let new_answer = user_answer_after ?? ""
            print("You: \(new_answer) (Paper)")
            
        case "s":
            let user_answer_after = user_answer_before?.replacingOccurrences(of: "s", with: "✌️")
            let new_answer = user_answer_after ?? ""
            print("You: \(new_answer) (Scissors)")
        
        case "e":
            print("Exit the program.")
            exit(0)
        default:
            print(">> The values ​​you entered do not match. Select ✊(r) ✋(p) ✌️(s). <<")
            return Game_run()
        }
        
        
        let RPS = ["✊", "✋", "✌️"]
        let swift_answer = RPS.randomElement()
        print("SWIFT: \(swift_answer ?? "")")
        
        
        switch [user_answer_before, swift_answer] {
        // AIKO!
        case ["r", "✊"]:
            print(">>> DRAW! <<<")
        case ["p", "✋"]:
            print(">>> DRAW! <<<")
        case ["s", "✌️"]:
            print(">>> DRAW! <<<")
            
        // ✊Win!
        case ["r", "✌️"]:
            print(">> Your win! <<")
        case ["r", "✋"]:
            print(">> Your defeat... <<")
            
        // ✋Win!
        case ["p", "✊"]:
            print(">> Your win! <<")
        case ["p", "✌️"]:
            print(">> Your defeat... <<")
            
        // ✌️Win!
        case ["s", "✋"]:
            print(">> Your win! <<")
        case ["s", "✊"]:
            print(">> Your defeat... <<")
            
        // ????
        default:
            print("error: ????")
            exit(0)
        }
        
        return Game_run()
    }
    
    // Game_run StartFunc()
    func start() {
        print("RPS_Game (Start: s / End: e)")
        let Text:String = readLine() ?? ""
        
        switch Text {
            case "s":
                print("Start the game.")
                Game_run()
            case "e":
                print("Exit the program.")
                exit(0)
            default:
                print(">> The values ​​you entered do not match. Please select one. <<")
                return start()
        }
    }
    
}

var game = RPS_Game()
game.start()
