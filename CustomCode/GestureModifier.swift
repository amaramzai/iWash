//
//  GestureModifier.swift
//
//  Created by Amar Amzari on 09/04/23.
//

import SwiftUI

//mark with my nickname Amzai :)
struct AmzaiSpecialGesture: ViewModifier {
    
    //to bind the opacity variables
    @Binding var opacity : Double
    @State var isSwipping = true
    @State var startPos: CGPoint = .zero
    @State var opacityDecreaser = 0.5
    
    //gesture function
    func body(content: Content) -> some View {
        
        content
        //on gesture drag what happen ?
            .gesture(DragGesture()
                .onChanged{ gesture in
                    if isSwipping {
                        startPos = gesture.location
                        isSwipping.toggle()
                    }
                    
                }
                     //on gesture release what happen ?
                .onEnded{
                    gesture in
                    //track the gesture on start
                    let xDist =  abs(gesture.location.x - self.startPos.x)
                    let yDist =  abs(gesture.location.y - self.startPos.y)
                    //compare the start and finish point and opacity of the dirts will decrease
                    if self.startPos.y <  gesture.location.y && yDist > xDist {
                        opacity -= opacityDecreaser
                    }
                    else if self.startPos.y >  gesture.location.y && yDist > xDist {
                        opacity -= opacityDecreaser
                    }
                    else if self.startPos.x > gesture.location.x && yDist < xDist {
                        opacity -= opacityDecreaser
                    }
                    else if self.startPos.x < gesture.location.x && yDist < xDist {
                        opacity -= opacityDecreaser
                    }
                    self.isSwipping.toggle()
                }
                     
            )
            .opacity(opacity)
    }
}


