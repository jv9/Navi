//
//  ProfileViewController.swift
//  Chidori
//
//  Created by NIX on 15/9/27.
//  Copyright © 2015年 nixWork. All rights reserved.
//

import UIKit
import Navi

class ProfileViewController: UIViewController {

    /*
    var user: User?

    @IBOutlet weak var avatarImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Profile"

        updateAvatarViewWithSize(avatarImageView.bounds.size)
    }

    private func updateAvatarViewWithSize(size: CGSize) {

        guard let user = user else {
            return
        }

        let avatarStyle: AvatarStyle = .Free(name: "Chidori", transform: { image in

            guard let sourceCIImage = CIImage(image: image) else {
                return nil
            }

            let filter = blurWithRadius(image.size.width / 60) +++ overlayWithColor(UIColor.blueColor().colorWithAlphaComponent(0.1))

            let resultCIImage = filter(sourceCIImage)

            return UIImage(CIImage: resultCIImage)
        })

        let userAvatar = UserAvatar(userID: user.userID, avatarStyle: avatarStyle)

        avatarImageView.navi_setAvatar(userAvatar)
    }
     */
}

