package androidx.core.app;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.collection.SimpleArrayMap;
import androidx.core.view.KeyEventDispatcher;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ReportFragment;

/* loaded from: classes.dex */
public class ComponentActivity extends Activity implements LifecycleOwner, KeyEventDispatcher.Component {
    private SimpleArrayMap<Class<? extends ExtraData>, ExtraData> mExtraDataMap = new SimpleArrayMap<>();
    private LifecycleRegistry mLifecycleRegistry = new LifecycleRegistry(this);

    @Deprecated
    /* loaded from: classes.dex */
    public static class ExtraData {
    }

    public Lifecycle getLifecycle() {
        return this.mLifecycleRegistry;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public void putExtraData(ExtraData extraData) {
        this.mExtraDataMap.put(extraData.getClass(), extraData);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ReportFragment.injectIfNeededIn(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.mLifecycleRegistry.markState(Lifecycle.State.CREATED);
        super.onSaveInstanceState(bundle);
    }

    @Deprecated
    public <T extends ExtraData> T getExtraData(Class<T> cls) {
        return (T) this.mExtraDataMap.get(cls);
    }

    @Override // androidx.core.view.KeyEventDispatcher.Component
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return KeyEventDispatcher.dispatchKeyEvent(this, decorView, this, keyEvent);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean shouldDumpInternalState(String[] strArr) {
        return !shouldSkipDump(strArr);
    }

    private static boolean shouldSkipDump(String[] strArr) {
        if (strArr != null && strArr.length > 0) {
            String str = strArr[0];
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case -645125871:
                    if (str.equals("--translation")) {
                        c = 0;
                        break;
                    }
                    break;
                case 100470631:
                    if (str.equals("--dump-dumpable")) {
                        c = 1;
                        break;
                    }
                    break;
                case 472614934:
                    if (str.equals("--list-dumpables")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1159329357:
                    if (str.equals("--contentcapture")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1455016274:
                    if (str.equals("--autofill")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    return true;
                case 1:
                case 2:
                    return Build.VERSION.SDK_INT >= 33;
                case 3:
                case 4:
                    return true;
            }
        }
        return false;
    }
}
