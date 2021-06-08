//
//  CommonClass.swift
//  CakeShop
//
//  Created by Ubrain_iOS2 on 19/03/20.
//  Copyright © 2020 Ubrain_iOS2. All rights reserved.
//

import SwiftUI

struct CommonClass: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CommonClass_Previews: PreviewProvider {
    static var previews: some View {
        CommonClass()
    }
}

extension Color {
    
    static let COLOR_155 : Color = color1(red: 155, green: 155, blue: 155, alpha: 1)
   
    static let COLOR_171_200_61 : Color = color1(red: 171, green: 200, blue: 61, alpha: 1)
    static let COLOR_154_188_38 : Color = color1(red: 154, green: 188, blue: 38, alpha: 1)
    static let COLOR_163_194_50 : Color = color1(red: 163, green: 194, blue: 50, alpha: 0.26)
    
    static let COLOR_247_158_191 : Color = color1(red: 247, green: 158, blue: 191, alpha: 1)
    static let COLOR_244_91_147 : Color = color1(red: 244, green: 91, blue: 147, alpha: 1)
    static let COLOR_244_97_151 : Color = color1(red: 244, green: 97, blue: 151, alpha: 0.2)
    
    static let COLOR_255_163_18 : Color = color1(red: 255, green: 163, blue: 18, alpha: 1)
    static let COLOR_255_119_90 : Color = color1(red: 255, green: 119, blue: 90, alpha: 1)
    static let COLOR_255_136_62 : Color = color1(red: 255, green: 136, blue: 62, alpha: 0.26)
    
    static let COLOR_005 : Color = color1(red: 0, green: 0, blue: 0, alpha:0.09)
    
    static let COLOR_251_249_245 : Color = color1(red: 251, green: 249, blue: 245, alpha:1)
    static let COLOR_177_116_85 : Color = color1(red: 177, green: 116, blue: 85, alpha:1)
    
    static let COLOR_246 : Color = color1(red: 246, green: 246, blue: 246, alpha:1)
    static let COLOR_102 : Color = color1(red: 102, green: 102, blue: 102, alpha:1)
    static let COLOR_114 : Color = color1(red: 114, green: 114, blue: 114, alpha:1)
    
    static let COLOR_206_154_133 : Color = color1(red: 206, green: 154, blue: 133, alpha: 1)
    static let COLOR_117_59_41 : Color = color1(red: 117, green: 59, blue: 41, alpha: 1)
    static let COLOR_157_102_83 : Color = color1(red: 157, green: 102, blue: 83, alpha: 0.1)
}

func color1(red:Double , green:Double , blue:Double , alpha:Double) -> Color {
    return Color(.sRGB,red: (red/255.0),green: (green/255.0),blue: (blue/255.0),opacity: alpha)
}


/*
extension UIFont
{
    static func FONT_Arvo_Bold(size:CGFloat) -> UIFont {
        return UIFont(name: "Arvo-Bold", size: size)!
    }
    static func FONT_Arvo_Italic(size:CGFloat) -> UIFont {
        return UIFont(name: "Arvo-Italic", size: size)!
    }
    static func FONT_Arvo_BoldItalic(size:CGFloat) -> UIFont {
        return UIFont(name: "Arvo-BoldItalic", size: size)!
    }
    static func FONT_Arvo(size:CGFloat) -> UIFont {
        return UIFont(name: "Arvo", size: size)!
    }
    static func FONT_SFUIText_Medium(size:CGFloat) -> UIFont {
        return UIFont(name: "SFUIText-Medium", size: size)!
    }
    static func FONT_SFUIText_Light(size:CGFloat) -> UIFont {
        return UIFont(name: "SFUIText-Light", size: size)!
    }
    static func FONT_SFUIText_Regular(size:CGFloat) -> UIFont {
        return UIFont(name: "SFUIText-Regular", size: size)!
    }
    static func FONT_SFUIText_Bold(size:CGFloat) -> UIFont {
        return UIFont(name: "SFUIText-Bold", size: size)!
    }
    static func FONT_SFUIText_Semibold(size:CGFloat) -> UIFont {
        return UIFont(name: "SFUIText-Semibold", size: size)!
    }
}
 */

struct RoundedCorners: View {
    var color: Color = .blue
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0

    var body: some View {
        GeometryReader { geometry in
            Path { path in

                let w = geometry.size.width
                let h = geometry.size.height

                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)

                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
            }
            .fill(self.color)
        }
    }
}
