#Build FireFox on Android (Fennec)
##1.Run
<pre>
$ wget -q https://hg.mozilla.org/mozilla-central/raw-file/default/python/mozboot/bin/bootstrap.py && python bootstrap.py
</pre>

Choose to build "Firefox for Android" at the prompts.
It will download the essential build environment in $HOME/.mozbuild/(included Android NDK and SDK and etc.)


##2. Get Mozilla Central
hg clone http://hg.mozilla.org/mozilla-central/

##3. Paste following config into your mozconfig
```cpp
# Build Firefox for Android:
ac_add_options --enable-application=mobile/android
ac_add_options --target=arm-linux-androideabi

# With the following Android SDK and NDK:
ac_add_options --with-android-sdk="$HOME/.mozbuild/android-sdk-linux/platforms/android-21"
ac_add_options --with-android-ndk="$HOME/.mozbuild/android-ndk-r8e"

mk_add_options MOZ_OBJDIR=./objdir-droid
```

Notice that the terminal will show the mozconfig hint:
ac_add_options --with-android-sdk="$HOME/.mozbuild/android-sdk-linux   **without** /platforms/android-21
Please append on the path **manually**.

##4. ./mach build
##5. ./mach package
##6. Get the packaged apk
The apk will be From ./MOZILLA_CENTRAL/objdir-droid/dist/

the file name will be called something like fennec-28.0a1.en-US.android-arm.apk.

##7. Install APK
./mach install or use adb install directly.

## Reference
<a name="Mobile/Fennec/Android" title="Build FireFox on Android (Fennec)" target="_blank" href="https://wiki.mozilla.org/Mobile/Fennec/Android">Build FireFox Browser on Android (Fennec)</a>


