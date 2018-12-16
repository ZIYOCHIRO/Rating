//
//  UserVCExtension.swift
//  Rating
//
//  Created by 10.12 on 2018/12/14.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

extension UserViewController {
    
    
    func toggleImageButton() {
        let alpha = CGFloat(camera.alpha == 0 ? 1 : 0)
        image.alpha = alpha
        camera.alpha = alpha
    }
    func radians(_ degrees: Double) -> CGFloat {
        return CGFloat(degrees * Double.pi / 180)
    }
}
