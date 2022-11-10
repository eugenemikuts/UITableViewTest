//
//  ViewController.swift
//  UITableViewTest
//
//  Created by macbook pro on 8.11.22.
//

import UIKit

//Изначально у нас есть некий массив данных (массив строк)
var data: [String] = ["убрать квартиру", "составить список", "завести блокнот"]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //Добавляем аутлет UITableView
    @IBOutlet weak var tableView: UITableView!
    
    //Метод numberOfRowsInSection возвращщает нам количество строк в секции. По умолчанию секция в таблице у нас одна. return data.count означает я верну столько строк, сколько элементов у нас в массиве
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    //Второй метод cellForRowAt indexPath должен вернуть нам элемент UITableViewCell. Он вызовется столько раз, сколько у нас ячеек в секции, каждый раз при вызове он будет брать UITableViewCell для IndexPath
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIndetifier", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row] //Забираем элементы из массива
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true) //Убираем залипание на ячейке, animated: true - это плавный уход выделения
        
        print(data[indexPath.row])
    }
    
}




