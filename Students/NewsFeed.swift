//
//  Feed.swift
//
//  Created by Ching Ching on 13/5/2023.
//

import SwiftUI

struct NewsFeed: View {
  
  var body: some View {
    VStack {
      HeaderView()
      
      ScrollView(.vertical, showsIndicators: false) {


          
        //the line dividing the screen
        Divider()
        // content is the image, and it has a predefined size
        // description is the text inder the post image
        ViewPost(content: "job_hunt_tips_1", description: "Start your search at least early. Job hunting can be a time-consuming process, so it's important to start early. Ideally, international students should start looking for jobs at least six months before graduation. This will give them enough time to prepare their resume, cover letter, and portfolio, as well as research potential employers and job opportunities.")
        
        ViewPost(content: "job_hunt_tips_2", description: "Know the Local Job Market: International students should research the local job market to identify potential employers and job opportunities in their field of study. They can also attend job fairs, networking events, and informational interviews to learn more about the local job market and make valuable connections with potential employers.")
        
        ViewPost(content: "job_hunt_tips_3", description: "Be Persistent: Job hunting can be a challenging and frustrating process, but international students should not give up. They should continue to apply for jobs, follow up with potential employers, and seek feedback on their job applications and interviews. It's also important to remain positive and confident throughout the job-hunting process.")
          
        ViewPost(content: "cycling_King_Street_Wharf_Darling_Harbour", description: "The King Street Wharf in Darling Harbour boasts an incredible view that is both captivating and picturesque, making it a must-see destination for anyone visiting Sydney.")
      }
    
      TabBarView()
    }
  }
  
}

//to get live preview of the page view
struct NewsFeed_Previews: PreviewProvider {
  static var previews: some View {
      NewsFeed()
  }
}

//it contains the top logo and the slogan
struct HeaderView: View {
  var body: some View {
      Image("logo")
              .resizable()
              .frame(width: 60, height: 60)
              .aspectRatio(contentMode: .fit)
//      Text("We Help and Care").multilineTextAlignment(.center)
    HStack {
      HStack(spacing: 1) {
//        Image(systemName: "plus")
//        Image(systemName: "heart")
//        Image(systemName: "message")
      }
    }
    .padding(.horizontal, 17)
    .padding(.vertical, 1)
  }
}

/// Contains a single story: Image with Name
/// Pass in `image` and `name` as parameters
/// Used in `HomeStories`
///
//Story
struct StoryView: View {
  
  // Parameters to pass into `StoryView()`
  var image: String
  var name: String
  
  // Private variables
  private var imageSize: CGFloat = 60
  private var lineWidth: CGFloat = 2.5
  private var overlayColors: [Color] = [ .blue, .purple, .red, .pink, .yellow, .orange]
  
  public init(image: String, name: String) {
    self.image = image
    self.name = name
  }
  
  var body: some View {
    VStack {
      VStack {
        Image(image)
          .resizable()
          .frame(width: imageSize, height: imageSize)
          .cornerRadius(imageSize)
      }
      .overlay(
        Circle()
          .stroke(
            LinearGradient(colors: overlayColors, startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: lineWidth)
                .frame(width: imageSize + 8, height: imageSize + 8)
      )
      .frame(width: imageSize + 10, height: imageSize + 10)
      
      Text(name)
        .font(.caption)
    }
  }
}

/// Contains a horizontal scroll view of `StoryView`
struct HomeStories: View {
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(spacing: 16) {
        StoryView(image: "person_1", name: "Sat 13 May 2023 5:54 pm")
        StoryView(image: "person_2", name: "Derek John")
        StoryView(image: "person_3", name: "Mike Lee")
        StoryView(image: "person_4", name: "Alex Ra")
        StoryView(image: "person_5", name: "Joe Smith")
        StoryView(image: "person_6", name: "Dave East")
      }
      .padding(.horizontal, 8)
    }
    .padding(.vertical, 12)
  }
}

/// Contains Image, Name, and Ellipsis
struct PostHeader: View {
  private var imageSize: CGFloat = 40
  var body: some View {
    HStack {
      HStack {
        Image("person_1")
          .resizable()
          .frame(width: imageSize, height: imageSize)
          .cornerRadius(imageSize)
        
        Text("Sat 13 May 2023")
          .font(.caption)
          .fontWeight(.bold)
      }
      
      Spacer()
      
      Image(systemName: "ellipsis")
    }
    .padding(.vertical, 12)
    .padding(.horizontal, 8)
  }
}

struct PostContent: View {
  
  var name: String
  
  public init(name: String) {
    self.name = name
  }
  
  var body: some View {
    VStack {
      Image(name)
        .resizable()
//        .frame(width: nil, height: 400)
        .aspectRatio(contentMode: .fit)
      
      HStack {
        HStack {
          Image(systemName: "heart")
          Image(systemName: "message")
//          Image(systemName: "envelope")
        }
        Spacer()
        
        Image(systemName: "bookmark")
      }
      .padding(.horizontal, 12)
      .padding(.vertical, 10)
    }
  }
}
struct ViewPost: View {
  
  var postName: String
  var description: String
  
  public init(content: String, description: String) {
    self.postName = content
    self.description = description
  }
  
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      PostHeader()
      
      PostContent(name: postName)
      
      VStack(alignment: .leading) {

        VStack(spacing: 6) {
          Text("")
            .fontWeight(.bold)
          Text(description)
                .font(.system(size: 16))
        }
        .font(.caption)
          
        
        HStack {
          HStack(spacing: 8) {
            Image("person_2")
              .resizable()
              .frame(width: 30, height: 30)
              .cornerRadius(50)
            
            Text("")
              .font(.caption)
              .foregroundColor(.secondary)
          }
          
          Spacer()
          
//          HStack {
//            Text("😍")
//            Text("😆")
//            Image(systemName: "plus.circle")
//              .foregroundColor(.secondary)
//          }
        }
      }
      .frame(width: .infinity)
      .padding(.horizontal, 12)
    }
  }
}

// this is the bottom most tab bar menu
struct TabBarView: View {
  var body: some View {
    VStack(spacing: 0) {
      Divider()
//      HStack {
//        Image(systemName: "house")
//        Spacer()
//        Image(systemName: "magnifyingglass")
//        Spacer()
//        Image(systemName: "display")
//        Spacer()
//        Image(systemName: "bag")
//        Spacer()
//        Image("person_2")
//          .resizable()
//          .frame(width: 22, height: 22)
//          .cornerRadius(50)
//      }
      .padding(.horizontal, 24)
      .padding(.top, 12)
    }
  }
}
//
