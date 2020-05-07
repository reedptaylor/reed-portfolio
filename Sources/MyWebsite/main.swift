import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct MyWebsite: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case overdrive
        case daiscover
        case resume
        case futureProjects
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "Reed Taylor"
    var description = "All things Reed"
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
                case .futureProjects:
                    section.title = "Future Projects"
                case .posts:
                    section.title = "Posts"
                case .daiscover:
                    section.title = "Daiscover"
                case .overdrive:
                    section.title = "Overdrive"
                case .resume:
                    section.title = "Resume"
                }
            }
        },
        .copyResources(includingFolder: true),
        .generateSiteMap()
    ]
)
