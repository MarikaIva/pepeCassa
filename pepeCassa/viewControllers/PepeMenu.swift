//
//  PepeMenu.swift
//  pepeCassa
//
//  Created by Marika on 11.09.2022.
//

import UIKit

class PepeMenu: UIViewController {
    
    var order:Order = Order()

    @IBOutlet var fieldMeme: UITextField!
    @IBOutlet var fieldMuz: UITextField!
    @IBOutlet var fieldNews: UITextField!
    @IBOutlet var fieldVideo: UITextField!
    @IBOutlet var fieldPorz: UITextField!
    @IBOutlet var fieldHoku: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        fieldMeme.keyboardType = .numberPad
        fieldMeme.delegate = self
        fieldMuz.keyboardType = .numberPad
        fieldMuz.delegate = self
        fieldNews.keyboardType = .numberPad
        fieldNews.delegate = self
        fieldVideo.keyboardType = .numberPad
        fieldVideo.delegate = self
        fieldPorz.keyboardType = .numberPad
        fieldPorz.delegate = self
        fieldHoku.keyboardType = .numberPad
        fieldHoku.delegate = self
    }

    @IBAction func pepeMenuNext(_ sender: UIButton) {
        order.menu.meme = Int(fieldMeme.text!) ?? 0
        order.menu.muz = Int(fieldMuz.text!) ?? 0
        order.menu.news = Int(fieldNews.text!) ?? 0
        order.menu.video = Int(fieldVideo.text!) ?? 0
        order.menu.cry = Int(fieldPorz.text!) ?? 0
        order.menu.hoku = Int(fieldHoku.text!) ?? 0
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let pepeContact = segue.destination as? PepeContact {
                pepeContact.order = order
            }
    }
    
}

extension PepeMenu: UITextFieldDelegate {
    private func textFieldShouldReturn( textField: UITextField ) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

