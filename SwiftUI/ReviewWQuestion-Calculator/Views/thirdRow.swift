//
//  thirdRow.swift
//  ReviewWQuestion-Calculator
//
//  Created by 최동권 on 2022/05/30.
//

import SwiftUI

struct thirdRow: View {
    
    @Binding var result: Int
    
    var body: some View {
        HStack(spacing:14) {
            ForEach(4..<7){ i in
                Button(action: {
                    
                    var resultString: String = "\(result)"
                    if resultString == "0" {
                        resultString = "\(i)"
                    } else {
                        resultString += "\(i)"
                    }
                    result = Int(resultString) ?? 0
                    
                }) {
                    Text("\(i)")
                        .font(.system(size: 40))
                        .frame(width:85, height: 85)
                        .foregroundColor(.white)
                        .background(Color.darkGray)
                        .clipShape(Circle())
                }
            }
            Button(action: {
                
            }) {
                Text("−")
                    .font(.system(size: 50))
                    .frame(width:85, height: 85)
                    .foregroundColor(.white)
                    .background(Color.customOrange)
                    .clipShape(Circle())
            }
        }
    }
}

struct thirdRow_Previews: PreviewProvider {
    static var previews: some View {
        thirdRow(result: .constant(0))
    }
}
