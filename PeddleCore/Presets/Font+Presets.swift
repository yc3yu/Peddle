//
//  Font+Presets.swift
//  Peddle
//
//  Created by Yue chen Yu on 2024-03-17.
//

import SwiftUI

extension Font {
    
    // MARK: Regular fonts
    
    public static let caption2Regular: Font = Font.system(.caption2)
    
    public static let caption1Regular: Font = Font.system(.caption)
    
    public static let bodyRegular: Font = Font.system(.body)
    
    public static let title3Regular: Font = Font.system(.title3)
    
    public static let title2Regular: Font = Font.system(.title2)
        
    public static let title1Regular: Font = Font.system(.title)
    
    public static let largeTitleRegular: Font = Font.system(.largeTitle)
    
    // MARK: Bold fonts
    
    public static let caption2Bold: Font = Font.system(.caption2).weight(.semibold)
    
    public static let caption1Bold: Font = Font.system(.caption).weight(.medium)
    
    public static let bodyBold: Font = Font.system(.body).weight(.semibold)
    
    public static let title3Bold: Font = Font.system(.title3).weight(.semibold)
    
    public static let title2Bold: Font = Font.system(.title2).weight(.bold)
    
    public static let title1Bold: Font = Font.system(.title).weight(.bold)
    
    public static let largeTitleBold: Font = Font.system(.largeTitle).weight(.bold)
    
}

#Preview {
    VStack(spacing: .microSpace) {
        Text("Caption2 Regular")
            .font(.caption2Regular)
        
        Text("Caption1 Regular")
            .font(.caption1Regular)
        
        Text("Body Regular")
            .font(.bodyRegular)
        
        Text("Title3 Regular")
            .font(.title3Regular)
        
        Text("Title2 Regular")
            .font(.title2Regular)
        
        Text("Title1 Regular")
            .font(.title1Regular)
        
        Text("Large Title Regular")
            .font(.largeTitleRegular)
    
        Text("Caption2 Bold")
            .font(.caption2Bold)
        
        Text("Caption1 Bold")
            .font(.caption1Bold)
        
        Text("Body Bold")
            .font(.bodyBold)
        
        Text("Title3 Bold")
            .font(.title3Bold)
        
        Text("Title2 Bold")
            .font(.title2Bold)
        
        Text("Title1 Bold")
            .font(.title1Bold)
        
        Text("Large Title Bold")
            .font(.largeTitleBold)
        
        Spacer()
    }
}
