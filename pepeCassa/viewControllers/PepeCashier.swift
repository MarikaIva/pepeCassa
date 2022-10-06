//
//  NewViewController.swift
//  pepeCassa
//
//  Created by Marika on 11.09.2022.
//

import UIKit

class PepeCashier: UIViewController {
    
    var order: Order = Order()
    
    @IBOutlet weak var pepeMuj:UIImageView!
    @IBOutlet weak var pepeImageClown:UIImageView!
    @IBOutlet weak var pepeImageTears:UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pepeMujik(_ sender: UIButton) {
        order.cashier = sender.configuration?.title ?? "figna"
        order.imageCashier = pepeMuj.image ?? UIImage()
    }
    
    @IBAction func pepeClown(_ sender: UIButton) {
        order.cashier = sender.configuration?.title ?? "figna"
        order.imageCashier = pepeImageClown.image ?? UIImage()
    }
    
    @IBAction func pepeTears(_ sender: UIButton) {
        order.cashier = sender.configuration?.title ?? "figna"
        order.imageCashier = pepeImageTears.image ?? UIImage()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let pepeTable = segue.destination as? PepeTable {
                pepeTable.order = order
            }
    }
    

}
