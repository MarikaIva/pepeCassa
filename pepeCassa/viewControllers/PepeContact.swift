//
//  Pepe Contact.swift
//  pepeCassa
//
//  Created by Marika on 12.09.2022.
//

import UIKit

class PepeContact: UIViewController {
    
    var order:Order = Order()
    
    @IBOutlet weak var fieldFromContact: UITextField!
    @IBOutlet weak var fieldToContact: UITextField!
    @IBOutlet weak var fieldTimeForWait: UITextField!
    @IBOutlet weak var fieldPunishment: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        fieldFromContact.delegate = self
        fieldToContact.delegate = self
        fieldTimeForWait.delegate = self
        fieldPunishment.delegate = self
        
       
    }
    
    @IBAction func pepeContactNext(_ sender: UIButton) {
        order.contact.from = fieldFromContact?.text ?? ""
        order.contact.to = fieldToContact?.text ?? ""
        order.contact.time = fieldTimeForWait?.text ?? ""
        order.contact.punishment = fieldPunishment?.text ?? ""
        
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let pepeOrder = segue.destination as? PepeOrder {
                pepeOrder.order = order
            }
    }
}

extension PepeContact: UITextFieldDelegate {
    private func textFieldShouldReturn( textField: UITextField ) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
