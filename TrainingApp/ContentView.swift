//
//  ContentView.swift
//  TrainingApp
//
//  Created by Michelle Abt on 4/20/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is the Pup's name?"
    @State private var pupName = "Pup's Name"
    var body: some View {
        ZStack {
            Color(red: 8, green: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, blue: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/).ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0) {
                Image("dog")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit).cornerRadius(15)
                HStack(spacing: 50.0) {
                    Text(pupName)
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Age: 6 months")
                }
//                Text("Here is a really cute dog")
  //                  .font(.caption)
    //                .fontWeight(.semibold)
      //              .foregroundColor(Color.green)
        //        Text("This dog is sitting in a nice field")
//                    .font(.caption)
  //                  .fontWeight(.semibold)
    //                .foregroundColor(Color.orange)
                
                //PUPPY NAME INPUT PART
                Text(textTitle)
                    .font(.title)
                TextField("Type Name Here", text: $name).multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width: 1)
                
                    Button("Submit Name") {
                        print(name)
                        textTitle = "Pup's new name: \(name)"
                        pupName = name
                    }.font(.title2).buttonStyle(.borderedProminent).tint(.purple)
                
               
            }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).background(Rectangle() .foregroundColor(.white)).cornerRadius(30).shadow(radius: 15)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
