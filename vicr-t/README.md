#VICR-T
VICR template 


##Usage

Use  
```sh
generamba gen SampleScreen vicr-t --module_path Layers/Presentation/UserStroies/Main/ --custom_parameters \
type:table \
model:TestDomainModel \
di:DIContainer \
sb:Main \
``` 
for generate module, where `SampleScreen` is module name

###or

Use  
```sh
generamba gen SampleScreen vicr-t --module_path Layers/Presentation/UserStroies/Main/ --custom_parameters \
usexib:1 \
``` 
for creating ViewController xib

###Options

####type: 
`table` for generating table view module with cell and datasource, skip if need ViewController

####model:
Domain model class name Xcode template by default
 
####error: 
Error class name `String` by default

####di: 
DI Container class name using in assembly

####base: 
ViewControllers base prefix `Base` by default

