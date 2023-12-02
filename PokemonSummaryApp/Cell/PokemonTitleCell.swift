//
//  PokemonTitleCell.swift
//  PokemonSummaryApp
//
//  Created by beck on 2023/12/02.
//

import UIKit

class PokemonTitleCell: UITableViewCell {

    public static let name = "PokemonTitleCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    // 画像を追加（UIimagView）
    // 日付を追加
    
    func setItem() {
        titleLabel.text = L10n.title
    }
}
