//
//  ViewController.swift
//  PokemonSummaryApp
//
//  Created by beck on 2023/08/27.
//

import UIKit

class TopViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setItem()
        
    }
    
    func setItem() {
        // タイトル追加
        self.navigationItem.title = L10n.title
    }
   
}



