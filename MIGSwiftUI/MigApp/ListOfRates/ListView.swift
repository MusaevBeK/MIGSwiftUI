//
//  ListView.swift
//  MIGSwiftUI
//
//  Created by user on 22/8/22.
//

import SwiftUI

struct ListView {
    
    static let shortList: [ListModel] =
    [ListModel(sale: "472.5", name: "USD", buy: "478.5", fullName: "Доллар США (USD)"),
     ListModel(sale: "470.5", name: "EUR", buy: "478.5", fullName: "Евро (EUR)"),
     ListModel(sale: "7.15", name: "RUB", buy: "7.65", fullName: "Российский рубль (RUB)"),
     ListModel(sale: "5.6", name: "KGS", buy: "6.2", fullName: "Кыргызский сом (KGS)"),
     ListModel(sale: "525.0", name: "GBR", buy: "575.0", fullName: "Фунт стерлингов (GBR"),
     ListModel(sale: "63.0", name: "CNY", buy: "71.0", fullName: "Китайский юань (CNY)"),
     ListModel(sale: "25300.0", name: "GOLD", buy: "27300.0", fullName: "Золотые слитка, 1 гр. (GOLD)"),
    ]
    
    
    static let longList: [ListModel] =
    [
     ListModel(sale: "472.5", name: "USD", buy: "478.5", fullName: "Доллар США (USD)"),
     ListModel(sale: "470.5", name: "EUR", buy: "478.5", fullName: "Евро (EUR)"),
     ListModel(sale: "7.15", name: "RUB", buy: "7.65", fullName: "Российский рубль (RUB)"),
     ListModel(sale: "5.6", name: "KGS", buy: "6.2", fullName: "Кыргызский сом (KGS)"),
     ListModel(sale: "525.0", name: "GBR", buy: "575.0", fullName: "Фунт стерлингов (GBR"),
     ListModel(sale: "63.0", name: "CNY", buy: "71.0", fullName: "Китайский юань (CNY)"),
     ListModel(sale: "25300.0", name: "GOLD", buy: "27300.0", fullName: "Золотые слитка, 1 гр. (GOLD)"),
     ListModel(sale: "455.0", name: "CHF", buy: "505.0", fullName: "Швейцарский франк (CHF)"),
     ListModel(sale: "51.0", name: "HKD", buy: "61.0", fullName: "Гонконгский доллар (HKD)"),
     ListModel(sale: "150.0", name: "GEL", buy: "210.0", fullName: "Грузинский лари (GEL)"),
     ListModel(sale: "111.0", name: "AED", buy: "135.0)", fullName: "Дирхам ОАЭ (AED)"),
     ListModel(sale: "3.7", name: "INR", buy: "5.9", fullName: "Индийская рупия (INR)"),
     ListModel(sale: "285.0", name: "CAD", buy: "385.0", fullName: "Канадский доллар (CAD)"),
     ListModel(sale: "89.0", name: "MYR", buy: "107.0", fullName: "Малайзийский ринггит (MYR)"),
     ListModel(sale: "91.0", name: "PLN", buy: "135.0", fullName: "Польский злотый (PLN)"),
     ListModel(sale: "12.5", name: "THB", buy: "17.5", fullName: "Тайский бат (THB)"),
     ListModel(sale: "25.0", name: "TRY", buy: "45.0", fullName: "Турецкая лира (TRY)"),
     ListModel(sale: "3.8", name: "UZS", buy: "5.0", fullName: "100 узбекских сумов (UZS)"),
     ListModel(sale: "1.0", name: "UAH", buy: "13.0", fullName: "Украинская гривна (UAH)"),
     ListModel(sale: "15.9", name: "CZK", buy: "19.9", fullName: "Чешская крона (CZK)"),
     ListModel(sale: "33.5", name: "KRW", buy: "40.5", fullName: "100 южнокорейских вон (KRW)"),
     ListModel(sale: "2.7", name: "JPY", buy: "3.9", fullName: "Японская иена (JPY)"),
     ListModel(sale: "120.0", name: "ILS", buy: "170.0", fullName: "Израильский шекель (ILS)")
    ]
    
}
    

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


