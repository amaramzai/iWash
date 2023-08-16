//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct BackStoryScreen: View {
    //Variables
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
                    Image ("backImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.7)
                    
                    VStack {
                        Text ("small stains remaining on some parts of my clothes, especially on the collar, armpits, and cuffs. this was because the washing machine could not detect these areas, and i could not modify the machine to do what i wanted.")
                            .font(.system(size: fontSize , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.vertical, 20.0)
                            .padding(.horizontal, 50.0)
                            .padding(.top, 70)
                        Spacer()
                        
                        Spacer()
                        NavigationLink(destination: BackStoryScreen2()){
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
    
    
    
    struct BackStoryScreen_Previews: PreviewProvider {
        static var previews: some View {
            BackStoryScreen()
        }
    }
}
