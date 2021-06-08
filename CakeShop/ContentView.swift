//
//  ContentView.swift
//  CakeShop
//
//  Created by Ubrain_iOS2 on 19/03/20.
//  Copyright © 2020 Ubrain_iOS2. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
         StatusCell()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct StatusCell : View {
    
    init() {
           UITableView.appearance().tableFooterView = UIView()
           UITableView.appearance().separatorStyle = .none
       }
    
    let posts = SetTestData.posts()
    let muffinPost = SetMuffinData.posts()
    
    var body: some View {
        
        NavigationView {
           // List {
            
             ScrollView(.vertical,showsIndicators: true , content: {
                
                VStack {
                    
                    HStack {
                        HStack {
                            Text ("Strawberry  Cakes")
                                .rotationEffect(.degrees(270))
                                .font(Font.custom("Arvo", size: 14))
                                .foregroundColor(Color.COLOR_155)
                                .padding(.init(top: 0, leading: 0, bottom: 50, trailing: 0))
                            
                            }.padding(.leading,-45)
                        
                        ScrollView(.horizontal,showsIndicators: false , content: {
                            HStack(spacing: 15) {
                                ForEach(posts) { status in
                                    StatusView(status: status)
                                }
                            }
                            .padding(.leading, 10)
                        }).padding(.leading,-45)
                    }
                    
                    HStack {
                        HStack {
                            Text ("Muffins  Cakes")
                                .rotationEffect(.degrees(270))
                                .font(Font.custom("Arvo", size: 14))
                                .foregroundColor(Color.COLOR_155)
                                .padding(.init(top: 0, leading: 0, bottom: 60, trailing: 0))
                            
                        }.padding(.leading,-30)
                        
                        ScrollView(.horizontal,showsIndicators: false , content: {
                            HStack(spacing: 15) {
                                ForEach(muffinPost) { status in
                                    MuffinsCakes(status: status)
                                }
                            }
                            .padding(.leading, 10)
                        }).padding(.leading,-35)
                    }
                    
                    HStack {
                        HStack {
                            Text ("Chocolates")
                                .rotationEffect(.degrees(270))
                                .font(Font.custom("Arvo", size: 14))
                                .foregroundColor(Color.COLOR_155)
                                .padding(.init(top: 0, leading: 0, bottom: 40, trailing: 0))
                        }.padding(.leading,-20)
                        
                        ScrollView(.horizontal,showsIndicators: false , content: {
                            HStack(spacing: 10) {
                                ForEach(posts) { status in
                                    Chocolates(status: status)
                                }
                            }
                            .padding(.leading, 10)
                        }).padding(.leading,-20)
                    }
                    
                }.padding(10)
//            }
//            .padding(.leading, -20)
//            .padding(.trailing, -20)
            })
        }
    }
}


struct StatusView: View {
    
    let status: Status
    @State var id: Int = 0
    
    var body: some View {
        
        ZStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(LinearGradient(gradient: Gradient(colors: getRandomColor()), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .shadow(color: getShadowColor(), radius: 10, x: 0, y: 5)
                
                VStack {
                    HStack {
                        Spacer()
                        Text("")
                    }
                    .frame(height: 70)
                    .background(RoundedCorners(color: Color(.sRGB,red: (255/255.0),green: (255/255.0),blue: (255/255.0),opacity: 0.1), tl: 0, tr: 10, bl: 10, br: 0))
                        
                    .padding(.leading,20)
                    
                    VStack {
                        Text("Choco Strawberry")
                            .font(Font.custom("Arvo", size: 18))
                            .foregroundColor(Color.white)
                        
                        Text("Lorem ipsum dolor sit amet, consecte adipiscing elit…")
                            .font(Font.custom("SFUIText-Regular", size: 12))
                            .foregroundColor(Color.white)
                            .padding(.top,14)
                            .padding(.trailing,10)
                            .padding(.leading,20)
                    }
                    .padding(.top,10)
                    
                    Spacer()
                    HStack {
                        Text("£4.85")
                            .font(Font.custom("SFUIText-Light", size: 12))
                            .foregroundColor(Color.white)
                            .padding(.leading,20)
                            .padding(.top,-15)
                        
                        Spacer()
                        Button(action: {print("Cart Button tapped")}) {
                            ZStack {
                                Image("mask")
                                Image("arrowUpRight")
                            }
                        }
                        .accentColor(Color.white)
                    }
                    //.background(Color.gray)
                }
                
                HStack {
                    Spacer()
                    
                    Image(status.img)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .padding(.top,-155)
                        .padding(.trailing,5)
                   
                }
            }
            .frame(width: 140, height: 220)
            .padding(.top,50)
        }.padding(.bottom,15)
    }
    
    func getRandomColor() -> [Color]{
        DispatchQueue.main.async {
            if let strId = self.status.id as? Int {
                self.id = strId
            }
        }
        
        if(id % 3 == 0){
            
            return [Color.COLOR_255_163_18,Color.COLOR_255_119_90]
        }else if(id % 3 == 1){
            return [Color.COLOR_171_200_61,Color.COLOR_154_188_38]
        } else {
            return [Color.COLOR_247_158_191,Color.COLOR_244_91_147]
        }
    }
    
