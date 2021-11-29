//
//  TypoGraphy.swift
//  FontsHopeWork
//
//  Created by ziad on 09/10/2021.
//

import Foundation
import UIKit

extension DesignSystem{
    enum TypoGraphy{
        case title
        case button
        case content
        
        private var fontDescriptor: CustomFontDescriptor{
            switch self {
            case .title:
                return CustomFontDescriptor(font: .bold, size: 40, style: .title1)
            case .button:
                return CustomFontDescriptor(font: .regular, size: 26, style: .body)
            case .content:
                return CustomFontDescriptor(font: .medium, size: 14, style: .body)
            }
        }
        //Dynamic Font
        var font: UIFont{
            guard let font = UIFont(name: fontDescriptor.font.name, size: fontDescriptor.size) else { return UIFont.preferredFont(forTextStyle: fontDescriptor.style) }
            let fontMetrices = UIFontMetrics(forTextStyle: fontDescriptor.style)
            return fontMetrices.scaledFont(for: font)
        }
    }
}
