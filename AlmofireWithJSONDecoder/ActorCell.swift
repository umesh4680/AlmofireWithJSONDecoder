//
//  ActorCell.swift
//  AlmofireWithJSONDecoder
//
//  Created by Umesh on 06/12/17.
//  Copyright © 2017 Umesh. All rights reserved.
//

import UIKit

class ActorCell: UITableViewCell {

    @IBOutlet weak var actorImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