    func getShadowColor() -> Color {
        DispatchQueue.main.async {
            if let strId = self.status.id as? Int {
                self.id = strId
            }
        }
        
        if(id % 3 == 0){
             return Color.COLOR_255_136_62
        }else if(id % 3 == 1){
            return Color.COLOR_163_194_50
        } else {
            return Color.COLOR_244_97_151
        }
    }
}

struct MuffinsCakes : View {
    
    let status: Muffins
    
    var body: some View {
        
        ZStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .shadow(color: Color.COLOR_005, radius: 10, x: 0, y: 5)
                
                VStack (alignment: .leading,spacing: 0) {
                    
                    HStack (alignment: .top) {
                        HStack {
                            Spacer()
                        }
                        .frame(height: 70)
                        .background(RoundedCorners(color: Color.COLOR_251_249_245, tl: 10, tr: 0, bl: 0, br: 5))
                        .padding(.trailing,46)
                        
                        HStack {
                            Button(action: {print("Cart Button tapped")}) {
                                ZStack {
                                    Image("arrowUpRight-1")
                                }
                            }
                        }.frame(width: 30, height: 30)
                            .background(RoundedCorners(color: Color.COLOR_246, tl: 0, tr: 10, bl: 5, br: 0))
                            .accentColor(Color.red)
                    }
                    
                    VStack (alignment: .leading) {
                        
                        Text("Regular")
                            .font(Font.custom("Arvo", size: 16))
                            .foregroundColor(Color.COLOR_177_116_85)
                            .padding(.top,9)
                        Text("Muffin Cup")
                            .font(Font.custom("Arvo", size: 18))
                            .foregroundColor(Color.COLOR_177_116_85)
                        
                        Text("Lorem ipsum dolor sit amet, consecte adipiscing elit…")
                            .font(Font.custom("SFUIText-Regular", size: 12))
                            .foregroundColor(Color.COLOR_102)
                            .padding(.top,14)
                        Spacer()
                    }
                    .padding(.leading,20)
                    
                    HStack (alignment: .top){
                        Text(status.price)
                            .font(Font.custom("SFUIText-Light", size: 12))
                            .foregroundColor(Color.COLOR_114)
                            .padding(.top,-15)
                        Spacer()
                    }
                    .frame(height: 35)
                    .padding(.leading,20)
                }
                
                HStack {
                    Image(status.img)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .padding(.top,-155)
                        .padding(.leading,10)
                    Spacer()
                }
            }
            .frame(width: 195, height: 210)
            .padding(.top,50)
        }.padding(.bottom,15)
        .padding(.top,15)
    }
}

struct Chocolates : View {
    
    let status: Status
    
    var body: some View {
        
        ZStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.COLOR_206_154_133,Color.COLOR_117_59_41]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .shadow(color: Color.COLOR_157_102_83, radius: 10, x: 0, y: 5)
                
                VStack (alignment: .leading,spacing: 0) {
                    
                    HStack (alignment: .top) {
                        HStack {
                            Spacer()
                        }
                        .frame(height: 70)
                        .background(RoundedCorners(color: Color(.sRGB,red: (255/255.0),green: (255/255.0),blue: (255/255.0),opacity: 0.1), tl: 10, tr: 0, bl: 0, br: 5))
                        .padding(.trailing,25)
                        
                        VStack (alignment: .leading) {
                            
                            Text("Choco")
                                .font(Font.custom("Arvo", size: 16))
                                .foregroundColor(Color.white)
                                .padding(.top,9)
                            Text("Burger")
                                .font(Font.custom("Arvo", size: 18))
                                .foregroundColor(Color.white)
                        }
                        .padding(.trailing,72)
                        .padding(.top,10)
                    }
                    
                    Text("Lorem ipsum dolor sit amet, consecte adipiscing elit…")
                        .font(Font.custom("SFUIText-Regular", size: 12))
                        .foregroundColor(Color.white)
                        .padding(.leading,20)
                        .padding(.top,20)
                    
                    Spacer()
                    HStack {
                        Text("£4.85")
                            .font(Font.custom("SFUIText-Light", size: 12))
                            .foregroundColor(Color.white)
                            .padding(.leading,20)
                            .padding(.top,-15)
                        
                        Spacer()
                        Button(action: {print("Cart Button tapped")}) {
                            ZStack {
                                Image("mask")
                                Image("arrowUpRight")
                            }
                        }
                        .accentColor(Color.white)
                    }
                    //.background(Color.gray)
                }
                
                HStack {
                    Image("10")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .padding(.top,-110)
                        .padding(.leading,30)
                    Spacer()
                }
            }
            .frame(width: 280, height: 160)
            .padding(.top,30)
        }
        .padding(.bottom,15)
        .padding(.top,15)
    }
}
