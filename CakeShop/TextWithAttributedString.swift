//
//  TextWithAttributedString.swift
//  CakeShop
//
//  Created by Ubrain_iOS2 on 19/03/20.
//  Copyright © 2020 Ubrain_iOS2. All rights reserved.
//

import SwiftUI

class ViewWithLabel : UIView {
    private var label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        self.addSubview(label)
        label.numberOfLines = 0
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setString(_ attributedString:NSAttributedString) {
        self.label.attributedText = attributedString
    }
}

struct TextWithAttributedString: UIViewRepresentable {
    
    var attributedString:NSAttributedString
    
    func makeUIView(context: Context) -> ViewWithLabel {
        let view = ViewWithLabel(frame:CGRect.zero)
        return view
    }
    
    func updateUIView(_ uiView: ViewWithLabel, context: UIViewRepresentableContext<TextWithAttributedString>) {
        uiView.setString(attributedString)
    }
}

struct TextWithAttributedString_Previews: PreviewProvider {
    static var previews: some View {
        TextWithAttributedString(attributedString: NSAttributedString(string: "Test"))
    }
}
