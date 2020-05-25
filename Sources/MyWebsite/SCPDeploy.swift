import Foundation
import ShellOut
import Publish

public extension DeploymentMethod {
    /// Deploy a website to a given remote using SCP.
    /// - parameter remote: The full user and address of the server to deploy to.
    static func scp(_ remote: String) -> Self {
        DeploymentMethod(name: "SCP (\(remote))") { context in
            do {
                try shellOut(
                    to: "scp -r Output/* \(remote):/var/main-site/www/html/"
                )
            } catch let error as ShellOutError {
                throw PublishingError(infoMessage: error.message)
            } catch {
                throw error
            }
        }
    }
}
