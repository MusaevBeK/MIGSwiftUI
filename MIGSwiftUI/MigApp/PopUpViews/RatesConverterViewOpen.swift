//
//  DetailView.swift
//  MIGSwiftUI
//
//  Created by user on 22/8/22.
//

import SwiftUI

struct RatesConverterViewOpen: View {
    
    let index: Int
    
    @Binding var showConverter: Bool
    
    @State var currency = ""
    
    var body: some View {
        ZStack {
            
            VStack(spacing: 10) {
                
                Text(ListView.shortList[index].fullName)
                    .foregroundColor(Color.black)
                    .font(Font.system(size: 20, weight: .bold))
                    
                Text("По курсу")
                    .foregroundColor(Color.gray)
                    .font(Font.system(size: 15, weight: .medium))
                
                Text(ListView.shortList[index].buy)
                    .foregroundColor(Color.blue)
                    .font(Font.system(size: 22, weight: .bold))
                
                HStack(spacing: 20) {
                    VStack (spacing: 10) {
                        Text("Купить")
                            .foregroundColor(Color.gray)
                            .font(Font.system(size: 12, weight: .medium))

                        TextField("   1", text: $currency)
                            .textContentType(.telephoneNumber)
                            .frame(width: 170, height: 40)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack (spacing: 10) {
                        Text("Требуется")
                            .foregroundColor(Color.gray)
                            .font(Font.system(size: 12, weight: .medium))

                        Text("\((Int(currency) ?? 0) * 10)")
                            .frame(width: 170, height: 40)
                            .background(Color.gray)
                            .cornerRadius(5)
                    }
                }
            }
            .padding()
            .frame(width: 390, height: 261, alignment: .leading)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
        }
        Image(systemName: "xmark")
            .frame(width: 40, height: 40)
            .foregroundColor(.black)
            .offset(x: 170, y: -105)
            .onTapGesture {
                self.showConverter = false
            }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
