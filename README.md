# MainProject
源主工程：  
测试，等待拆分成模块化   
使用[CTMediator](https://github.com/casatwy/CTMediator)作为业务组件解耦与通信的中间件

# ModulizedMainProject Middle
主工程：   
测试，已拆分成模块化，但尚未提交到远程仓库，Podfile文件中pod引入本地业务组件，如   
pod 'ModuleA', :path => '../../ModuleA/ModuleA.podspec'

# ModulizedMainProject Final
主工程（最终版）：   
测试，已完全拆分成模块化，且已提交到远程仓库，Podfile文件中pod引入从远程仓库获取，如下    
```ruby
pod 'ModuleA'
pod 'ModuleA_Category'
pod 'ModuleB'
pod 'ModuleB_Category'
```
本地私有索引仓库
<img src='./images/Snipaste_local repo.png'/>