//
//  Avatar.swift
//  Navi
//
//  Created by NIX on 15/9/26.
//  Copyright © 2015年 nixWork. All rights reserved.
//

import Foundation

public func ==(lhs: AvatarStyle, rhs: AvatarStyle) -> Bool {

    switch (lhs, rhs) {

    case (.original, .original):
        return true

    case (.rectangle(let sizeA), .rectangle(let sizeB)) where sizeA == sizeB:
        return true

    case (.roundedRectangle(let sizeA, let cornerRadiusA, let borderWidthA), .roundedRectangle(let sizeB, let cornerRadiusB, let borderWidthB)) where (sizeA == sizeB && cornerRadiusA == cornerRadiusB && borderWidthA == borderWidthB):
        return true

    case (.free(let nameA, _), .free(let nameB, _)) where nameA == nameB:
        return true

    default:
        return false
    }
}

public enum AvatarStyle: Equatable {

    case original
    case rectangle(size: CGSize)
    case roundedRectangle(size: CGSize, cornerRadius: CGFloat, borderWidth: CGFloat)

    public typealias Transform = (UIImage) -> UIImage?
    case free(name: String, transform: Transform)

    var hashString: String {

        switch self {

        case .original:
            return "Original-"

        case .rectangle(let size):
            return "Rectangle-\(size)-"

        case .roundedRectangle(let size, let cornerRadius, let borderWidth):
            return "RoundedRectangle-\(size)-\(cornerRadius)-\(borderWidth)-"

        case .free(let name, _):
            return "Free-\(name)-"
        }
    }
}

public protocol Avatar {

    var URL: Foundation.URL? { get }
    var style: AvatarStyle { get }
    var placeholderImage: UIImage? { get }
    var localOriginalImage: UIImage? { get }
    var localStyledImage: UIImage? { get }

    func saveOriginalImage(_ originalImage: UIImage, styledImage: UIImage)
}

public extension Avatar {

    public var key: String {
        return style.hashString + (URL?.absoluteString ?? "")
    }
}

