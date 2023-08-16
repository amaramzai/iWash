//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct GameScreen2: View {
    
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
                    Image ("clothesSoak2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.6)
                    VStack {
                        
                        Text ("step 3 : put the dirty clothes into the detergent solution and then soak for 30-45 minutes.")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 100.0)
                            .padding(.top, 100)
                        Spacer()
                        
                        Text ("the detergent soak helps remove dirt prior to the brushing process.")
                            .font(.system(size: fontSize , weight: .regular , design: .rounded ))
                            .multilineTextAlignment(.center)
                        NavigationLink(destination: GameScreen3()){
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
    
    
    
    struct GameScreen2_Previews: PreviewProvider {
        static var previews: some View {
            GameScreen2()
        }
    }
}
