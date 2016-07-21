#Module-VC
VIPER module template based on BaseViewController: UIViewController, Routable


##Usage
You need to add [VIPERRouter.swift](https://github.com/MaksimBazarov/swift-templates/blob/master/Router/VIPERRouter.swift) in your project first

Use  `generamba gen SampleScreen module-vc` for generate module, where `SampleScreen` is mщdule name, and you'll get this files:

**SampleScreen** folder
- [SampleScreenAssembly.swift](#samplescreenassemblyswift) // Assembly
- [SampleScreenModule.swift](#samplescreenmoduleswift) // Module interface and Presenter
- [SampleScreenView.swift](#samplescreenviewswift) // View interface and View Controller sublass 
- [SampleScreenInteractor.swift](#samplescreeninteractorswift) // Interactor
- [SampleScreenRouter.swift](#samplescreenrouterswift) // Router


###SampleScreenAssembly.swift
```swift
import UIKit

final class SampleScreenAssembly
{
    class func createModule(configure: (module: SampleScreenModuleInput) -> Void) -> SampleScreenViewController
    {
        let vc = /* initialize controller */
        let interactor = SampleScreenInteractor()
        let presenter = SampleScreenPresenter()
        let router = SampleScreenRouter()


        interactor.output = presenter

        presenter.view = vc
        presenter.interactor = interactor

        configure(module: presenter)

        vc.output = presenter
        vc.router = router

        router.view = vc

        return vc
    }
}
```
###SampleScreenModule.swift
```swift
import UIKit

// MARK: - Module interface
protocol SampleScreenModuleInput
{
    func setupDelegate(output: SampleScreenModuleOutput)
}

//MARK: Output
protocol SampleScreenModuleOutput: class
{

}


// MARK: - Presenter
final class SampleScreenPresenter: SampleScreenModuleInput
    , SampleScreenViewOutput
    , SampleScreenInteractorOutput
{
    weak var view: SampleScreenViewInput!
    var interactor: SampleScreenInteractorInput!

    weak var output: SampleScreenModuleOutput?

    func setupDelegate(output: SampleScreenModuleOutput)
    {
        self.output = output
    }


    // MARK: - Interactor Output

    // MARK: - View Output
}
```


###SampleScreenView.swift
```swift
import UIKit

// MARK: - Interface
protocol SampleScreenViewInput: class
{

}

protocol SampleScreenViewOutput: class
{

}

// MARK: - View Controller
final class SampleScreenViewController: BaseViewController
    , SampleScreenViewInput
	, Routable
{
    var output: SampleScreenViewOutput!
    typealias RouterType = SampleScreenRouter
    var router: RouterType!

    // MARK: - Life cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        /* Initialization here */
    }

    // MARK: View Input
}
```

###SampleScreenInteractor.swift
```swift
// MARK: - Interface
protocol SampleScreenInteractorInput: class
{

}

//MARK: Output
protocol SampleScreenInteractorOutput: class
{

}

// MARK: - Interactor
final class SampleScreenInteractor: SampleScreenInteractorInput
{
    weak var output: SampleScreenInteractorOutput!
}
```

###SampleScreenRouter.swift
```swift
import UIKit

// MARK: - Router
final class SampleScreenRouter: VIPERRouter
{
    weak var view: SampleScreenViewController!
}
```
