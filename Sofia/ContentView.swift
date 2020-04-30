

import SwiftUI

struct ContentView: View {

    @State private var currentDrawing0: Drawing = Drawing()
    @State private var drawings0: [Drawing] = [Drawing]()
    @State private var color0: Color = Color.black
    @State private var lineWidth0: CGFloat = 10.0

    @State private var currentDrawing1: Drawing = Drawing()
    @State private var drawings1: [Drawing] = [Drawing]()
    @State private var color1: Color = Color.black
    @State private var lineWidth1: CGFloat = 10.0

    @State private var currentDrawing2: Drawing = Drawing()
    @State private var drawings2: [Drawing] = [Drawing]()
    @State private var color2: Color = Color.black
    @State private var lineWidth2: CGFloat = 10.0


    @State private var currentDrawing3: Drawing = Drawing()
    @State private var drawings3: [Drawing] = [Drawing]()
    @State private var color3: Color = Color.black
    @State private var lineWidth3: CGFloat = 10.0


    @State private var currentDrawing4: Drawing = Drawing()
    @State private var drawings4: [Drawing] = [Drawing]()
    @State private var color4: Color = Color.black
    @State private var lineWidth4: CGFloat = 10.0
    @State var casillaModificada: Int = 0


@State private var color: Color = Color.black

    var tamanoLetra: CGFloat = 10
    //Creo Que no hacen nada
    var tamanoVertical: CGFloat = 140
    var tamanoHorizontal: CGFloat = 100
    
    var body: some View {
        VStack{

            HStack(alignment: .center) {


                DrawingPad(currentDrawing: $currentDrawing0,
                           drawings: $drawings0,
                           color: $color,
                           lineWidth: $lineWidth0, letra: "S", casillaModificada: 0, sonido: "s")
//                    .frame(width: tamanoHorizontal, height: tamanoVertical)

                DrawingPad(currentDrawing: $currentDrawing1,
                           drawings: $drawings1,
                           color: $color,
                           lineWidth: $lineWidth1, letra: "O", casillaModificada: 1, sonido: "o")
//                    .frame(width: tamanoHorizontal, height: tamanoVertical)
                DrawingPad(currentDrawing: $currentDrawing2,
                           drawings: $drawings2,
                           color: $color,
                           lineWidth: $lineWidth2, letra: "F", casillaModificada: 2, sonido: "f")
//                    .frame(width: tamanoHorizontal, height: tamanoVertical)
                DrawingPad(currentDrawing: $currentDrawing3,
                           drawings: $drawings3,
                           color: $color,
                           lineWidth: $lineWidth3, letra: "Í", casillaModificada: 3, sonido: "i")
                    .frame(width: 90)
                DrawingPad(currentDrawing: $currentDrawing4,
                           drawings: $drawings4,
                           color: $color,
                           lineWidth: $lineWidth4, letra: "A", casillaModificada: 4, sonido: "a")
//                    .frame(width: tamanoHorizontal, height: tamanoVertical)


            }.offset(x: -20, y: 50)
            DrawingControls(color: $color, drawings0: $drawings0, drawings1: $drawings1, drawings2: $drawings2, drawings3: $drawings3, drawings4: $drawings4, lineWidth: $lineWidth1)

            .offset(x: -17, y: 20)
        }


    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        return ContentView().previewLayout(.fixed(width: 2436, height: 1125))
    }
}
