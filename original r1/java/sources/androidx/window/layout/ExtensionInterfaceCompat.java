package androidx.window.layout;

import android.app.Activity;
import kotlin.Metadata;

/* compiled from: ExtensionInterfaceCompat.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001:\u0001\fJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u000bH&¨\u0006\r"}, d2 = {"Landroidx/window/layout/ExtensionInterfaceCompat;", "", "onWindowLayoutChangeListenerAdded", "", "activity", "Landroid/app/Activity;", "onWindowLayoutChangeListenerRemoved", "setExtensionCallback", "extensionCallback", "Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;", "validateExtensionInterface", "", "ExtensionCallbackInterface", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface ExtensionInterfaceCompat {

    /* compiled from: ExtensionInterfaceCompat.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;", "", "onWindowLayoutChanged", "", "activity", "Landroid/app/Activity;", "newLayout", "Landroidx/window/layout/WindowLayoutInfo;", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public interface ExtensionCallbackInterface {
        void onWindowLayoutChanged(Activity activity, WindowLayoutInfo newLayout);
    }

    void onWindowLayoutChangeListenerAdded(Activity activity);

    void onWindowLayoutChangeListenerRemoved(Activity activity);

    void setExtensionCallback(ExtensionCallbackInterface extensionCallback);

    boolean validateExtensionInterface();
}
