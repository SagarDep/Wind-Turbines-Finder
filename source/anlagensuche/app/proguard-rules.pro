# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in C:\Users\smurf\AppData\Local\Android\Sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
-dontwarn org.apache.commons.**
-dontwarn java.beans.**
-keepattributes EnclosingMethod

#-keep public class * extends android.app.Activity
#-keep public class * extends android.app.Fragment
#-keep public class * extends android.support.v4.app.Fragment

# The Maps API uses custom Parcelables.
# Use this rule (which is slightly broader than the standard recommended one)
# to avoid obfuscating them.
#-keepclassmembers class * implements android.os.Parcelable {
#    static *** CREATOR;
#}

# The Maps API uses serialization.
#-keepclassmembers class * implements java.io.Serializable {
#    static final long serialVersionUID;
#    static final java.io.ObjectStreamField[] serialPersistentFields;
#    private void writeObject(java.io.ObjectOutputStream);
#    private void readObject(java.io.ObjectInputStream);
#    java.lang.Object writeReplace();
#    java.lang.Object readResolve();
#}