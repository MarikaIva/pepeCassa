//
//  Pepe Order.swift
//  pepeCassa
//
//  Created by Marika on 12.09.2022.
//

import UIKit

class PepeOrder: UIViewController {
    
    var order:Order = Order()
    
    @IBOutlet weak var imageViewPepeOrder: UIImageView!
    @IBOutlet weak var textTablePepeOrder: UITextView!
    
    @IBOutlet weak var orderFrom: UITextView!
    @IBOutlet weak var orderTo: UITextView!
    @IBOutlet weak var orderTime: UITextView!
    @IBOutlet weak var orderPunishment: UITextView!
    
    @IBOutlet weak var sumOrder: UITextView!
    
    @IBOutlet weak var orderText: UITextView!
    
    override func viewDidLoad() {
        imageViewPepeOrder.image =  order.imageCashier
//        imageViewPepeOrder.frame.origin.x =
            view.addSubview(imageViewPepeOrder)
  
        textTablePepeOrder.text = order.table
        orderFrom.text = order.contact.from
        orderTo.text = order.contact.to
        orderTime.text = order.contact.time
        orderPunishment.text = order.contact.punishment
        sumOrder.text = sumMenu(countMenu:order.menu)
        orderText.text = collectMenu(showMenu:order.menu)

        
            super.viewDidLoad()
        
    }
    
    func sumMenu(countMenu:Menu) -> String
    {
        let sum = countMenu.meme + countMenu.muz + countMenu.news + countMenu.video + countMenu.cry + countMenu.hoku
        return String (sum)
        
    
    }
    
    func collectMenu(showMenu:Menu) -> String {
        var colectMenu:String = ""
        if (showMenu.meme != 0) {
            colectMenu = colectMenu + "мемесы - \(showMenu.meme)\n"
        }
        
        if (showMenu.muz != 0) {
            colectMenu = colectMenu + "музончик - \(showMenu.muz)\n"
        }
        
        if (showMenu.news != 0) {
            colectMenu = colectMenu + "новости про татар - \(showMenu.news)\n"
        }
        
        if (showMenu.video != 0) {
            colectMenu = colectMenu + "видосики с котиками - \(showMenu.video)\n"
        }
        if (showMenu.cry != 0) {
            colectMenu = colectMenu + "порция нытья - \(showMenu.cry)\n"
        }
        if (showMenu.hoku != 0) {
            colectMenu = colectMenu + "хоку - \(showMenu.hoku)\n"
        }
        return colectMenu
    }

}
