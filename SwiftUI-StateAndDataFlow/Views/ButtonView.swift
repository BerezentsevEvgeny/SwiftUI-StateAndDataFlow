//
//  ButtonView.swift
//  SwiftUI-StateAndDataFlow
//
//  Created by Евгений Березенцев on 14.09.2021.
//

import SwiftUI

struct ButtonView: View {
   @ObservedObject var timer: TimerCounter  //  Подписан на изменения в @StateObject
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text("\(timer.buttonTitle)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4))
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(timer: TimerCounter())
    }
}
