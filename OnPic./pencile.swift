//
//  pencile.swift
//  OnPic.
//
//  Created by ashwaq almuzaini on 06/08/1444 AH.
//
//
//import CoreImage
//import CoreImage.CIFilterBuiltins
//import SwiftUI
//
//struct pencileView: View{
//    @State private var des = ""
//    
//    @State private var image: Image?
//    @State private var filterIntensity = 0.5
//    @State private var radiusIntensity = 0.5
//    
//    @State private var showingImagePicker = false
//    @State private var inputImage: UIImage?
//    @State private var processedImage: UIImage?
//    
//    @State private var currentFilter: CIFilter = CIFilter.sepiaTone()
//    let context = CIContext()
//    
//    @State private var showingFilterSheet = false
//    
//    var body: some View {
//        NavigationView{
//            VStack {
//                
//                HStack{
//                    
//                    Spacer()
//                    
//                    Button("Save", action: save)
//                        .padding(.trailing, 10.0)
//                        .disabled(image == nil ? true : false)
//                }
//                ZStack{
//                    ScrollView(.vertical){
//                        
//                                           Rectangle()
//                                                .fill(.white)
//                        
//                                                .frame(width: 450)
//                        
//                        Text("Tap to select a picture")
//                            .foregroundColor(.black)
//                            .font(.headline)
//
//                        image?
//                            .resizable()
//                            .frame(width: 450,height: 500)
//                                                .scaledToFit()
//                    }
//                    .onTapGesture {
//                        showingImagePicker = true
//                    }
//                    
//                }
//                    ZStack{
//                        Text("")
//                            .padding(.top,25)
//                            .padding(.bottom,0.5)
//                        
//                            .font(.system(size: 20))
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                            .foregroundColor(.white)
//                            .padding(.bottom, 100.0)
//                        
//                        TextField("", text: self.$des , axis: .vertical)
//                            .lineLimit(5...10)
//                            .padding(.vertical,30)
//                        
//                            .frame(width: 380,height: 140)
//                            .foregroundColor(.white)
//                            .background(Color("bro").opacity(0.2).cornerRadius(10))
//                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("bro")))
//                            .padding()
//                        Text("")
//                            .padding(.top, 11.0)
//                            .toolbar {
//                                
//                                
//                                ToolbarItem(placement: .bottomBar) {
//                                    
//                                    HStack {
//                                        
//                                        Button(action: {}, label: {
//                                            
//                                            Image(systemName: "note")
//                                                .padding(22.0)
//                                                .font(.title2)
//                                                .foregroundColor(Color("colo"))
//                                            
//                                        })
//                                        Spacer()
//                                        
//                                        Button(action: {
//                                            
//                                        }, label: {
//                                            
//                                            Image(systemName: "pencil.tip.crop.circle")
//                                                .padding(.leading, 3.0)
//                                                .font(.title2)
//                                                .foregroundColor(Color("colo"))
//                                            
//                                        })
//                                        Spacer()
//                                        
//                                        
//                                        Button(action: {}, label: {
//                                            Image(systemName: "quote.bubble")
//                                                .padding(14.0)
//                                                .font(.title2)
//                                                .foregroundColor(Color("colo"))
//                                        })
//                                        
//                                        
//                                    }
//                                  
//                                    .padding()
//                                    .frame(width: 450, height: 68)
//                                    .background(Color("bro"))
//                                    .ignoresSafeArea()
//                                    
//                                }
//                            }
//                    }
//                }
//                
//                .padding(.bottom, 50.0)
////                .navigationTitle("OnPic")
//                .onChange (of: inputImage) {_ in loadImage () }
//                .sheet(isPresented: $showingImagePicker) {
//                    imagePicker(image: $inputImage)
//                }
//                //            .confirmationDialog("Select a Filter", isPresented: $showingFilterSheet) {
//                //                Button("Crystallize") { setFilter(CIFilter.crystallize()) }
//                //                Button("Edges") { setFilter(CIFilter.edges()) }
//                //                Button("Gaussian Blur") { setFilter(CIFilter.gaussianBlur()) }
//                //                Button("Pixellate") { setFilter(CIFilter.pixellate()) }
//                //                Button("Sepia Tone") { setFilter(CIFilter.sepiaTone()) }
//                //                Button("Unsharp Mask") { setFilter(CIFilter.unsharpMask()) }
//                //                Button("Vignette") { setFilter(CIFilter.vignette()) }
//                //                Button("Box Blur") { setFilter(CIFilter.boxBlur()) }
//                //                Button("Bloom") { setFilter(CIFilter.bloom()) }
//                Button("Cancel", role: .cancel) { }
//            }
//            
//        }
//        
//        
//        
//        func loadImage() {
//            guard let inputImage = inputImage else { return }
//            
//            let beginImage = CIImage(image: inputImage)
//            currentFilter.setValue(beginImage, forKey: kCIInputImageKey)
//            applyProcessing()
//            
//        }
//        
//        func save() {
//            guard let processedImage = processedImage else { return }
//            
//            let imageSaver = ImageSaver()
//            
//            imageSaver.successHandleer = {
//                print ("Success!")
//            }
//            
//            imageSaver.errorHandler = {
//                print("Ops! \($0.localizedDescription)")
//            }
//            imageSaver.writeToPhotoAlbum(image: processedImage)
//        }
//        
//        func applyProcessing(){
//            let inputKey = currentFilter.inputKeys
//            
//            if inputKey.contains(kCIInputIntensityKey) {
//                currentFilter.setValue(filterIntensity, forKey: kCIInputIntensityKey)
//            }
//            
//            if inputKey.contains(kCIInputRadiusKey) {
//                currentFilter.setValue(radiusIntensity * 200, forKey: kCIInputRadiusKey)
//            }
//            
//            if inputKey.contains(kCIInputScaleKey) {
//                currentFilter.setValue(filterIntensity * 10, forKey: kCIInputScaleKey)
//            }
//            
//            
//            
//            guard let outputImage = currentFilter.outputImage else { return }
//            
//            if let cgimg = context.createCGImage(outputImage , from: outputImage.extent) {
//                let uiImage = UIImage(cgImage: cgimg)
//                image = Image(uiImage: uiImage)
//                processedImage = uiImage
//            }
//        }
//        
//    }
//    
//
//    
//    struct pencileView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//    }
//
//
