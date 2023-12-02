//
//  ViewController.swift
//  PokemonSummaryApp
//
//  Created by beck on 2023/08/27.
//

import UIKit

class TopViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setItem()
        cellName()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setItem() {
        // タイトル追加
        self.navigationItem.title = L10n.title
    }
    func cellName() {
        tableView.register(UINib(nibName: "PokemonTitleCell", bundle: nil), forCellReuseIdentifier: "PokemonTitleCell")
    }
}

extension TopViewController: UITableViewDelegate, UITableViewDataSource {
    //　セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    //　セルの高さ
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        cell = tableView.dequeueReusableCell(withIdentifier: PokemonTitleCell.name, for: indexPath) as UITableViewCell
        if let cell = cell as? PokemonTitleCell {
            cell.setItem()
        }
        return cell
    }

}

