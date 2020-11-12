//
//  ProfileSignedIn.swift
//   FightPandemics

//
//
//

import SwiftUI
struct ProfileSignedIn: View {

init() {UINavigationBar
    .appearance()
    .titleTextAttributes = [.font: UIFont(name: "Verdana", size: 16)!] }
    var body: some View {
        
        NavigationView {
            
        ZStack{Color( #colorLiteral(red: 0.9624996781, green: 0.9666767716, blue: 0.997005403, alpha: 1))
        VStack{
            
        Form {
                
        HStack {
        VStack (alignment: .leading, spacing: 5){
        
        Text("My account")
            
        Text("Join now or sign in to get started")
        .font (Font.system(size: 11, weight: .semibold))
        .foregroundColor(Color(#colorLiteral(red: 0.5759999752, green: 0.5759999752, blue: 0.5759999752, alpha: 1)))}
        
        Spacer()

        Image (systemName: "chevron.forward")}
            
        Section {
                
        NavigationLink(destination: Blank()) {
                               
        HStack {
        
        Text("About Us")
        
        Spacer()
                      
        Image (systemName: "arrow.up.right.square")}}
            
        NavigationLink(destination: Blank()) {
                              
        HStack {
        
        Text("Privacy Policy")
        
        Spacer()
        
        Image (systemName: "arrow.up.right.square")}}
            
        NavigationLink(destination: Blank()) {
                
        HStack {
        
        Text("Support")
                   
        Spacer()
        
        Image (systemName: "arrow.up.right.square")}}}
                
        Section {
                 
        HStack {
        
        Text("Feedback")
        
        Spacer()
                             
        Image (systemName: "chevron.forward")}}
            }
            .onAppear
        {UITableView.appearance().backgroundColor = #colorLiteral(red: 0.9624996781, green: 0.9666767716, blue: 0.997005403, alpha: 1)}
            
        HStack {
        
        Text("FightPandemics App V1.2")
            .foregroundColor(Color(#colorLiteral(red: 0.5920000076, green: 0.5920000076, blue: 0.5920000076, alpha: 1)))
            .font (Font.system(size: 9))}
               }
                .foregroundColor(Color(#colorLiteral(red: 0.2590000033, green: 0.3529999852, blue: 0.949000001, alpha: 1)))
                .navigationBarTitle(Text("Profile"),displayMode: .inline)
                .padding(.bottom,20) }}}}

struct ProfileSignedIn_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSignedIn() }}
