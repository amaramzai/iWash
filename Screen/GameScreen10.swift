//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct GameScreen10: View {
    
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
                    Image ("wring")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.6)
                        .position(x: UIScreen.main.bounds.size.width * 0.436 , y: UIScreen.main.bounds.size.height * 0.5)
                    VStack {
                        Text ("step 8 : wring/squeeze the clothes with moderate force so we don't damage the fabric.")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 100.0)
                            .position(x: UIScreen.main.bounds.size.width * 0.5 , y: UIScreen.main.bounds.size.height * 0.1)
                        Spacer()
                        NavigationLink(destination: GameScreen11()){
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
    
    
    
    struct GameScreen10_Previews: PreviewProvider {
        static var previews: some View {
            GameScreen10()
        }
    }
}
