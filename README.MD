# CEF binary version 3.2357.1291
One of my projects needs to embed a browser that support NPAI flash player. Sadly, the CEF official web site does't reserve CEF build binaries  that are very old, and it's is very complex to build it from scratch especially when your internet connection is poor.

Fortunately I found that Unreal Engines use CEF too. The UE4.11 contains a CEF binary of version 3.2357.1291 that are satisfies all my requirements. 

To use it, you still needs to build it, but it's relatively much easier now:

## Requirements
- cmake 3.10.2
- Visual Studio 2017 community ( with 140_xp toolset to support Windows XP sp3)
- A bash such mingw (windows version git already contains one)

## Build 

### 32 bits

    cd cef_binary_3.2357.1291.g47e6d4b_windows32
    sh build32.sh

### 64 bits
    cd cef_binary_3.2357.1291.g47e6d4b_windows64
    sh build64.sh

You may need to edit build32.sh/build64.sh a litte if your Visual Studio is different from mine.




