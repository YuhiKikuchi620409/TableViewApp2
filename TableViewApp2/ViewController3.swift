//
//  ViewController3.swift
//  TableViewApp2
//
//  Created by 菊地雄飛 on 2019/06/06.
//  Copyright © 2019 菊地雄飛. All rights reserved.
//

import UIKit

//変数の設置
var list = [String]()

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
        
        
//        テキストフィールドの設定
    @IBOutlet weak var textFild: UITextField!
    
        
        
//    追加ボタン
    @IBAction func tuikaButton(_ sender: Any) {
        
//        変数に入力内容を入れる
     list.append(textFild.text!)
        
//        追加bボタンを押したらフィールドをからにする
        textFild.text = ""
//        変数の中身をUDに追加する
        UserDefaults.standard.set( list, forKey: "todolist")
        
//        1つ前の画面に戻す
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


