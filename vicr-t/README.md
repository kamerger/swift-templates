#VICR-T
VICR template 


##Usage

Use  
```sh
generamba gen Test2 vicr-t --module_path Layers/Presentation/UserStroies/Main/ --custom_parameters \
type:table \
model:TestDomainModel \
di:DIContainer \
sb:Main \
``` 
for generate module, where `SampleScreen` is module name


###Options

####type: 
`table` for generating table view module with cell and datasource

####model:
Domain model class name Xcode template by default
 
####error: 
Error class name `String` by default

####di: 
DI Container class name using in assembly

####base: 
ViewControllers base prefix `Base` by default

