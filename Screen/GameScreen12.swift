//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct GameScreen12: View {
    
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
                    Text ("finally the last step is to dry our clothes under the sun lights!")
                        .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 100.0)
                        .position(x: UIScreen.main.bounds.size.width * 0.5 , y : UIScreen.main.bounds.size.height * 0.1)
                    VStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Image ("dryClothes")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * 0.8)
                        Spacer()
                        NavigationLink(destination: GameScreen13()){
                            Image(systemName: "arrow.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.height * 0.07)
                                .foregroundColor(Color.black)
                                .ignoresSafeArea(.all)
                                .edgesIgnoringSafeArea(.all)
                        }.padding(.top, 60)
                            .padding(.bottom,100)
                        
                    }
                }
            }
            
        }
    }
    
    
    
    struct GameScreen12_Previews: PreviewProvider {
        static var previews: some View {
            GameScreen12()
        }
    }
}
