//
//  PickerTWo.swift
//  MIGSwiftUI
//
//  Created by user on 23/8/22.
//

import SwiftUI

struct RatesAdressView: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 30) {
            HStack {
                Text("г. Бишкек")
                Spacer()
                Image("mig")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
            }
            
            Divider()
            HStack {
                Text("г. Алматы")
                Spacer()
                Image("mig")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
            }
            Divider()
            HStack {
                Text("г. Москва")
                Spacer()
                Image("mig")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
            }
            Divider()
            HStack {
                Text("г. Ташкент")
                Spacer()
                Image("mig")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
            }
            Divider()
            HStack {
                Text("г. Баку")
                Spacer()
                Image("mig")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
            }
            Divider()
        }
        .padding()
    }
}

struct PickerTWo_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
