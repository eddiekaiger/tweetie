//
//  TweetTableViewCell.swift
//  Tweetie
//
//  Created by Eddie Kaiger on 11/8/15.
//  Copyright © 2015 Eddie Kaiger. All rights reserved.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {

        super.init(style: .Subtitle, reuseIdentifier: reuseIdentifier)

        textLabel?.textColor = UIColor.blueColor()
        textLabel?.font = UIFont.systemFontOfSize(15)
        detailTextLabel?.textColor = UIColor.blackColor()
        detailTextLabel?.font = UIFont.systemFontOfSize(18)
        detailTextLabel?.numberOfLines = 0
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        textLabel?.text = nil
        detailTextLabel?.text = nil
    }
}
