//
//  ExchangeRatesView.swift
//  MIGSwiftUI
//
//  Created by user on 23/8/22.
//

import SwiftUI

struct ExchangeRatesView: View {
    
    @State var showDetail: Bool = false
    
    @State var sheet: Bool = false
    
    @State var sheet1: Bool = false
    
    @State var sheet2: Bool = false
    
    let list: ListModel
    
    let index: Int
    
    var body: some View {
        
        HStack {
            
            Spacer().frame(width: 12)
            
            Button(list.buy) {
                self.showDetail.toggle()
            
            } .frame(width: 80, height: 50)
                .foregroundColor(Color.blue)
               .background(Color.white)
               .cornerRadius(5)
            
            
            Spacer()

            Text(list.name)
                .foregroundColor(Color.white)
                .font(Font.system(size: 20, weight: .bold))
            
            Spacer()
                
            
            Button(list.sale) {
                self.showDetail.toggle()
            }
            .frame(width: 80, height: 50)
            .foregroundColor(Color.blue)
            .background(Color.white)
            .cornerRadius(5)
            
            Spacer().frame(width: 12)
            
            
        }
        .background(Color(red: 16/255, green: 101/255, blue: 217/255))

    }
}

struct ExchangeRatesView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct ExchangeRatesView: View {
//
//    @State var showDetail: Bool = false
//
//    @State var sheet: Bool = false
//
//    @State var sheet1: Bool = false
//
//    @State var sheet2: Bool = false
//
//    let list: ListModel
//
//    let index: Int
//
//    var body: some View {
//
//            HStack {
//
//                Spacer().frame(width: 12)
//
//                Button(list.buy) {
//                    self.showDetail.toggle()
//
//                } .frame(width: 80, height: 50)
//                    .foregroundColor(Color.blue)
//                   .background(Color.white)
//                   .cornerRadius(5)
//
//
//                Spacer()
//
//                Text(list.name)
//                    .foregroundColor(Color.white)
//                    .font(Font.system(size: 20, weight: .bold))
//
//                Spacer()
//
//
//                Button(list.sale) {
//                    self.showDetail.toggle()
//                }
//                .frame(width: 80, height: 50)
//                .foregroundColor(Color.blue)
//                .background(Color.white)
//                .cornerRadius(5)
//
//                Spacer().frame(width: 12)
//
//
//            }
//            .background(Color(red: 16/255, green: 101/255, blue: 217/255))
//    }
//
//}
