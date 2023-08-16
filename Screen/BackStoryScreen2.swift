//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct BackStoryScreen2: View {
    //variables
    @State private var fontSize : Double = UIScreen.main.bounds.height * 0.02
    @State private var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.035
    
    var body: some View {
        //GeometryReader for findinhg parent size of screen so the variables value could auto resize relative to screen size
        GeometryReader {
            geometry in
            NavigationStack {
                ZStack {
                    Color("bgColor")
                        .ignoresSafeArea(.all)
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        Spacer()
                        Spacer()
                        Text ("therefore a guide to wash our own clothes properly is needed.")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 100.0)
                            .foregroundColor(.black)
                        Spacer()
                        Image ("backImage3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * 0.5)
                        Text ("i would like to share my own experience about this to you! here we go!")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 100.0)
                            .foregroundColor(.black)
                        Spacer()
                        NavigationLink(destination: GameScreen0()){
                            Image(systemName: "arrow.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.height * 0.07)
                                .foregroundColor(Color.black)
                                .ignoresSafeArea(.all)
                                .edgesIgnoringSafeArea(.all)
                        }.padding(.top, 60)
                            .padding(.bottom, 100)
                    }
                }
            }
            
        }
    }
    
    
    
    struct BackStoryScreen2_Previews: PreviewProvider {
        static var previews: some View {
            BackStoryScreen2()
        }
    }
}
