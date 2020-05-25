import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct MyWebsite: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts = "posts"
        case overdrive = "overdrive"
        case daiscover = "daiscover"
        case scrum = "scrum"
        case resume = "resume"
        case future_projects = "future_projects"
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://reedtaylor.org")!
    var name = "Reed Taylor"
    var description = "Reed's Blog and Portfolio"
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
                case .daiscover:
                    section.title = "Daiscover"
                case .overdrive:
                    section.title = "Overdrive"
                case .scrum:
                    section.title = "ScrumPokerCards"
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
