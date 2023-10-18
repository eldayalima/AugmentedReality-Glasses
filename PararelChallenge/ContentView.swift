//
//  ContentView.swift
//  PararelChallenge
//
//  Created by Elwin Johan Sibarani on 23/05/23.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView : View {
    @State var selectedGlasses : String = "glasses1"
    
    
    var body: some View {
        ZStack(alignment: .bottom){
            ARViewContainer(selectedGlasses: selectedGlasses)
                .edgesIgnoringSafeArea(.all)
            HStack{
                Button(){
                    selectedGlasses = "glasses1"
                } label: {
                    Image("glasses1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                }
                Button(){
                    selectedGlasses = "glasses2"
                } label: {
                    Image("glasses2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                }
                Button(){
                    selectedGlasses = "glasses3"
                } label: {
                    Image("glasses3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                }
                Button(){
                    selectedGlasses = "glasses4"
                } label: {
                    Image("glasses4")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                }
            }
        }
        
    }
}

struct ARViewContainer: UIViewRepresentable {
    let selectedGlasses: String
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        if !ARFaceTrackingConfiguration.isSupported{
            print("Your phone not supported")
        }else{
            let configuration = ARFaceTrackingConfiguration()
            arView.session.run(configuration)
            
            let faceAnchor =  try! Experience.loadGlasses1()
            
            arView.scene.addAnchor(faceAnchor)
        }
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        if selectedGlasses == "glasses1"{
            let faceAnchor =  try! Experience.loadGlasses1()
            uiView.scene.anchors.removeAll()
            
            // Add the new anchor to the scene
            uiView.scene.addAnchor(faceAnchor)
        }
        
        if selectedGlasses == "glasses2"{
            let faceAnchor =  try! Experience.loadGlasses2()
            uiView.scene.anchors.removeAll()
            
            // Add the new anchor to the scene
            uiView.scene.addAnchor(faceAnchor)
        }
    
        
        if selectedGlasses == "glasses3"{
            let faceAnchor =  try! Experience.loadGlasses3()
            uiView.scene.anchors.removeAll()
            
            // Add the new anchor to the scene
            uiView.scene.addAnchor(faceAnchor)
        }
        
        if selectedGlasses == "glasses4"{
            let faceAnchor =  try! Experience.loadGlasses4()
            uiView.scene.anchors.removeAll()
            
            // Add the new anchor to the scene
            uiView.scene.addAnchor(faceAnchor)
        }
    }
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
