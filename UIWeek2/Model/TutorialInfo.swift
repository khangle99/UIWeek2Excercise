import Foundation

struct TutorialInfo {
    
    let title: String
    let description: String
    let imageName: String
    
    static func getTutorialInfo() -> [TutorialInfo] {
        return [
            TutorialInfo(title: "Eat Healthy", description: "Maintaining good health should be the primary focus of everyone.", imageName: "img_tutorial_1"),
            TutorialInfo(title: "Healthy Recipes", description: "Browse thousands of healthy recipes from all over the world.", imageName: "img_tutorial_2"),
            TutorialInfo(title: "Track Your Health", description: "With amazing inbuilt tools you can track your progress.", imageName: "img_tutorial_3")
        ]
    }
    
}
