//
//  EmergencyView.swift
//  StayingAlive Watch App
//
//  Created by rsbj on 29/11/22.
//

import SwiftUI

struct EmergencyView: View {
    let perrengues : [Perrengue] = Populate.populateFunc()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(perrengues, id: \.self) { perrengue in
                    NavigationLink(destination: InstructionsView(perrengue: perrengue)) {
                        EmergencyRow(perrengue: perrengue)
                    }
                }
            }
            //.navigationTitle("Emergência")
        }
    }
}

struct EmergencyView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyView()
    }
}
