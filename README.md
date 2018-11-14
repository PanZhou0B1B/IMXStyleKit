# IMXStyleKit
Style settings:UIColor,iconfont,UIFont


## 目录

1. IMXStyleKit：头文件
2. UIColor+IMXColorKit：十六进制色值配置方案、颜色色值集合；
3. UIFont+IMXFontKit：常用字体字号集合、helNeue字体字号配置；
4. IMXIconfont：iconfont配置集合。


## iconfont使用


* **iconfont属于自定义字体。目前要求iconfont字体集个数不限**
* **目前使用和工程名相同的iconfont字体集，如`projName.ttf`**
	> 1. 使用（iOS）
	> 	* 查找ttf文件，找到具体icon对应的Unicode值，如`\ue600`。
	>	* UI控件调整fontsize，使之具有合适赋值iconfont字体的大小
	> 	* UI控件赋值iconfont文本即可。
	
	> 2. 导入文件
	> 	* 进入网站[iconfont](http://www.iconfont.cn/),搜索需要的icons，整合为同一项目中，然后下载至本地。
	> 	* 下载文件中含有X.ttf的文件，置入主工程，即完成导入的所有icon字体图标（属于资源文件导入范畴）,Target设置。
	> 	* 在工程项目的info.plist文件中，设置KV值：
	
	> 		```
	<key>UIAppFonts</key>
	<array>
		<string>****.ttf</string>
	</array>
	>	```