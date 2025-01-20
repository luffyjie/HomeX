# HomeX
swift ui work with UIKit

Aa we known, the most issue in swiftUI is navigation. I try create a project in pure swiftUI, let me crazy is her bad navigation.
I want to support iOS15, so I cannot use navigationstack. How to enjoy siwftUI fast UI benifis, the best way is use it in UIKit.
I creat a project base on UIKit, using UINavigation as my router. After learing the WWDC session about :Use SwiftUI with UIKit
https://developer.apple.com/videos/play/wwdc2022/10072/?time=1397
I find the way how to combine them. like this :

/// code
class PWHomePageVC: PWUIViewController {

    var homeViewModel = PWHomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadUI()
    }
    
    func loadUI() {
        let heartRateView = PWHomeView(viewModel: homeViewModel)
        let hostingController = UIHostingController(rootView: heartRateView)
        self.addChild(hostingController)
        self.view.addSubview(hostingController.view)
        hostingController.view.snp.makeConstraints { make in
            make.edges.equalTo(self.view)
        }
        hostingController.didMove(toParent: self)
    }
}

Then the object will liftcyle is bind with VC now. we can skip the bad thing in swiftUI router.

About the swiftUI discuss you can read this article 

https://jacobbartlett.substack.com/p/swiftui-apps-at-scale

I hope this template can help you in using swiftUI. I belevie as apple says, it's right now to use swiftUI in your project.

Yes, we skip the pure swiftUI project, we embed it into trandition UIKit project, that's the best pose.
