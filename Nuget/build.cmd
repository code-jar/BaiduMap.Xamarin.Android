set locationVersion=7.6.0
set mapVersion=5.3.2

msbuild ../LocationSDK/LocationSDK.csproj /t:Rebuild /p:Configuration=Release
msbuild ../MapSDK/MapSDK.csproj /t:Rebuild /p:Configuration=Release

nuget pack BaiduMapLocation.Xamarin.Android.nuspec -Version %locationVersion%
nuget pack BaiduMap.Xamarin.Android.nuspec -Version %mapVersion%