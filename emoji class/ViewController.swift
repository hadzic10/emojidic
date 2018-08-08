//
//  ViewController.swift
//  emoji class
//
//  Created by Harun  Hadzic on 8/8/18.
//  Copyright © 2018 Harun  Hadzic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var eTable: UITableView!
    
    var emojis = ["😎","🙂","😘","🤩","🤥","🤢","💩","👳🏻‍♂️","⛄️","🤓"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        eTable.dataSource = self
        eTable.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DD = segue.destination as! DefinitionViewController
        DD.emoji = sender as! String
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

