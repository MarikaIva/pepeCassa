//
//  PepeCashier.swift
//  pepeCassa
//
//  Created by Marika on 11.09.2022.
//

import UIKit

class PepeTable: UIViewController {
 
    var order: Order = Order()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
  
    @IBAction func pepeMental(_ sender: UIButton) {
        order.table = sender.configuration?.title ?? "table_pust"
    }
    
   
    @IBAction func pepeMeladze(_ sender: UIButton) {
        order.table = sender.configuration?.title ?? "table_pust"
    }
    
    @IBAction func pepeGory(_ sender: UIButton) {
        order.table = sender.configuration?.title ?? "table_pust"
    }
    
    @IBAction func pepeZnaesh(_ sender: UIButton) {
        order.table = sender.configuration?.title ?? "table_pust"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let pepeMenu = segue.destination as? PepeMenu {
                pepeMenu.order = order
            }
    }
}
