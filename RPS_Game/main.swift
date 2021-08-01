//
//  main.swift
//  RPS_Game
//
//  Created by moka on 2021/08/02.
//

import Foundation


class RPS_Game {
    
    // Game_run MainFunc
    func Game_run(){
        
    }

    // Game?run StartFunc
    func start() {
        print("RPS_Game (開始:s / 終了:e)")
        let Text:String = readLine() ?? ""
        
        switch Text {
            case "s":
                print("ゲームを開始します。")
                Game_run()
            case "e":
                print("プログラムを終了します。")
            default:
                print("入力した値が合っていません、どちらかを選択してください。")
                return start()
        }
    }
    
}

var game = RPS_Game()
game.start()
