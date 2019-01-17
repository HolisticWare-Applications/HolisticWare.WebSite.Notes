# Bulk namespace renaming log

Log made by `AndroidX.Migraineator` bulk migrating Android Support to AndroidX .NET Core CLI tool:

```
Last login: Wed Oct 31 12:44:22 on ttys002
MiljenkokPro143:~ moljac$ bash -c 'clear; cd "/Applications/Visual Studio.app/Contents/Resources/lib/monodevelop/AddIns/DotNetCore.Debugger/Adapter/"; "/Applications/Visual Studio.app/Contents/Resources/lib/monodevelop/AddIns/DotNetCore.Debugger/Adapter/vsdbg" --interpreter=vscode --connection=/var/folders/xt/ytq9wfqd2y78kx1ks7z36mrr0000gn/T/CoreFxPipe_vsdbg-ui-8ed73af588f84fe883462a7f6b072043; echo $? > /var/folders/xt/ytq9wfqd2y78kx1ks7z36mrr0000gn/T/tmp1f57cea8.tmp; echo; read -p "Press any key to continue..." -n1; exit'; exit





































Migrating Android.Support in:
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/
  to  AndroidX in:
    ../../../dumps/
Migrating files: 
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/Metadata.common.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.legacy/legacy-support-core-utils/transforms/Metadata.xml
         Found         : package[@name='android.support.v4.graphics']
         Replacing with: package[@name='androidx.core.graphics']
         Found         : package[@name='android.support.v4.content']
         Replacing with: package[@name='androidx.loader.content']
         Found         : package[@name='android.support.v4.text']
         Replacing with: package[@name='androidx.core.text']
         Found         : package[@name='android.support.v4.app']
         Replacing with: package[@name='androidx.core.app']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.legacy/legacy-preference-v14/transforms/Metadata.xml
         Found         : package[@name='android.support.v14.preference']
         Replacing with: package[@name='androidx.preference']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.legacy/legacy-support-v4/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.legacy/legacy-support-v13/transforms/Metadata.xml
         Found         : package[@name='android.support.v13.view']
         Replacing with: package[@name='androidx.legacy.view']
         Found         : package[@name='android.support.v13.app']
         Replacing with: package[@name='androidx.legacy.app']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.legacy/legacy-support-core-ui/transforms/Metadata.xml
         Found         : package[@name='android.support.v4.view.animation']
         Replacing with: package[@name='androidx.core.view.animation']
         Found         : package[@name='android.support.design.widget']
         Replacing with: package[@name='androidx.coordinatorlayout.widget']
         Ambiguity for        : android.support.v4.widget
         Ambiguity fixed        : androidx.core.widget
         Found         : package[@name='android.support.v4.widget']
         Replacing with: package[@name='androidx.core.widget']
         Ambiguity for        : android.support.v4.view
Ambiguity not resolved for android.support.v4.view
         Ambiguity fixed        : androidx.customview.view
         Found         : package[@name='android.support.v4.view']
         Replacing with: package[@name='androidx.customview.view']
         Found         : package[@name='android.support.v4.app']
         Replacing with: package[@name='androidx.core.app']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.customview/customview/transforms/Metadata.xml
         Ambiguity for        : android.support.v4.widget
         Ambiguity fixed        : androidx.customview.widget
         Found         : package[@name='android.support.v4.widget']
         Replacing with: package[@name='androidx.customview.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.core/core/transforms/Metadata.xml
         Found         : package[@name='android.support.v4.hardware.fingerprint']
         Replacing with: package[@name='androidx.core.hardware.fingerprint']
         Found         : package[@name='android.support.v4.view.accessibility']
         Replacing with: package[@name='androidx.core.view.accessibility']
         Found         : package[@name='android.support.v13.view.inputmethod']
         Replacing with: package[@name='androidx.core.view.inputmethod']
         Found         : package[@name='android.support.v4.internal.view']
         Replacing with: package[@name='androidx.core.internal.view']
         Found         : package[@name='android.support.v4.graphics']
         Replacing with: package[@name='androidx.core.graphics']
         Found         : package[@name='android.support.v4.provider']
         Replacing with: package[@name='androidx.documentfile.provider']
         Found         : package[@name='android.support.v4.content']
         Replacing with: package[@name='androidx.loader.content']
         Ambiguity for        : android.support.v4.widget
         Ambiguity fixed        : androidx.core.widget
         Found         : package[@name='android.support.v4.widget']
         Replacing with: package[@name='androidx.core.widget']
         Found         : package[@name='android.support.v13.view']
         Replacing with: package[@name='androidx.legacy.view']
         Found         : package[@name='android.support.v4.text']
         Replacing with: package[@name='androidx.core.text']
         Found         : package[@name='android.support.v4.util']
         Replacing with: package[@name='androidx.core.util']
         Ambiguity for        : android.support.v4.view
Ambiguity not resolved for android.support.v4.view
         Ambiguity fixed        : androidx.customview.view
         Found         : package[@name='android.support.v4.view']
         Replacing with: package[@name='androidx.customview.view']
         Found         : package[@name='android.support.compat']
         Replacing with: package[@name='androidx.core']
         Found         : package[@name='android.support.v4.app']
         Replacing with: package[@name='androidx.core.app']
         Found         : package[@name='android.support.v4.os']
         Replacing with: package[@name='androidx.core.os']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.slidingpanelayout/slidingpanelayout/transforms/Metadata.xml
         Ambiguity for        : android.support.v4.widget
         Ambiguity fixed        : androidx.slidingpanelayout.widget
         Found         : package[@name='android.support.v4.widget']
         Replacing with: package[@name='androidx.slidingpanelayout.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.heifwriter/heifwriter/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.cardview/cardview/transforms/Metadata.xml
         Found         : package[@name='android.support.v7.cardview']
         Replacing with: package[@name='androidx.cardview']
         Found         : package[@name='android.support.v7.widget']
         Replacing with: package[@name='androidx.appcompat.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.exifinterface/exifinterface/transforms/Metadata.xml
         Found         : package[@name='android.support.media']
         Replacing with: package[@name='androidx.exifinterface.media']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.mediarouter/mediarouter/transforms/Metadata.xml
         Found         : package[@name='android.support.v4.content']
         Replacing with: package[@name='androidx.loader.content']
         Found         : package[@name='android.support.v7.media']
         Replacing with: package[@name='androidx.mediarouter.media']
         Found         : package[@name='android.support.v7.app']
         Replacing with: package[@name='androidx.appcompat.app']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.coordinatorlayout/coordinatorlayout/transforms/Metadata.xml
         Found         : package[@name='android.support.design.widget']
         Replacing with: package[@name='androidx.coordinatorlayout.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.documentfile/documentfile/transforms/Metadata.xml
         Found         : package[@name='android.support.v4.provider']
         Replacing with: package[@name='androidx.documentfile.provider']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.vectordrawable/vectordrawable/transforms/Metadata.xml
         Found         : package[@name='android.support.graphics.drawable']
         Replacing with: package[@name='androidx.vectordrawable.graphics.drawable']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.vectordrawable/vectordrawable-animated/transforms/Metadata.xml
         Found         : package[@name='android.support.graphics.drawable']
         Replacing with: package[@name='androidx.vectordrawable.graphics.drawable']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.media/media/transforms/Metadata.xml
         Found         : package[@name='android.support.v4.media.session']
         Replacing with: package[@name='androidx.media.session']
         Found         : package[@name='android.support.mediacompat']
         Replacing with: package[@name='androidx.media']
         Found         : package[@name='android.support.v4.media']
         Replacing with: package[@name='androidx.media']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.gridlayout/gridlayout/transforms/Metadata.xml
         Found         : package[@name='android.support.v7.gridlayout']
         Replacing with: package[@name='androidx.gridlayout']
         Found         : package[@name='android.support.v7.widget']
         Replacing with: package[@name='androidx.appcompat.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.lifecycle/lifecycle-livedata-core/transforms/Metadata.xml
         Found         : package[@name='android.arch.lifecycle']
         Replacing with: package[@name='androidx.lifecycle']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.lifecycle/lifecycle-extensions/transforms/Metadata.xml
         Found         : package[@name='android.arch.lifecycle']
         Replacing with: package[@name='androidx.lifecycle']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.lifecycle/lifecycle-service/transforms/Metadata.ParameterNames.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.lifecycle/lifecycle-service/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.lifecycle/lifecycle-process/transforms/Metadata.ParameterNames.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.lifecycle/lifecycle-process/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.lifecycle/lifecycle-common-java8/transforms/Metadata.xml
         Found         : package[@name='android.arch.lifecycle']
         Replacing with: package[@name='androidx.lifecycle']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.lifecycle/lifecycle-reactivestreams/transforms/Metadata.ParameterNames.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.lifecycle/lifecycle-reactivestreams/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.lifecycle/lifecycle-viewmodel/transforms/Metadata.xml
         Found         : package[@name='android.arch.lifecycle']
         Replacing with: package[@name='androidx.lifecycle']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.lifecycle/lifecycle-common/transforms/Metadata.xml
         Found         : package[@name='android.arch.lifecycle']
         Replacing with: package[@name='androidx.lifecycle']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.lifecycle/lifecycle-runtime/transforms/Metadata.xml
         Found         : package[@name='android.arch.lifecycle']
         Replacing with: package[@name='androidx.lifecycle']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.lifecycle/lifecycle-livedata/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.fragment/fragment/transforms/Metadata.xml
         Found         : package[@name='android.support.v4.app']
         Replacing with: package[@name='androidx.core.app']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.preference/preference/transforms/Metadata.xml
         Found         : package[@name='android.support.v14.preference']
         Replacing with: package[@name='androidx.preference']
         Found         : package[@name='android.support.v7.preference']
         Replacing with: package[@name='androidx.preference']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.recommendation/recommendation/transforms/Metadata.xml
         Found         : package[@name='android.support.v4.content']
         Replacing with: package[@name='androidx.loader.content']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.arch.core/runtime/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.arch.core/common/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.interpolator/interpolator/transforms/Metadata.xml
         Found         : package[@name='android.support.v4.view.animation']
         Replacing with: package[@name='androidx.core.view.animation']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.webkit/webkit/transforms/Metadata.ParameterNames.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.webkit/webkit/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.drawerlayout/drawerlayout/transforms/Metadata.xml
         Ambiguity for        : android.support.v4.widget
         Ambiguity fixed        : androidx.drawerlayout.widget
         Found         : package[@name='android.support.v4.widget']
         Replacing with: package[@name='androidx.drawerlayout.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.viewpager/viewpager/transforms/Metadata.xml
         Ambiguity for        : android.support.v4.view
         Ambiguity fixed        : androidx.viewpager.widget
         Found         : package[@name='android.support.v4.view']
         Replacing with: package[@name='androidx.viewpager.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.localbroadcastmanager/localbroadcastmanager/transforms/Metadata.ParameterNames.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.localbroadcastmanager/localbroadcastmanager/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.dynamicanimation/dynamicanimation/transforms/Metadata.xml
         Found         : package[@name='android.support.animation']
         Replacing with: package[@name='androidx.dynamicanimation.animation']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.cursoradapter/cursoradapter/transforms/Metadata.xml
         Ambiguity for        : android.support.v4.widget
         Ambiguity fixed        : androidx.cursoradapter.widget
         Found         : package[@name='android.support.v4.widget']
         Replacing with: package[@name='androidx.cursoradapter.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.browser/browser/transforms/Metadata.xml
         Found         : package[@name='android.support.customtabs']
         Replacing with: package[@name='androidx.browser.customtabs']
         Found         : package[@name='android.support.v4.content']
         Replacing with: package[@name='androidx.loader.content']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.appcompat/appcompat/transforms/Metadata.ParameterNames.xml
         Found         : package[@name='android.support.v7.widget']
         Replacing with: package[@name='androidx.appcompat.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.appcompat/appcompat/transforms/Metadata.xml
         Found         : package[@name='android.support.v7.graphics.drawable']
         Replacing with: package[@name='androidx.appcompat.graphics.drawable']
         Found         : package[@name='android.support.v7.appcompat']
         Replacing with: package[@name='androidx.appcompat']
         Found         : package[@name='android.support.v7.view.menu']
         Replacing with: package[@name='androidx.appcompat.view.menu']
         Found         : package[@name='android.support.v7.widget']
         Replacing with: package[@name='androidx.appcompat.widget']
         Found         : package[@name='android.support.v7.view']
         Replacing with: package[@name='androidx.appcompat.view']
         Found         : package[@name='android.support.v7.app']
         Replacing with: package[@name='androidx.appcompat.app']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.swiperefreshlayout/swiperefreshlayout/transforms/Metadata.xml
         Ambiguity for        : android.support.v4.widget
         Ambiguity fixed        : androidx.swiperefreshlayout.widget
         Found         : package[@name='android.support.v4.widget']
         Replacing with: package[@name='androidx.swiperefreshlayout.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.tvprovider/tvprovider/transforms/Metadata.xml
         Found         : package[@name='android.support.media.tv']
         Replacing with: package[@name='androidx.tvprovider.media.tv']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.leanback/leanback/transforms/Metadata.ParameterNames.xml
         Found         : package[@name='android.support.v17.leanback.widget']
         Replacing with: package[@name='androidx.leanback.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.leanback/leanback/transforms/Metadata.xml
         Found         : package[@name='android.support.v17.leanback.transition']
         Replacing with: package[@name='androidx.leanback.transition']
         Found         : package[@name='android.support.v17.leanback.widget']
         Replacing with: package[@name='androidx.leanback.widget']
         Found         : package[@name='android.support.v17.leanback.media']
         Replacing with: package[@name='androidx.leanback.media']
         Found         : package[@name='android.support.v17.leanback.app']
         Replacing with: package[@name='androidx.leanback.app']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.leanback/leanback-preference/transforms/Metadata.ParameterNames.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.leanback/leanback-preference/transforms/Metadata.xml
         Found         : package[@name='android.support.v17.internal.widget']
         Replacing with: package[@name='androidx.leanback.preference.internal']
         Found         : package[@name='android.support.v17.preference']
         Replacing with: package[@name='androidx.leanback.preference']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.annotation/annotation/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.collection/collection/transforms/Metadata.xml
         Found         : package[@name='android.support.v4.util']
         Replacing with: package[@name='androidx.core.util']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.print/print/transforms/Metadata.ParameterNames.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.print/print/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.wear/wear/transforms/Metadata.xml
         Found         : package[@name='android.support.wear.widget.drawer']
         Replacing with: package[@name='androidx.wear.widget.drawer']
         Found         : package[@name='android.support.wear.widget']
         Replacing with: package[@name='androidx.wear.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.transition/transition/transforms/Metadata.xml
         Found         : package[@name='android.support.transition']
         Replacing with: package[@name='androidx.transition']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.versionedparcelable/versionedparcelable/transforms/Metadata.ParameterNames.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.versionedparcelable/versionedparcelable/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.emoji/emoji/transforms/Metadata.xml
         Found         : package[@name='android.support.text.emoji']
         Replacing with: package[@name='androidx.emoji']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.emoji/emoji-bundled/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.emoji/emoji-appcompat/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.loader/loader/transforms/Metadata.xml
         Found         : package[@name='android.support.v4.content']
         Replacing with: package[@name='androidx.loader.content']
         Found         : package[@name='android.support.v4.app']
         Replacing with: package[@name='androidx.core.app']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/com.google.android.material/material/transforms/Metadata.ParameterNames.xml
         Found         : package[@name='android.support.design.widget']
         Replacing with: package[@name='androidx.coordinatorlayout.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/com.google.android.material/material/transforms/Metadata.xml
         Found         : package[@name='android.support.design.widget']
         Replacing with: package[@name='androidx.coordinatorlayout.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.recyclerview/recyclerview-selection/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.recyclerview/recyclerview/transforms/Metadata.RecyclerView.xml
         Found         : package[@name='android.support.v7.widget']
         Replacing with: package[@name='androidx.appcompat.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.recyclerview/recyclerview/transforms/Metadata.parameternames.xml
         Found         : package[@name='android.support.v7.widget']
         Replacing with: package[@name='androidx.appcompat.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.recyclerview/recyclerview/transforms/Metadata.xml
         Found         : package[@name='android.support.v7.recyclerview']
         Replacing with: package[@name='androidx.recyclerview']
         Found         : package[@name='android.support.v7.widget']
         Replacing with: package[@name='androidx.appcompat.widget']
         Found         : package[@name='android.support.v7.util']
         Replacing with: package[@name='androidx.recyclerview.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.percentlayout/percent/transforms/Metadata.generated.xml
         Found         : package[@name='android.support.percent']
         Replacing with: package[@name='androidx.percentlayout.widget']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.percentlayout/percent/transforms/Metadata.xml
         Found         : package[@name='android.support.v4.content']
         Replacing with: package[@name='androidx.loader.content']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.asynclayoutinflater/asynclayoutinflater/transforms/Metadata.xml
         Ambiguity for        : android.support.v4.view
Ambiguity not resolved for android.support.v4.view
         Ambiguity fixed        : androidx.customview.view
         Found         : package[@name='android.support.v4.view']
         Replacing with: package[@name='androidx.customview.view']
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.slice/slice-view/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.slice/slice-core/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.slice/slice-builders/transforms/Metadata.xml
    ../../../../X/AndroidSupportComponents-AndroidX-binderate/source/androidx.palette/palette/transforms/Metadata.xml
         Found         : package[@name='android.support.v7.graphics']
         Replacing with: package[@name='androidx.palette.graphics']

Press any key to continue...
```