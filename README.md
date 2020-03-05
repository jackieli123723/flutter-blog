# flutter-blog
flutter-blog


## android 打包 release 版本 

注意这个打包出来的 app-release.apk  在 电脑模拟器上 可能安装不上 
报错 sdk 版本低或者  arm 虚拟机问题 

```
$ flutter build apk
You are building a fat APK that includes binaries for android-arm, android-arm64                                                                                                                                                                                               , android-x64.
If you are deploying the app to the Play Store, it's recommended to use app bund                                                                                                                                                                                               les or split the APK to reduce the APK size.
    To generate an app bundle, run:
        flutter build appbundle --target-platform android-arm,android-arm64,andr                                                                                                                                                                                               oid-x64
        Learn more on: https://developer.android.com/guide/app-bundle
    To split the APKs per ABI, run:
        flutter build apk --target-platform android-arm,android-arm64,android-x6                                                                                                                                                                                               4 --split-per-abi
        Learn more on:  https://developer.android.com/studio/build/configure-apk                                                                                                                                                                                               -splits#configure-abi-split
Removed unused resources: Binary resource data reduced from 484KB to 474KB: Remo                                                                                                                                                                                               ved 2%
Running Gradle task 'assembleRelease'...                          136.7s (!)
√ Built build\app\outputs\apk\release\app-release.apk (6.5MB).

```

## 对应的ndk 配置 


```
def localProperties = new Properties()
def localPropertiesFile = rootProject.file('local.properties')
if (localPropertiesFile.exists()) {
    localPropertiesFile.withReader('UTF-8') { reader ->
        localProperties.load(reader)
    }
}

def flutterRoot = localProperties.getProperty('flutter.sdk')
if (flutterRoot == null) {
    throw new GradleException("Flutter SDK not found. Define location with flutter.sdk in the local.properties file.")
}

def flutterVersionCode = localProperties.getProperty('flutter.versionCode')
if (flutterVersionCode == null) {
    flutterVersionCode = '1'
}

def flutterVersionName = localProperties.getProperty('flutter.versionName')
if (flutterVersionName == null) {
    flutterVersionName = '1.0'
}

apply plugin: 'com.android.application'
apply plugin: 'kotlin-android'
apply from: "$flutterRoot/packages/flutter_tools/gradle/flutter.gradle"

//证书 
def keystoreProperties = new Properties()
def keystorePropertiesFile = rootProject.file('key.properties')
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
}


android {
    //修改的地方不然不能运行
    // compileSdkVersion 28
    compileSdkVersion 29

    sourceSets {
        main.java.srcDirs += 'src/main/kotlin'
    }

    lintOptions {
        disable 'InvalidPackage'
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId "com.example.hello_world"
        minSdkVersion 21
        //修改的地方不然不能运行
        // targetSdkVersion 28
        targetSdkVersion 29
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
        testInstrumentationRunner "androidx.test.runner.AndroidJUnitRunner"
        //    ndk {
        //     abiFilters 'armeabi-v7a','arm64-v8a','x86_64'
        //    }
        // ndk {
        //    abiFilters "armeabi-v7a","x86","arm64-v8a"
        // }
         
         //真机运行 
         ndk {
                // abiFilters "armeabi","armeabi-v7a","arm64-v8a","x86" 
                abiFilters "armeabi-v7a"
            }

    }

    // buildTypes {
    //     release {
    //         // TODO: Add your own signing config for the release build.
    //         // Signing with the debug keys for now, so `flutter run --release` works.
    //         signingConfig signingConfigs.debug

    //         ndk{
    //         //这里其实我觉可以直接是用        "armeabi-v7a"，但国内大多使用的都是        "armeabi"
    //         abiFilters "armeabi"
                
    //         }
    //     }

    //     debug {
    //       //这里要加上，否则debug包会出问题,后面两个为可选，x86建议加上不然部分模拟器回报错
    //         ndk {
    //             abiFilters "armeabi","armeabi-v7a","arm64-v8a","x86" 
    //         }
    //     }
    // }
 
    signingConfigs {
       release {
           keyAlias keystoreProperties['keyAlias']
           keyPassword keystoreProperties['keyPassword']
           storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
           storePassword keystoreProperties['storePassword']
       }
   }
   buildTypes {
       release {
           signingConfig signingConfigs.release

            //关闭混淆
            minifyEnabled true //删除无用代码
            // shrinkResources true //删除无用资源
            // zipAlignEnabled true // 是否采用压缩对齐方式（暂时不懂）
            useProguard true

            // ndk{ // 必须加入这部分，否则可能导致编译成功的release包在真机中会闪退
            //  //  abiFilters "armeabi-v7a"
            //  abiFilters "armeabi-v7a","x86","arm64-v8a","x86_64","armeabi"
            //     // abiFilters "x86_64","armeabi-v7a","arm64-v8a"
            // }
            //    ndk {
            //     //   abiFilters "armeabi","armeabi-v7a","x86","arm64-v8a","x86_64"
            //     abiFilters "armeabi-v7a","x86_64","arm64-v8a"
            // }
        
           //真机运行 
           ndk {
                //  abiFilters "armeabi","armeabi-v7a","arm64-v8a","x86" 
                 abiFilters "armeabi-v7a"
            }

             proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
       }

        // debug也会应用签名
        debug {
            signingConfig signingConfigs.release
            //真机运行 
            ndk {
                // abiFilters "armeabi","armeabi-v7a","arm64-v8a","x86" 
                abiFilters "armeabi-v7a", "x86"
            }
        }

   }
}

flutter {
    source '../..'
}

dependencies {
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version"
    testImplementation 'junit:junit:4.12'
    androidTestImplementation 'androidx.test:runner:1.1.1'
    androidTestImplementation 'androidx.test.espresso:espresso-core:3.1.1'
}

```