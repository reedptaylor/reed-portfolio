import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct MyWebsite: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts = "posts"
        case projects = "projects"
        case resume = "resume"
        case future_projects = "future_projects"
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://reedtaylor.org")!
    var name = "Reed Taylor"
    var description = "Hi, I'm Reed 👋🏼"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try MyWebsite().publish(
    withTheme: .theme,
    additionalSteps: [
        .step(named: "Default section titles") { context in
            context.mutateAllSections { section in
                switch section.id {
                case .future_projects:
                    section.title = "Future Projects"
                case .posts:
                    section.title = "Posts"
                case .projects:
                    section.title = "Projects"
                case .resume:
                    section.title = "Resume"
                }
            }
        },
        .copyResources(includingFolder: true),
        .generateSiteMap(),
        .deploy(using: .scp("reed@reedtaylor.org"))
    ]
)
//.gitHub("reedptaylor/reed-portfolio")
