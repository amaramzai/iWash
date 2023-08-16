//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct GameScreen11: View {
    
    //variables
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
                        Text ("CONGRATULATIONS!")
                            .font(.system(size: fontSizeTitle , weight: .bold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 100.0)
                        Spacer()
                        Image ("lastImage")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * 0.7)
                        Text ("this is our AHA moment!")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 100.0)
                        Spacer()
                        NavigationLink(destination: GameScreen12()){
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
    
    
    
    struct GameScreen11_Previews: PreviewProvider {
        static var previews: some View {
            GameScreen11()
        }
    }
}
