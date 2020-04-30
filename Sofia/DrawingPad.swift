

import SwiftUI

struct DrawingPad: View {
    @Binding var currentDrawing: Drawing
    @Binding var drawings: [Drawing]
    @Binding var color: Color
    @Binding var lineWidth: CGFloat
    var letra:String

    var tamanoHorizontal:CGFloat = 150
    var tamanoLetra:CGFloat = 200
    var paddingVertical:CGFloat = 0
    var casillaModificada: Int
    let sonido: String
    
    
    var body: some View {
        ZStack{
            Text(letra)
                .fontWeight(.heavy)
                .font(.system(size: tamanoLetra))
                //                .background(Color.red)

                .frame(width: tamanoHorizontal, height: 10)
                .padding(.vertical,paddingVertical)
            //            .rotationEffect(.degrees(90))
            GeometryReader { geometry in

                Path{ path in
                    for drawing in self.drawings {
                        self.add(drawing: drawing, toPath: &path)
                    }
                    self.add(drawing: self.currentDrawing, toPath: &path)
                }
                .stroke(self.color, lineWidth: self.lineWidth)
                .background(Color.white).opacity(0.9)
                    //Fondo Pad
                    .gesture(
                        SimultaneousGesture(

                            DragGesture(minimumDistance: 0.1)
                                .onChanged({ (value) in
                                    let currentPoint = value.location
                                    if currentPoint.y >= 0
                                        && currentPoint.y < geometry.size.height {
                                        self.currentDrawing.points.append(currentPoint)
                                        //                                        print("Chanfe")
                                    }
                                })
                                .onEnded({ (value) in
                                    self.drawings.append(self.currentDrawing)
                                    self.currentDrawing = Drawing()
                                    //                                    print("Ended")
                                }),
                            LongPressGesture(minimumDuration: 0.02,maximumDistance: .infinity)
                                .onEnded({_ in
                                    playSound(sound: self.sonido, type: "wav")
                                    print("long")
                                }))

                )


            }
        }
    }
    
    private func add(drawing: Drawing, toPath path: inout Path) {
        let points = drawing.points
        if points.count > 1 {
            for i in 0..<points.count-1 {
                let current = points[i]
                let next = points[i+1]
                path.move(to: current)
                path.addLine(to: next)


                //                path.addRect(.init(origin: next, size: .init(width: 5.005, height: 5.005)))
//                                path.addRoundedRect(in: .init(origin: next, size: .init(width: 10, height: 10)), cornerSize: .init(width: 50, height: 50) )

            }
        }
    }
    
}

struct DrawingPad_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
