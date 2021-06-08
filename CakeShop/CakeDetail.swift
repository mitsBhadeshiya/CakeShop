//
//  CakeDetail.swift
//  CakeShop
//
//  Created by Ubrain_iOS2 on 20/03/20.
//  Copyright © 2020 Ubrain_iOS2. All rights reserved.
//

import SwiftUI

struct CakeDetail: View {
    var body: some View {
        
        ZStack {
           // LinearGradient(gradient: Gradient(colors: [.COLOR_247_158_191,.COLOR_244_91_147]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                   Text("")
                }
                .frame(width: UIScreen.main.bounds.width, height: 280, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [.COLOR_247_158_191,.COLOR_244_91_147]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all))
                Spacer()
            }
             ShapeSandbox()
        }
    }
}

struct CakeDetail_Previews: PreviewProvider {
    static var previews: some View {
        CakeDetail()
    }
}

struct ShapeSandbox: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .shadow(color: Color.COLOR_005, radius: 10, x: 0, y: 5)
            .rotationEffect(.degrees(10))
            .padding(.init(top: 150, leading: -60, bottom: 0, trailing: 52))
    }
}

