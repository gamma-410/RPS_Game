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
        
        print(">> ✊(r)✋(p)✌️(s)を選択してください。(終了:e)")
        let user_answer_before = readLine()
        
        switch user_answer_before {
        case "r":
            let user_answer_after = user_answer_before?.replacingOccurrences(of: "r", with: "✊")
            let new_answer = user_answer_after ?? ""
            print("あなた: \(new_answer)を出しました。")
            
        case "p":
            let user_answer_after = user_answer_before?.replacingOccurrences(of: "p", with: "✋")
            let new_answer = user_answer_after ?? ""
            print("あなた: \(new_answer)を出しました。")
            
        case "s":
            let user_answer_after = user_answer_before?.replacingOccurrences(of: "s", with: "✌️")
            let new_answer = user_answer_after ?? ""
            print("あなた: \(new_answer)を出しました。")
        
        case "e":
            print("プログラムを終了します。")
            exit(0)
        default:
            print("入力した値が合っていません。✊(r)✋(p)✌️(s)を選択してください。")
            return Game_run()
        }
        
        let RPS = ["✊", "✋", "✌️"]
        let swift_answer = RPS.randomElement()
        print("SWIFT: \(swift_answer ?? "")を出しました。")
        
        
        return Game_run()
    }
    
    // Game_run StartFunc()
    func start() {
        print(">> RPS_Game (開始:s / 終了:e)")
        let Text:String = readLine() ?? ""
        
        switch Text {
            case "s":
                print("ゲームを開始します。")
                Game_run()
            case "e":
                print("プログラムを終了します。")
                exit(0)
            default:
                print(">> 入力した値が合っていません、どちらかを選択してください。")
                return start()
        }
    }
    
}

var game = RPS_Game()
game.start()
