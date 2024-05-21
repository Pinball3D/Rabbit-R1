package androidx.window.layout;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.window.core.Version;
import androidx.window.layout.ExtensionInterfaceCompat;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarInterface;
import androidx.window.sidecar.SidecarProvider;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import io.sentry.protocol.SentryStackFrame;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SidecarCompat.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0000\u0018\u0000 !2\u00020\u0001:\u0005!\"#$%B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0007\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\fH\u0007J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\fH\u0016J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\fH\u0016J\u0016\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\fJ\u0010\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\fH\u0002J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\fH\u0002J\b\u0010\u001f\u001a\u00020 H\u0017R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Landroidx/window/layout/SidecarCompat;", "Landroidx/window/layout/ExtensionInterfaceCompat;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "sidecar", "Landroidx/window/sidecar/SidecarInterface;", "sidecarAdapter", "Landroidx/window/layout/SidecarAdapter;", "(Landroidx/window/sidecar/SidecarInterface;Landroidx/window/layout/SidecarAdapter;)V", "componentCallbackMap", "", "Landroid/app/Activity;", "Landroid/content/ComponentCallbacks;", "extensionCallback", "Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;", "getSidecar", "()Landroidx/window/sidecar/SidecarInterface;", "windowListenerRegisteredContexts", "Landroid/os/IBinder;", "getWindowLayoutInfo", "Landroidx/window/layout/WindowLayoutInfo;", "activity", "onWindowLayoutChangeListenerAdded", "", "onWindowLayoutChangeListenerRemoved", "register", "windowToken", "registerConfigurationChangeListener", "setExtensionCallback", "unregisterComponentCallback", "validateExtensionInterface", "", "Companion", "DistinctElementCallback", "DistinctSidecarElementCallback", "FirstAttachAdapter", "TranslatingCallback", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SidecarCompat implements ExtensionInterfaceCompat {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "SidecarCompat";
    private final Map<Activity, ComponentCallbacks> componentCallbackMap;
    private ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallback;
    private final SidecarInterface sidecar;
    private final SidecarAdapter sidecarAdapter;
    private final Map<IBinder, Activity> windowListenerRegisteredContexts;

    public final SidecarInterface getSidecar() {
        return this.sidecar;
    }

    public SidecarCompat(SidecarInterface sidecarInterface, SidecarAdapter sidecarAdapter) {
        Intrinsics.checkNotNullParameter(sidecarAdapter, "sidecarAdapter");
        this.sidecar = sidecarInterface;
        this.sidecarAdapter = sidecarAdapter;
        this.windowListenerRegisteredContexts = new LinkedHashMap();
        this.componentCallbackMap = new LinkedHashMap();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SidecarCompat(Context context) {
        this(INSTANCE.getSidecarCompat$window_release(context), new SidecarAdapter(null, 1, null));
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // androidx.window.layout.ExtensionInterfaceCompat
    public void setExtensionCallback(ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallback) {
        Intrinsics.checkNotNullParameter(extensionCallback, "extensionCallback");
        this.extensionCallback = new DistinctElementCallback(extensionCallback);
        SidecarInterface sidecarInterface = this.sidecar;
        if (sidecarInterface == null) {
            return;
        }
        sidecarInterface.setSidecarCallback(new DistinctSidecarElementCallback(this.sidecarAdapter, new TranslatingCallback(this)));
    }

    public final WindowLayoutInfo getWindowLayoutInfo(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        IBinder activityWindowToken$window_release = INSTANCE.getActivityWindowToken$window_release(activity);
        if (activityWindowToken$window_release == null) {
            return new WindowLayoutInfo(CollectionsKt.emptyList());
        }
        SidecarInterface sidecarInterface = this.sidecar;
        SidecarWindowLayoutInfo windowLayoutInfo = sidecarInterface == null ? null : sidecarInterface.getWindowLayoutInfo(activityWindowToken$window_release);
        SidecarAdapter sidecarAdapter = this.sidecarAdapter;
        SidecarInterface sidecarInterface2 = this.sidecar;
        SidecarDeviceState deviceState = sidecarInterface2 != null ? sidecarInterface2.getDeviceState() : null;
        if (deviceState == null) {
            deviceState = new SidecarDeviceState();
        }
        return sidecarAdapter.translate(windowLayoutInfo, deviceState);
    }

    @Override // androidx.window.layout.ExtensionInterfaceCompat
    public void onWindowLayoutChangeListenerAdded(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        IBinder activityWindowToken$window_release = INSTANCE.getActivityWindowToken$window_release(activity);
        if (activityWindowToken$window_release != null) {
            register(activityWindowToken$window_release, activity);
        } else {
            activity.getWindow().getDecorView().addOnAttachStateChangeListener(new FirstAttachAdapter(this, activity));
        }
    }

    public final void register(IBinder windowToken, Activity activity) {
        SidecarInterface sidecarInterface;
        Intrinsics.checkNotNullParameter(windowToken, "windowToken");
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.windowListenerRegisteredContexts.put(windowToken, activity);
        SidecarInterface sidecarInterface2 = this.sidecar;
        if (sidecarInterface2 != null) {
            sidecarInterface2.onWindowLayoutChangeListenerAdded(windowToken);
        }
        if (this.windowListenerRegisteredContexts.size() == 1 && (sidecarInterface = this.sidecar) != null) {
            sidecarInterface.onDeviceStateListenersChanged(false);
        }
        ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallbackInterface = this.extensionCallback;
        if (extensionCallbackInterface != null) {
            extensionCallbackInterface.onWindowLayoutChanged(activity, getWindowLayoutInfo(activity));
        }
        registerConfigurationChangeListener(activity);
    }

    private final void registerConfigurationChangeListener(final Activity activity) {
        if (this.componentCallbackMap.get(activity) == null) {
            ComponentCallbacks componentCallbacks = new ComponentCallbacks() { // from class: androidx.window.layout.SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1
                @Override // android.content.ComponentCallbacks
                public void onLowMemory() {
                }

                @Override // android.content.ComponentCallbacks
                public void onConfigurationChanged(Configuration newConfig) {
                    Intrinsics.checkNotNullParameter(newConfig, "newConfig");
                    ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallbackInterface = SidecarCompat.this.extensionCallback;
                    if (extensionCallbackInterface == null) {
                        return;
                    }
                    Activity activity2 = activity;
                    extensionCallbackInterface.onWindowLayoutChanged(activity2, SidecarCompat.this.getWindowLayoutInfo(activity2));
                }
            };
            this.componentCallbackMap.put(activity, componentCallbacks);
            activity.registerComponentCallbacks(componentCallbacks);
        }
    }

    @Override // androidx.window.layout.ExtensionInterfaceCompat
    public void onWindowLayoutChangeListenerRemoved(Activity activity) {
        SidecarInterface sidecarInterface;
        Intrinsics.checkNotNullParameter(activity, "activity");
        IBinder activityWindowToken$window_release = INSTANCE.getActivityWindowToken$window_release(activity);
        if (activityWindowToken$window_release == null) {
            return;
        }
        SidecarInterface sidecarInterface2 = this.sidecar;
        if (sidecarInterface2 != null) {
            sidecarInterface2.onWindowLayoutChangeListenerRemoved(activityWindowToken$window_release);
        }
        unregisterComponentCallback(activity);
        boolean z = this.windowListenerRegisteredContexts.size() == 1;
        this.windowListenerRegisteredContexts.remove(activityWindowToken$window_release);
        if (!z || (sidecarInterface = this.sidecar) == null) {
            return;
        }
        sidecarInterface.onDeviceStateListenersChanged(true);
    }

    private final void unregisterComponentCallback(Activity activity) {
        activity.unregisterComponentCallbacks(this.componentCallbackMap.get(activity));
        this.componentCallbackMap.remove(activity);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c A[Catch: all -> 0x019c, TryCatch #1 {all -> 0x019c, blocks: (B:3:0x0001, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:21:0x005d, B:23:0x0065, B:28:0x0086, B:30:0x008e, B:35:0x00ae, B:37:0x00b6, B:40:0x00bc, B:41:0x00f2, B:43:0x010e, B:48:0x0111, B:50:0x0142, B:52:0x014c, B:53:0x0153, B:54:0x0154, B:55:0x015b, B:57:0x00bf, B:59:0x00ea, B:61:0x015c, B:62:0x0163, B:63:0x0164, B:64:0x016b, B:65:0x016c, B:66:0x0177, B:67:0x00aa, B:68:0x0094, B:71:0x009b, B:72:0x0178, B:73:0x0183, B:74:0x0082, B:75:0x006b, B:78:0x0072, B:79:0x0184, B:80:0x018f, B:81:0x0059, B:82:0x0042, B:85:0x0049, B:86:0x0039, B:87:0x0031, B:88:0x0190, B:89:0x019b, B:90:0x0020, B:91:0x0009, B:94:0x0010), top: B:2:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0065 A[Catch: all -> 0x019c, TryCatch #1 {all -> 0x019c, blocks: (B:3:0x0001, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:21:0x005d, B:23:0x0065, B:28:0x0086, B:30:0x008e, B:35:0x00ae, B:37:0x00b6, B:40:0x00bc, B:41:0x00f2, B:43:0x010e, B:48:0x0111, B:50:0x0142, B:52:0x014c, B:53:0x0153, B:54:0x0154, B:55:0x015b, B:57:0x00bf, B:59:0x00ea, B:61:0x015c, B:62:0x0163, B:63:0x0164, B:64:0x016b, B:65:0x016c, B:66:0x0177, B:67:0x00aa, B:68:0x0094, B:71:0x009b, B:72:0x0178, B:73:0x0183, B:74:0x0082, B:75:0x006b, B:78:0x0072, B:79:0x0184, B:80:0x018f, B:81:0x0059, B:82:0x0042, B:85:0x0049, B:86:0x0039, B:87:0x0031, B:88:0x0190, B:89:0x019b, B:90:0x0020, B:91:0x0009, B:94:0x0010), top: B:2:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008e A[Catch: all -> 0x019c, TryCatch #1 {all -> 0x019c, blocks: (B:3:0x0001, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:21:0x005d, B:23:0x0065, B:28:0x0086, B:30:0x008e, B:35:0x00ae, B:37:0x00b6, B:40:0x00bc, B:41:0x00f2, B:43:0x010e, B:48:0x0111, B:50:0x0142, B:52:0x014c, B:53:0x0153, B:54:0x0154, B:55:0x015b, B:57:0x00bf, B:59:0x00ea, B:61:0x015c, B:62:0x0163, B:63:0x0164, B:64:0x016b, B:65:0x016c, B:66:0x0177, B:67:0x00aa, B:68:0x0094, B:71:0x009b, B:72:0x0178, B:73:0x0183, B:74:0x0082, B:75:0x006b, B:78:0x0072, B:79:0x0184, B:80:0x018f, B:81:0x0059, B:82:0x0042, B:85:0x0049, B:86:0x0039, B:87:0x0031, B:88:0x0190, B:89:0x019b, B:90:0x0020, B:91:0x0009, B:94:0x0010), top: B:2:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b6 A[Catch: all -> 0x019c, TRY_LEAVE, TryCatch #1 {all -> 0x019c, blocks: (B:3:0x0001, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:21:0x005d, B:23:0x0065, B:28:0x0086, B:30:0x008e, B:35:0x00ae, B:37:0x00b6, B:40:0x00bc, B:41:0x00f2, B:43:0x010e, B:48:0x0111, B:50:0x0142, B:52:0x014c, B:53:0x0153, B:54:0x0154, B:55:0x015b, B:57:0x00bf, B:59:0x00ea, B:61:0x015c, B:62:0x0163, B:63:0x0164, B:64:0x016b, B:65:0x016c, B:66:0x0177, B:67:0x00aa, B:68:0x0094, B:71:0x009b, B:72:0x0178, B:73:0x0183, B:74:0x0082, B:75:0x006b, B:78:0x0072, B:79:0x0184, B:80:0x018f, B:81:0x0059, B:82:0x0042, B:85:0x0049, B:86:0x0039, B:87:0x0031, B:88:0x0190, B:89:0x019b, B:90:0x0020, B:91:0x0009, B:94:0x0010), top: B:2:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x016c A[Catch: all -> 0x019c, TryCatch #1 {all -> 0x019c, blocks: (B:3:0x0001, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:21:0x005d, B:23:0x0065, B:28:0x0086, B:30:0x008e, B:35:0x00ae, B:37:0x00b6, B:40:0x00bc, B:41:0x00f2, B:43:0x010e, B:48:0x0111, B:50:0x0142, B:52:0x014c, B:53:0x0153, B:54:0x0154, B:55:0x015b, B:57:0x00bf, B:59:0x00ea, B:61:0x015c, B:62:0x0163, B:63:0x0164, B:64:0x016b, B:65:0x016c, B:66:0x0177, B:67:0x00aa, B:68:0x0094, B:71:0x009b, B:72:0x0178, B:73:0x0183, B:74:0x0082, B:75:0x006b, B:78:0x0072, B:79:0x0184, B:80:0x018f, B:81:0x0059, B:82:0x0042, B:85:0x0049, B:86:0x0039, B:87:0x0031, B:88:0x0190, B:89:0x019b, B:90:0x0020, B:91:0x0009, B:94:0x0010), top: B:2:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00aa A[Catch: all -> 0x019c, TryCatch #1 {all -> 0x019c, blocks: (B:3:0x0001, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:21:0x005d, B:23:0x0065, B:28:0x0086, B:30:0x008e, B:35:0x00ae, B:37:0x00b6, B:40:0x00bc, B:41:0x00f2, B:43:0x010e, B:48:0x0111, B:50:0x0142, B:52:0x014c, B:53:0x0153, B:54:0x0154, B:55:0x015b, B:57:0x00bf, B:59:0x00ea, B:61:0x015c, B:62:0x0163, B:63:0x0164, B:64:0x016b, B:65:0x016c, B:66:0x0177, B:67:0x00aa, B:68:0x0094, B:71:0x009b, B:72:0x0178, B:73:0x0183, B:74:0x0082, B:75:0x006b, B:78:0x0072, B:79:0x0184, B:80:0x018f, B:81:0x0059, B:82:0x0042, B:85:0x0049, B:86:0x0039, B:87:0x0031, B:88:0x0190, B:89:0x019b, B:90:0x0020, B:91:0x0009, B:94:0x0010), top: B:2:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0178 A[Catch: all -> 0x019c, TryCatch #1 {all -> 0x019c, blocks: (B:3:0x0001, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:21:0x005d, B:23:0x0065, B:28:0x0086, B:30:0x008e, B:35:0x00ae, B:37:0x00b6, B:40:0x00bc, B:41:0x00f2, B:43:0x010e, B:48:0x0111, B:50:0x0142, B:52:0x014c, B:53:0x0153, B:54:0x0154, B:55:0x015b, B:57:0x00bf, B:59:0x00ea, B:61:0x015c, B:62:0x0163, B:63:0x0164, B:64:0x016b, B:65:0x016c, B:66:0x0177, B:67:0x00aa, B:68:0x0094, B:71:0x009b, B:72:0x0178, B:73:0x0183, B:74:0x0082, B:75:0x006b, B:78:0x0072, B:79:0x0184, B:80:0x018f, B:81:0x0059, B:82:0x0042, B:85:0x0049, B:86:0x0039, B:87:0x0031, B:88:0x0190, B:89:0x019b, B:90:0x0020, B:91:0x0009, B:94:0x0010), top: B:2:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0082 A[Catch: all -> 0x019c, TryCatch #1 {all -> 0x019c, blocks: (B:3:0x0001, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:21:0x005d, B:23:0x0065, B:28:0x0086, B:30:0x008e, B:35:0x00ae, B:37:0x00b6, B:40:0x00bc, B:41:0x00f2, B:43:0x010e, B:48:0x0111, B:50:0x0142, B:52:0x014c, B:53:0x0153, B:54:0x0154, B:55:0x015b, B:57:0x00bf, B:59:0x00ea, B:61:0x015c, B:62:0x0163, B:63:0x0164, B:64:0x016b, B:65:0x016c, B:66:0x0177, B:67:0x00aa, B:68:0x0094, B:71:0x009b, B:72:0x0178, B:73:0x0183, B:74:0x0082, B:75:0x006b, B:78:0x0072, B:79:0x0184, B:80:0x018f, B:81:0x0059, B:82:0x0042, B:85:0x0049, B:86:0x0039, B:87:0x0031, B:88:0x0190, B:89:0x019b, B:90:0x0020, B:91:0x0009, B:94:0x0010), top: B:2:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0184 A[Catch: all -> 0x019c, TryCatch #1 {all -> 0x019c, blocks: (B:3:0x0001, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:21:0x005d, B:23:0x0065, B:28:0x0086, B:30:0x008e, B:35:0x00ae, B:37:0x00b6, B:40:0x00bc, B:41:0x00f2, B:43:0x010e, B:48:0x0111, B:50:0x0142, B:52:0x014c, B:53:0x0153, B:54:0x0154, B:55:0x015b, B:57:0x00bf, B:59:0x00ea, B:61:0x015c, B:62:0x0163, B:63:0x0164, B:64:0x016b, B:65:0x016c, B:66:0x0177, B:67:0x00aa, B:68:0x0094, B:71:0x009b, B:72:0x0178, B:73:0x0183, B:74:0x0082, B:75:0x006b, B:78:0x0072, B:79:0x0184, B:80:0x018f, B:81:0x0059, B:82:0x0042, B:85:0x0049, B:86:0x0039, B:87:0x0031, B:88:0x0190, B:89:0x019b, B:90:0x0020, B:91:0x0009, B:94:0x0010), top: B:2:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0059 A[Catch: all -> 0x019c, TryCatch #1 {all -> 0x019c, blocks: (B:3:0x0001, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:21:0x005d, B:23:0x0065, B:28:0x0086, B:30:0x008e, B:35:0x00ae, B:37:0x00b6, B:40:0x00bc, B:41:0x00f2, B:43:0x010e, B:48:0x0111, B:50:0x0142, B:52:0x014c, B:53:0x0153, B:54:0x0154, B:55:0x015b, B:57:0x00bf, B:59:0x00ea, B:61:0x015c, B:62:0x0163, B:63:0x0164, B:64:0x016b, B:65:0x016c, B:66:0x0177, B:67:0x00aa, B:68:0x0094, B:71:0x009b, B:72:0x0178, B:73:0x0183, B:74:0x0082, B:75:0x006b, B:78:0x0072, B:79:0x0184, B:80:0x018f, B:81:0x0059, B:82:0x0042, B:85:0x0049, B:86:0x0039, B:87:0x0031, B:88:0x0190, B:89:0x019b, B:90:0x0020, B:91:0x0009, B:94:0x0010), top: B:2:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0190 A[Catch: all -> 0x019c, TryCatch #1 {all -> 0x019c, blocks: (B:3:0x0001, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:21:0x005d, B:23:0x0065, B:28:0x0086, B:30:0x008e, B:35:0x00ae, B:37:0x00b6, B:40:0x00bc, B:41:0x00f2, B:43:0x010e, B:48:0x0111, B:50:0x0142, B:52:0x014c, B:53:0x0153, B:54:0x0154, B:55:0x015b, B:57:0x00bf, B:59:0x00ea, B:61:0x015c, B:62:0x0163, B:63:0x0164, B:64:0x016b, B:65:0x016c, B:66:0x0177, B:67:0x00aa, B:68:0x0094, B:71:0x009b, B:72:0x0178, B:73:0x0183, B:74:0x0082, B:75:0x006b, B:78:0x0072, B:79:0x0184, B:80:0x018f, B:81:0x0059, B:82:0x0042, B:85:0x0049, B:86:0x0039, B:87:0x0031, B:88:0x0190, B:89:0x019b, B:90:0x0020, B:91:0x0009, B:94:0x0010), top: B:2:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0020 A[Catch: all -> 0x019c, TryCatch #1 {all -> 0x019c, blocks: (B:3:0x0001, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:21:0x005d, B:23:0x0065, B:28:0x0086, B:30:0x008e, B:35:0x00ae, B:37:0x00b6, B:40:0x00bc, B:41:0x00f2, B:43:0x010e, B:48:0x0111, B:50:0x0142, B:52:0x014c, B:53:0x0153, B:54:0x0154, B:55:0x015b, B:57:0x00bf, B:59:0x00ea, B:61:0x015c, B:62:0x0163, B:63:0x0164, B:64:0x016b, B:65:0x016c, B:66:0x0177, B:67:0x00aa, B:68:0x0094, B:71:0x009b, B:72:0x0178, B:73:0x0183, B:74:0x0082, B:75:0x006b, B:78:0x0072, B:79:0x0184, B:80:0x018f, B:81:0x0059, B:82:0x0042, B:85:0x0049, B:86:0x0039, B:87:0x0031, B:88:0x0190, B:89:0x019b, B:90:0x0020, B:91:0x0009, B:94:0x0010), top: B:2:0x0001, inners: #0, #2 }] */
    @Override // androidx.window.layout.ExtensionInterfaceCompat
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean validateExtensionInterface() {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.window.layout.SidecarCompat.validateExtensionInterface():boolean");
    }

    /* compiled from: SidecarCompat.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u001c\u0010\u0007\u001a\u0010\u0012\f\u0012\n \t*\u0004\u0018\u00010\u00050\u00050\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/window/layout/SidecarCompat$FirstAttachAdapter;", "Landroid/view/View$OnAttachStateChangeListener;", "sidecarCompat", "Landroidx/window/layout/SidecarCompat;", "activity", "Landroid/app/Activity;", "(Landroidx/window/layout/SidecarCompat;Landroid/app/Activity;)V", "activityWeakReference", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "onViewAttachedToWindow", "", "view", "Landroid/view/View;", "onViewDetachedFromWindow", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    private static final class FirstAttachAdapter implements View.OnAttachStateChangeListener {
        private final WeakReference<Activity> activityWeakReference;
        private final SidecarCompat sidecarCompat;

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
        }

        public FirstAttachAdapter(SidecarCompat sidecarCompat, Activity activity) {
            Intrinsics.checkNotNullParameter(sidecarCompat, "sidecarCompat");
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.sidecarCompat = sidecarCompat;
            this.activityWeakReference = new WeakReference<>(activity);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            view.removeOnAttachStateChangeListener(this);
            Activity activity = this.activityWeakReference.get();
            IBinder activityWindowToken$window_release = SidecarCompat.INSTANCE.getActivityWindowToken$window_release(activity);
            if (activity == null || activityWindowToken$window_release == null) {
                return;
            }
            this.sidecarCompat.register(activityWindowToken$window_release, activity);
        }
    }

    /* compiled from: SidecarCompat.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0017J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0017¨\u0006\f"}, d2 = {"Landroidx/window/layout/SidecarCompat$TranslatingCallback;", "Landroidx/window/sidecar/SidecarInterface$SidecarCallback;", "(Landroidx/window/layout/SidecarCompat;)V", "onDeviceStateChanged", "", "newDeviceState", "Landroidx/window/sidecar/SidecarDeviceState;", "onWindowLayoutChanged", "windowToken", "Landroid/os/IBinder;", "newLayout", "Landroidx/window/sidecar/SidecarWindowLayoutInfo;", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public final class TranslatingCallback implements SidecarInterface.SidecarCallback {
        final /* synthetic */ SidecarCompat this$0;

        public TranslatingCallback(SidecarCompat this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
        }

        public void onDeviceStateChanged(SidecarDeviceState newDeviceState) {
            SidecarInterface sidecar;
            Intrinsics.checkNotNullParameter(newDeviceState, "newDeviceState");
            Collection<Activity> values = this.this$0.windowListenerRegisteredContexts.values();
            SidecarCompat sidecarCompat = this.this$0;
            for (Activity activity : values) {
                IBinder activityWindowToken$window_release = SidecarCompat.INSTANCE.getActivityWindowToken$window_release(activity);
                SidecarWindowLayoutInfo sidecarWindowLayoutInfo = null;
                if (activityWindowToken$window_release != null && (sidecar = sidecarCompat.getSidecar()) != null) {
                    sidecarWindowLayoutInfo = sidecar.getWindowLayoutInfo(activityWindowToken$window_release);
                }
                ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallbackInterface = sidecarCompat.extensionCallback;
                if (extensionCallbackInterface != null) {
                    extensionCallbackInterface.onWindowLayoutChanged(activity, sidecarCompat.sidecarAdapter.translate(sidecarWindowLayoutInfo, newDeviceState));
                }
            }
        }

        public void onWindowLayoutChanged(IBinder windowToken, SidecarWindowLayoutInfo newLayout) {
            Intrinsics.checkNotNullParameter(windowToken, "windowToken");
            Intrinsics.checkNotNullParameter(newLayout, "newLayout");
            Activity activity = (Activity) this.this$0.windowListenerRegisteredContexts.get(windowToken);
            if (activity != null) {
                SidecarAdapter sidecarAdapter = this.this$0.sidecarAdapter;
                SidecarInterface sidecar = this.this$0.getSidecar();
                SidecarDeviceState deviceState = sidecar == null ? null : sidecar.getDeviceState();
                if (deviceState == null) {
                    deviceState = new SidecarDeviceState();
                }
                WindowLayoutInfo translate = sidecarAdapter.translate(newLayout, deviceState);
                ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallbackInterface = this.this$0.extensionCallback;
                if (extensionCallbackInterface == null) {
                    return;
                }
                extensionCallbackInterface.onWindowLayoutChanged(activity, translate);
                return;
            }
            Log.w(SidecarCompat.TAG, "Unable to resolve activity from window token. Missing a call to #onWindowLayoutChangeListenerAdded()?");
        }
    }

    /* compiled from: SidecarCompat.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0007H\u0016R\u001c\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/window/layout/SidecarCompat$DistinctElementCallback;", "Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;", "callbackInterface", "(Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V", "activityWindowLayoutInfo", "Ljava/util/WeakHashMap;", "Landroid/app/Activity;", "Landroidx/window/layout/WindowLayoutInfo;", SentryStackFrame.JsonKeys.LOCK, "Ljava/util/concurrent/locks/ReentrantLock;", "onWindowLayoutChanged", "", "activity", "newLayout", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    private static final class DistinctElementCallback implements ExtensionInterfaceCompat.ExtensionCallbackInterface {
        private final WeakHashMap<Activity, WindowLayoutInfo> activityWindowLayoutInfo;
        private final ExtensionInterfaceCompat.ExtensionCallbackInterface callbackInterface;
        private final ReentrantLock lock;

        public DistinctElementCallback(ExtensionInterfaceCompat.ExtensionCallbackInterface callbackInterface) {
            Intrinsics.checkNotNullParameter(callbackInterface, "callbackInterface");
            this.callbackInterface = callbackInterface;
            this.lock = new ReentrantLock();
            this.activityWindowLayoutInfo = new WeakHashMap<>();
        }

        @Override // androidx.window.layout.ExtensionInterfaceCompat.ExtensionCallbackInterface
        public void onWindowLayoutChanged(Activity activity, WindowLayoutInfo newLayout) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(newLayout, "newLayout");
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (Intrinsics.areEqual(newLayout, this.activityWindowLayoutInfo.get(activity))) {
                    return;
                }
                this.activityWindowLayoutInfo.put(activity, newLayout);
                reentrantLock.unlock();
                this.callbackInterface.onWindowLayoutChanged(activity, newLayout);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    /* compiled from: SidecarCompat.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0002\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\u0018\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b8\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;", "Landroidx/window/sidecar/SidecarInterface$SidecarCallback;", "sidecarAdapter", "Landroidx/window/layout/SidecarAdapter;", "callbackInterface", "(Landroidx/window/layout/SidecarAdapter;Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V", "lastDeviceState", "Landroidx/window/sidecar/SidecarDeviceState;", SentryStackFrame.JsonKeys.LOCK, "Ljava/util/concurrent/locks/ReentrantLock;", "mActivityWindowLayoutInfo", "Ljava/util/WeakHashMap;", "Landroid/os/IBinder;", "Landroidx/window/sidecar/SidecarWindowLayoutInfo;", "onDeviceStateChanged", "", "newDeviceState", "onWindowLayoutChanged", "token", "newLayout", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    private static final class DistinctSidecarElementCallback implements SidecarInterface.SidecarCallback {
        private final SidecarInterface.SidecarCallback callbackInterface;
        private SidecarDeviceState lastDeviceState;
        private final ReentrantLock lock;
        private final WeakHashMap<IBinder, SidecarWindowLayoutInfo> mActivityWindowLayoutInfo;
        private final SidecarAdapter sidecarAdapter;

        public DistinctSidecarElementCallback(SidecarAdapter sidecarAdapter, SidecarInterface.SidecarCallback callbackInterface) {
            Intrinsics.checkNotNullParameter(sidecarAdapter, "sidecarAdapter");
            Intrinsics.checkNotNullParameter(callbackInterface, "callbackInterface");
            this.sidecarAdapter = sidecarAdapter;
            this.callbackInterface = callbackInterface;
            this.lock = new ReentrantLock();
            this.mActivityWindowLayoutInfo = new WeakHashMap<>();
        }

        public void onDeviceStateChanged(SidecarDeviceState newDeviceState) {
            Intrinsics.checkNotNullParameter(newDeviceState, "newDeviceState");
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (this.sidecarAdapter.isEqualSidecarDeviceState(this.lastDeviceState, newDeviceState)) {
                    return;
                }
                this.lastDeviceState = newDeviceState;
                this.callbackInterface.onDeviceStateChanged(newDeviceState);
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }

        public void onWindowLayoutChanged(IBinder token, SidecarWindowLayoutInfo newLayout) {
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(newLayout, "newLayout");
            synchronized (this.lock) {
                if (this.sidecarAdapter.isEqualSidecarWindowLayoutInfo(this.mActivityWindowLayoutInfo.get(token), newLayout)) {
                    return;
                }
                this.mActivityWindowLayoutInfo.put(token, newLayout);
                this.callbackInterface.onWindowLayoutChanged(token, newLayout);
            }
        }
    }

    /* compiled from: SidecarCompat.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0019\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0000¢\u0006\u0002\b\rJ\u0017\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Landroidx/window/layout/SidecarCompat$Companion;", "", "()V", "TAG", "", "sidecarVersion", "Landroidx/window/core/Version;", "getSidecarVersion", "()Landroidx/window/core/Version;", "getActivityWindowToken", "Landroid/os/IBinder;", "activity", "Landroid/app/Activity;", "getActivityWindowToken$window_release", "getSidecarCompat", "Landroidx/window/sidecar/SidecarInterface;", "context", "Landroid/content/Context;", "getSidecarCompat$window_release", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Version getSidecarVersion() {
            try {
                String apiVersion = SidecarProvider.getApiVersion();
                if (TextUtils.isEmpty(apiVersion)) {
                    return null;
                }
                return Version.INSTANCE.parse(apiVersion);
            } catch (NoClassDefFoundError unused) {
                return null;
            } catch (UnsupportedOperationException unused2) {
                return null;
            }
        }

        public final SidecarInterface getSidecarCompat$window_release(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return SidecarProvider.getSidecarImpl(context.getApplicationContext());
        }

        public final IBinder getActivityWindowToken$window_release(Activity activity) {
            Window window;
            WindowManager.LayoutParams attributes;
            if (activity == null || (window = activity.getWindow()) == null || (attributes = window.getAttributes()) == null) {
                return null;
            }
            return attributes.token;
        }
    }
}
