

import SwiftUI

struct DrawingControls: View {
    @Binding var color: Color
    @Binding var drawings0: [Drawing]
     @Binding var drawings1: [Drawing]
     @Binding var drawings2: [Drawing]
     @Binding var drawings3: [Drawing]
     @Binding var drawings4: [Drawing]
    @Binding var lineWidth: CGFloat
    
    @State private var colorPickerShown = false

    private let spacing: CGFloat = 40
    
    var body: some View {


                HStack(spacing: spacing) {
                    Spacer()
                    Button(action: {
                        self.colorPickerShown = true
                    }) {
                        Image(systemName: "pencil.circle.fill").resizable().frame(width: 52.0, height: 52.0)
                    }
//                    Button("Retroceder") {
//                        if self.drawings.count > 0 {
//                            self.drawings.removeLast()
//                        }
//                    }
                    
                    Button(action: {
                        self.drawings0 = [Drawing]()
                        self.drawings1 = [Drawing]()
                        self.drawings2 = [Drawing]()
                        self.drawings3 = [Drawing]()
                        self.drawings4 = [Drawing]()
                    }) {
                        Image(systemName: "trash.circle.fill").resizable().frame(width: 52.0, height: 52.0)
                    }
                    Spacer()
                }.foregroundColor(.black)
//                HStack {
//                    Text("Tamaño")
//                        .padding()
//
//                    Slider(value: $lineWidth)
//                        //Original
//                  Slider(value: $lineWidth, from: 1.0, through: 15.0, by: 1.0)
//                        .padding()
//                }


        
        .frame(height: 120)
        .sheet(isPresented: $colorPickerShown, onDismiss: {
            self.colorPickerShown = false
        }, content: { () -> ColorPicker in
            ColorPicker(color: self.$color, colorPickerShown: self.$colorPickerShown)
        })
    }
}
