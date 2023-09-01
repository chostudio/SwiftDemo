//
//
//  InfoView.swift
//  Demo App
//
//  Created by Chris Ho on 8/26/23.
//

import SwiftUI

struct InfoView: View {
  var faqItems: [FAQItem] = [
	FAQItem(question: "What is SwiftUI?", answer: "SwiftUI is a framework provided by Apple for building user interfaces across all Apple platforms."),
	FAQItem(question: "Is SwiftUI easy to learn?", answer: "Yes, SwiftUI is designed to be user-friendly and intuitive, especially for developers familiar with Swift."),
	FAQItem(question: "Can I use SwiftUI in my existing projects?", answer: "Yes, you can gradually integrate SwiftUI views into your existing UIKit or AppKit projects."),
	FAQItem(question: "What are the benefits of using SwiftUI?", answer: "SwiftUI offers declarative syntax, automatic UI updates, and a unified codebase for multiple platforms."),
	FAQItem(question: "Is SwiftUI backward-compatible?", answer: "SwiftUI is available from iOS 13 onwards, so it won't work on older iOS versions."),
  ]
  
  var body: some View {
	VStack {
	  Text("Frequently Asked Questions")
		.font(.title)
		.padding()
	  
	  List(faqItems) { item in
		FAQDropdownView(faqItem: item)
	  }
	}
  }
}

struct FAQItem: Identifiable {
  var id = UUID()
  var question: String
  var answer: String
}

struct FAQDropdownView: View {
  @State private var isExpanded = false
  var faqItem: FAQItem
  
  var body: some View {
	VStack(alignment: .leading) {
	  Button(action: {
		
		isExpanded.toggle()
		
	  }) {
		Text(faqItem.question)
		  .font(.headline)
	  }
	  
	  if isExpanded {
		Text(faqItem.answer)
		  .font(.subheadline)
		  .padding(2.0)
	  }
	}
  }
}

struct InfoView_Previews: PreviewProvider {
  static var previews: some View {
	InfoView()
  }
}
