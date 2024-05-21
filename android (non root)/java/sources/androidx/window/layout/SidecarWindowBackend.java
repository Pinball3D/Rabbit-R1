package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.core.Version;
import androidx.window.layout.ExtensionInterfaceCompat;
import androidx.window.layout.SidecarWindowBackend;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SidecarWindowBackend.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0003\u001c\u001d\u001eB\u0011\b\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0003J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J&\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016J\u0016\u0010\u001b\u001a\u00020\u00102\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004R\"\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u001f"}, d2 = {"Landroidx/window/layout/SidecarWindowBackend;", "Landroidx/window/layout/WindowBackend;", "windowExtension", "Landroidx/window/layout/ExtensionInterfaceCompat;", "(Landroidx/window/layout/ExtensionInterfaceCompat;)V", "getWindowExtension", "()Landroidx/window/layout/ExtensionInterfaceCompat;", "setWindowExtension", "windowLayoutChangeCallbacks", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;", "getWindowLayoutChangeCallbacks$annotations", "()V", "getWindowLayoutChangeCallbacks", "()Ljava/util/concurrent/CopyOnWriteArrayList;", "callbackRemovedForActivity", "", "activity", "Landroid/app/Activity;", "isActivityRegistered", "", "registerLayoutChangeCallback", "executor", "Ljava/util/concurrent/Executor;", "callback", "Landroidx/core/util/Consumer;", "Landroidx/window/layout/WindowLayoutInfo;", "unregisterLayoutChangeCallback", "Companion", "ExtensionListenerImpl", "WindowLayoutChangeCallbackWrapper", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SidecarWindowBackend implements WindowBackend {
    public static final boolean DEBUG = false;
    private static final String TAG = "WindowServer";
    private static volatile SidecarWindowBackend globalInstance;
    private ExtensionInterfaceCompat windowExtension;
    private final CopyOnWriteArrayList<WindowLayoutChangeCallbackWrapper> windowLayoutChangeCallbacks = new CopyOnWriteArrayList<>();

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ReentrantLock globalLock = new ReentrantLock();

    public static /* synthetic */ void getWindowLayoutChangeCallbacks$annotations() {
    }

    public final ExtensionInterfaceCompat getWindowExtension() {
        return this.windowExtension;
    }

    public final CopyOnWriteArrayList<WindowLayoutChangeCallbackWrapper> getWindowLayoutChangeCallbacks() {
        return this.windowLayoutChangeCallbacks;
    }

    public final void setWindowExtension(ExtensionInterfaceCompat extensionInterfaceCompat) {
        this.windowExtension = extensionInterfaceCompat;
    }

    public SidecarWindowBackend(ExtensionInterfaceCompat extensionInterfaceCompat) {
        this.windowExtension = extensionInterfaceCompat;
        ExtensionInterfaceCompat extensionInterfaceCompat2 = this.windowExtension;
        if (extensionInterfaceCompat2 == null) {
            return;
        }
        extensionInterfaceCompat2.setExtensionCallback(new ExtensionListenerImpl(this));
    }

    @Override // androidx.window.layout.WindowBackend
    public void registerLayoutChangeCallback(Activity activity, Executor executor, Consumer<WindowLayoutInfo> callback) {
        WindowLayoutInfo windowLayoutInfo;
        Object obj;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            ExtensionInterfaceCompat windowExtension = getWindowExtension();
            if (windowExtension == null) {
                callback.accept(new WindowLayoutInfo(CollectionsKt.emptyList()));
                return;
            }
            boolean isActivityRegistered = isActivityRegistered(activity);
            WindowLayoutChangeCallbackWrapper windowLayoutChangeCallbackWrapper = new WindowLayoutChangeCallbackWrapper(activity, executor, callback);
            getWindowLayoutChangeCallbacks().add(windowLayoutChangeCallbackWrapper);
            if (!isActivityRegistered) {
                windowExtension.onWindowLayoutChangeListenerAdded(activity);
            } else {
                Iterator<T> it = getWindowLayoutChangeCallbacks().iterator();
                while (true) {
                    windowLayoutInfo = null;
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    } else {
                        obj = it.next();
                        if (Intrinsics.areEqual(activity, ((WindowLayoutChangeCallbackWrapper) obj).getActivity())) {
                            break;
                        }
                    }
                }
                WindowLayoutChangeCallbackWrapper windowLayoutChangeCallbackWrapper2 = (WindowLayoutChangeCallbackWrapper) obj;
                if (windowLayoutChangeCallbackWrapper2 != null) {
                    windowLayoutInfo = windowLayoutChangeCallbackWrapper2.getLastInfo();
                }
                if (windowLayoutInfo != null) {
                    windowLayoutChangeCallbackWrapper.accept(windowLayoutInfo);
                }
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    private final boolean isActivityRegistered(Activity activity) {
        CopyOnWriteArrayList<WindowLayoutChangeCallbackWrapper> copyOnWriteArrayList = this.windowLayoutChangeCallbacks;
        if ((copyOnWriteArrayList instanceof Collection) && copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator<T> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(((WindowLayoutChangeCallbackWrapper) it.next()).getActivity(), activity)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.window.layout.WindowBackend
    public void unregisterLayoutChangeCallback(Consumer<WindowLayoutInfo> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        synchronized (globalLock) {
            if (getWindowExtension() == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<WindowLayoutChangeCallbackWrapper> it = getWindowLayoutChangeCallbacks().iterator();
            while (it.hasNext()) {
                WindowLayoutChangeCallbackWrapper callbackWrapper = it.next();
                if (callbackWrapper.getCallback() == callback) {
                    Intrinsics.checkNotNullExpressionValue(callbackWrapper, "callbackWrapper");
                    arrayList.add(callbackWrapper);
                }
            }
            getWindowLayoutChangeCallbacks().removeAll(arrayList);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                callbackRemovedForActivity(((WindowLayoutChangeCallbackWrapper) it2.next()).getActivity());
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void callbackRemovedForActivity(Activity activity) {
        CopyOnWriteArrayList<WindowLayoutChangeCallbackWrapper> copyOnWriteArrayList = this.windowLayoutChangeCallbacks;
        if (!(copyOnWriteArrayList instanceof Collection) || !copyOnWriteArrayList.isEmpty()) {
            Iterator<T> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((WindowLayoutChangeCallbackWrapper) it.next()).getActivity(), activity)) {
                    return;
                }
            }
        }
        ExtensionInterfaceCompat extensionInterfaceCompat = this.windowExtension;
        if (extensionInterfaceCompat == null) {
            return;
        }
        extensionInterfaceCompat.onWindowLayoutChangeListenerRemoved(activity);
    }

    /* compiled from: SidecarWindowBackend.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0081\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0017¨\u0006\t"}, d2 = {"Landroidx/window/layout/SidecarWindowBackend$ExtensionListenerImpl;", "Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;", "(Landroidx/window/layout/SidecarWindowBackend;)V", "onWindowLayoutChanged", "", "activity", "Landroid/app/Activity;", "newLayout", "Landroidx/window/layout/WindowLayoutInfo;", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public final class ExtensionListenerImpl implements ExtensionInterfaceCompat.ExtensionCallbackInterface {
        final /* synthetic */ SidecarWindowBackend this$0;

        public ExtensionListenerImpl(SidecarWindowBackend this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
        }

        @Override // androidx.window.layout.ExtensionInterfaceCompat.ExtensionCallbackInterface
        public void onWindowLayoutChanged(Activity activity, WindowLayoutInfo newLayout) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(newLayout, "newLayout");
            Iterator<WindowLayoutChangeCallbackWrapper> it = this.this$0.getWindowLayoutChangeCallbacks().iterator();
            while (it.hasNext()) {
                WindowLayoutChangeCallbackWrapper next = it.next();
                if (Intrinsics.areEqual(next.getActivity(), activity)) {
                    next.accept(newLayout);
                }
            }
        }
    }

    /* compiled from: SidecarWindowBackend.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;", "", "activity", "Landroid/app/Activity;", "executor", "Ljava/util/concurrent/Executor;", "callback", "Landroidx/core/util/Consumer;", "Landroidx/window/layout/WindowLayoutInfo;", "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V", "getActivity", "()Landroid/app/Activity;", "getCallback", "()Landroidx/core/util/Consumer;", "lastInfo", "getLastInfo", "()Landroidx/window/layout/WindowLayoutInfo;", "setLastInfo", "(Landroidx/window/layout/WindowLayoutInfo;)V", "accept", "", "newLayoutInfo", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class WindowLayoutChangeCallbackWrapper {
        private final Activity activity;
        private final Consumer<WindowLayoutInfo> callback;
        private final Executor executor;
        private WindowLayoutInfo lastInfo;

        public final Activity getActivity() {
            return this.activity;
        }

        public final Consumer<WindowLayoutInfo> getCallback() {
            return this.callback;
        }

        public final WindowLayoutInfo getLastInfo() {
            return this.lastInfo;
        }

        public final void setLastInfo(WindowLayoutInfo windowLayoutInfo) {
            this.lastInfo = windowLayoutInfo;
        }

        public WindowLayoutChangeCallbackWrapper(Activity activity, Executor executor, Consumer<WindowLayoutInfo> callback) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(executor, "executor");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.activity = activity;
            this.executor = executor;
            this.callback = callback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: accept$lambda-0, reason: not valid java name */
        public static final void m5330accept$lambda0(WindowLayoutChangeCallbackWrapper this$0, WindowLayoutInfo newLayoutInfo) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(newLayoutInfo, "$newLayoutInfo");
            this$0.callback.accept(newLayoutInfo);
        }

        public final void accept(final WindowLayoutInfo newLayoutInfo) {
            Intrinsics.checkNotNullParameter(newLayoutInfo, "newLayoutInfo");
            this.lastInfo = newLayoutInfo;
            this.executor.execute(new Runnable() { // from class: androidx.window.layout.SidecarWindowBackend$WindowLayoutChangeCallbackWrapper$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SidecarWindowBackend.WindowLayoutChangeCallbackWrapper.m5330accept$lambda0(SidecarWindowBackend.WindowLayoutChangeCallbackWrapper.this, newLayoutInfo);
                }
            });
        }
    }

    /* compiled from: SidecarWindowBackend.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\rJ\u0012\u0010\u0010\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/window/layout/SidecarWindowBackend$Companion;", "", "()V", "DEBUG", "", "TAG", "", "globalInstance", "Landroidx/window/layout/SidecarWindowBackend;", "globalLock", "Ljava/util/concurrent/locks/ReentrantLock;", "getInstance", "context", "Landroid/content/Context;", "initAndVerifyExtension", "Landroidx/window/layout/ExtensionInterfaceCompat;", "isSidecarVersionSupported", "sidecarVersion", "Landroidx/window/core/Version;", "resetInstance", "", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SidecarWindowBackend getInstance(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (SidecarWindowBackend.globalInstance == null) {
                ReentrantLock reentrantLock = SidecarWindowBackend.globalLock;
                reentrantLock.lock();
                try {
                    if (SidecarWindowBackend.globalInstance == null) {
                        ExtensionInterfaceCompat initAndVerifyExtension = SidecarWindowBackend.INSTANCE.initAndVerifyExtension(context);
                        Companion companion = SidecarWindowBackend.INSTANCE;
                        SidecarWindowBackend.globalInstance = new SidecarWindowBackend(initAndVerifyExtension);
                    }
                    Unit unit = Unit.INSTANCE;
                } finally {
                    reentrantLock.unlock();
                }
            }
            SidecarWindowBackend sidecarWindowBackend = SidecarWindowBackend.globalInstance;
            Intrinsics.checkNotNull(sidecarWindowBackend);
            return sidecarWindowBackend;
        }

        public final ExtensionInterfaceCompat initAndVerifyExtension(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                if (!isSidecarVersionSupported(SidecarCompat.INSTANCE.getSidecarVersion())) {
                    return null;
                }
                SidecarCompat sidecarCompat = new SidecarCompat(context);
                if (sidecarCompat.validateExtensionInterface()) {
                    return sidecarCompat;
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }

        public final boolean isSidecarVersionSupported(Version sidecarVersion) {
            return sidecarVersion != null && sidecarVersion.compareTo(Version.INSTANCE.getVERSION_0_1()) >= 0;
        }

        public final void resetInstance() {
            SidecarWindowBackend.globalInstance = null;
        }
    }
}
