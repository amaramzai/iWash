//
//  BackStoryScreen.swift
//
//  Created by Amar Amzari on 13/04/23.
//

import SwiftUI

struct GameScreen5: View {
    
    //variables for font sizing
    @State private var fontSize : Double = UIScreen.main.bounds.height * 0.02
    @State private var fontSizeTitle : Double = UIScreen.main.bounds.width * 0.03
    
    //varables for tracking the dirts location
    let dirtPos : [CGFloat] = [UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height]
    
    //start state for trigger checkmark pop up on every dirts
    @State var isCleanDirt = [false, false, false, false]
    
    //array for opacity of every dirts
    @State var dirtOpacity : [Double] = [1.0,1.0,1.0, 1.0]
    
    //checkmark pop up start location
    @State var checkMarkDirt: [CGPoint] = [CGPoint(x: 0, y: 0), CGPoint(x: 0, y: 0), CGPoint(x: 0, y: 0), CGPoint(x: 0, y: 0)]
    
    //counter variables to keep count
    @State var counter : Int = 0
    
    //variables for showing the next button
    @State var isButtonHidden:  Bool = false
    
    //@State var textCollections: [String] = []
    
    var body: some View {
        //GeometryReader for findinhg parent size of screen so the variables value could auto resize relative to screen size
        GeometryReader {
            geometry in
            NavigationStack {
                ZStack {
                    Color("bgColor")
                        .ignoresSafeArea(.all)
                        .edgesIgnoringSafeArea(.all)
                    Image ("shirt1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: frameImage( widths: 0.6))
                    Group {
                        Text ("step 6 : brush all the remaining ")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded )) +
                        Text ("dirts ")
                            .font(.system(size: fontSizeTitle , weight: .bold , design: .rounded ))
                            .foregroundColor(.red) +
                        Text ("in")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded )) +
                        Text (" one direction")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .foregroundColor(.blue) +
                        Text (" by")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded )) +
                        Text (" hold, drag and release gesture, ")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                            .foregroundColor(.blue) +
                        Text (" do it several times until the dirts disappear.")
                            .font(.system(size: fontSizeTitle , weight: .semibold , design: .rounded ))
                        
                    }  .multilineTextAlignment(.center)
                        .position(x: textSetPosX(textPosX: 0.5), y: textSetPosY(textPosY: 0.1))
                        .padding(.trailing, 100)
                    Group {
                        Text ("brush it until the ")
                            .font(.system(size: fontSize , weight: .regular , design: .rounded )) +
                        Text ("green checkmarks ")
                            .font(.system(size: fontSize , weight: .bold , design: .rounded ))
                            .foregroundColor(.green) +
                        Text ("in each ")
                            .font(.system(size: fontSize , weight: .regular , design: .rounded )) +
                        Text ("dirts ")
                            .font(.system(size: fontSize , weight: .bold , design: .rounded ))
                            .foregroundColor(.red) +
                        Text ("pops up. ")
                            .font(.system(size: fontSize , weight: .regular , design: .rounded )) +
                        Text ("after all done, the ")
                            .font(.system(size: fontSize , weight: .regular , design: .rounded )) +
                        Text ("next button ")
                            .font(.system(size: fontSize , weight: .bold , design: .rounded )) +
                        Text ("below will appear.")
                            .font(.system(size: fontSize , weight: .regular , design: .rounded ))
                    }
                    .multilineTextAlignment(.center)
                    .position(x: textSetPosX(textPosX: 0.5), y: textSetPosY(textPosY: 0.78))
                    .padding(.trailing, 150)
                    //dirt1
                    if dirtOpacity[0] < 0.1 && !isCleanDirt[0]{
                        CheckMarkPop()
                            .onAppear{
                                withAnimation(.easeInOut(duration: 2)) {
                                    self.checkMarkDirt[0] = CGPoint(x: checkMarkDirt[0].x + 0, y: checkMarkDirt[0].y - 100)
                                    self.counter += 1
                                }
                                Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false, block: { timer in
                                    withAnimation(.spring()) {
                                        self.isCleanDirt[0].toggle()
                                    }
                                })
                            }
                            .position(checkMarkDirt[0])
                    }else{
                        Image("dirtShirt1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.11)
                            .modifier(AmzaiSpecialGesture(opacity: $dirtOpacity[0]))
                            .position(x: CalculateX(xPos: 0.58) , y : CalculateY(yPos: 0.31))
                    }
                    //dirt2
                    if dirtOpacity[1] < 0.1 && !isCleanDirt[1]{
                        CheckMarkPop()
                            .onAppear{
                                withAnimation(.easeInOut(duration: 2)) {
                                    self.checkMarkDirt[1] = CGPoint(x: checkMarkDirt[1].x + 0, y: checkMarkDirt[1].y - 100)
                                    self.counter += 1
                                }
                                Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false, block: { timer in
                                    withAnimation(.spring()) {
                                        self.isCleanDirt[1].toggle()
                                    }
                                })
                            }
                            .position(checkMarkDirt[1])
                    }else{
                        Image("dirtShirt2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.06)
                            .modifier(AmzaiSpecialGesture(opacity: $dirtOpacity[1]))
                            .position(x :  CalculateX(xPos: 0.33), y : CalculateY(yPos: 0.42))
                    }
                    
                    //dirt3
                    if dirtOpacity[2] < 0.1 && !isCleanDirt[2]{
                        CheckMarkPop()
                            .onAppear{
                                withAnimation(.easeInOut(duration: 2)) {
                                    self.checkMarkDirt[2] = CGPoint(x: checkMarkDirt[2].x + 0, y: checkMarkDirt[2].y - 100)
                                    self.counter += 1
                                }
                                Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false, block: { timer in
                                    withAnimation(.spring()) {
                                        self.isCleanDirt[2].toggle()
                                    }
                                })
                            }
                            .position(checkMarkDirt[2])
                    }else{
                        Image("dirtShirt3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.13)
                            .modifier(AmzaiSpecialGesture(opacity: $dirtOpacity[2]))
                            .position(x :  CalculateX(xPos: 0.25), y : CalculateY(yPos: 0.47))
                    }
                    //dirt4
                    if dirtOpacity[3] < 0.1 && !isCleanDirt[3]{
                        CheckMarkPop()
                            .onAppear{
                                withAnimation(.easeInOut(duration: 2)) {
                                    self.checkMarkDirt[3] = CGPoint(x: checkMarkDirt[3].x + 0, y: checkMarkDirt[3].y - 100)
                                    self.counter += 1
                                }
                                Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false, block: { timer in
                                    withAnimation(.spring()) {
                                        self.isCleanDirt[3].toggle()
                                    }
                                })
                            }
                            .position(checkMarkDirt[3])
                    }else{
                        Image("dirtShirt4")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.08)
                            .modifier(AmzaiSpecialGesture(opacity: $dirtOpacity[3]))
                        .position(x :  CalculateX(xPos: 0.68), y : CalculateY(yPos: 0.41))}
                    //dirt5
                    VStack {
                        Spacer()
                        NavigationLink(destination: GameScreen7()){
                            if counter == 4 && !isButtonHidden {
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.height * 0.07)
                                    .foregroundColor(Color.black)
                                    .ignoresSafeArea(.all)
                                    .edgesIgnoringSafeArea(.all)
                            } else {
                                
                                Image ("")
                                
                            }
                        }.padding(.top, 60)
                        .padding(.bottom,100)
                    }
                }
                .navigationBarBackButtonHidden(true)
            }
            
        }.onAppear{
            //checkmark pop up location
            checkMarkDirt[0] = CGPoint(x: CalculateX(xPos: 0.58), y: CalculateY(yPos: 0.31))
            checkMarkDirt[1] = CGPoint(x: CalculateX(xPos: 0.33), y: CalculateY(yPos: 0.42))
            checkMarkDirt[2] = CGPoint(x: CalculateX(xPos: 0.25), y: CalculateY(yPos: 0.47))
            checkMarkDirt[3] = CGPoint(x: CalculateX(xPos: 0.68), y: CalculateY(yPos: 0.41))
        }
    }
    
    //text Positioning x
    func textSetPosX (textPosX: Double) -> Double {
        let _x : Double = UIScreen.main.bounds.width * textPosX
        return _x
    }
    //text Positioning y
    func textSetPosY (textPosY : Double) -> Double {
        let _y : Double = UIScreen.main.bounds.height * textPosY
        return _y
    }
    
    
    //putpinpointcoordinates
    func frameImage(widths : Double)-> Double{
        let _frame = UIScreen.main.bounds.size.width * widths
        return _frame
    }
    
    
    //function to calculate x and y position of each dirt
    func CalculateX (xPos : Double) -> Double{
        let _x: CGFloat = xPos * dirtPos[0]
        return _x
        
        }
    func CalculateY (yPos : Double) -> Double{
        let _y: CGFloat = yPos * dirtPos[1]
        return _y
    }
    //----------------------------------------------------
    struct GameScreen5_Previews: PreviewProvider {
        static var previews: some View {
            GameScreen5()
        }
    }
}
