//
//  MotionAnimationView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 22.06.2022.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - PROPERTIES
    @State private var randomcircle = Int.random(in: 12...16)
    @State private var isAnimating : Bool = false
    // MARK: - FUNCTION
    //Random Coordinate
    func randomCoordinate(max : CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    //Random Size
    func randomSize() -> CGFloat {
        return CGFloat.random(in: 10...300)
    }
    //Random Scale
    func randomScale() -> CGFloat {
        return CGFloat.random(in: 0.1...2.0)
    }
    //Random Speed
    func randomSeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    //Random Delay
    func randomDelay() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    
    // MARK: - BODY
    var body: some View {
        GeometryReader{geometry in
            ZStack {
                ForEach(0...randomcircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .scaleEffect(isAnimating ?  randomScale() : 1)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .position(x:randomCoordinate(max:  geometry.size.width), y: randomCoordinate(max:  geometry.size.height))
                        .animation(.interpolatingSpring(stiffness: 0.5, damping: 0.5).repeatForever().speed(randomSeed()).delay(randomDelay()), value: isAnimating)
                        .onAppear {
                            isAnimating = true
                        }
                }
                
            }//:ZStack
            .drawingGroup()
        }
    }
}


// MARK: - PREVIEW
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
