package tech.rabbit.r1launcher.settings.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.util.Log;
import io.sentry.protocol.Device;
import io.sentry.protocol.SentryThread;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* compiled from: BluetoothDeviceMonitor.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J5\u0010'\u001a\u00020\u00122-\u0010(\u001a)\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000bJ\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\r0*J\u0006\u0010+\u001a\u00020\u000eJ\u0018\u0010,\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010-\u001a\u00020\rH\u0003J\u0018\u0010.\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010-\u001a\u00020\rH\u0003J\u0018\u0010/\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\f2\u0006\u00100\u001a\u00020\u0019H\u0002J5\u00101\u001a\u00020\u00122-\u0010(\u001a)\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000bJ\u000e\u00102\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u00103J\u000e\u00104\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\fJ\u0006\u00105\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000Rl\u0010\t\u001a`\u0012+\u0012)\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000b0\nj/\u0012+\u0012)\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000b`\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\r0\nj\b\u0012\u0004\u0012\u00020\r`\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010&\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;", "", "()V", "TAG", "", "bluetoothAdapter", "Landroid/bluetooth/BluetoothAdapter;", "bluetoothReceiver", "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;", "bondListeners", "Ljava/util/ArrayList;", "Lkotlin/Function3;", "Landroid/content/Context;", "Landroid/bluetooth/BluetoothDevice;", "", "Lkotlin/ParameterName;", "name", "isConnected", "", "Lkotlin/collections/ArrayList;", "bondedDevices", "context", "Ljava/lang/ref/WeakReference;", "isInit", "profile", "", "getProfile", "()I", "setProfile", "(I)V", "proxy", "Landroid/bluetooth/BluetoothProfile;", "getProxy", "()Landroid/bluetooth/BluetoothProfile;", "setProxy", "(Landroid/bluetooth/BluetoothProfile;)V", "serviceListener", "Landroid/bluetooth/BluetoothProfile$ServiceListener;", "weakContext", "addOnDeviceConnectedListener", "listener", "getConnectedDevices", "", "isA2DPServerAlive", "onDeviceBond", Device.TYPE, "onDeviceUnbind", "onStateChanged", SentryThread.JsonKeys.STATE, "removeOnDeviceConnectedListener", "startA2dpServer", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startMonitor", "unregister", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothDeviceMonitor {
    public static final int $stable = 8;
    private BluetoothAdapter bluetoothAdapter;
    private final BluetoothReceiver bluetoothReceiver;
    private WeakReference<Context> context;
    private boolean isInit;
    private int profile;
    private BluetoothProfile proxy;
    private BluetoothProfile.ServiceListener serviceListener;
    private WeakReference<Context> weakContext;
    private final ArrayList<BluetoothDevice> bondedDevices = new ArrayList<>();
    private final ArrayList<Function3<Context, BluetoothDevice, Boolean, Unit>> bondListeners = new ArrayList<>();
    private final String TAG = "BluetoothDeviceMonitor";

    public final int getProfile() {
        return this.profile;
    }

    public final BluetoothProfile getProxy() {
        return this.proxy;
    }

    public final boolean isA2DPServerAlive() {
        return this.proxy != null;
    }

    public final void setProfile(int i) {
        this.profile = i;
    }

    public final void setProxy(BluetoothProfile bluetoothProfile) {
        this.proxy = bluetoothProfile;
    }

    public BluetoothDeviceMonitor() {
        BluetoothReceiver bluetoothReceiver = new BluetoothReceiver();
        bluetoothReceiver.setOnDeviceBonded(new Function2<Context, BluetoothDevice, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothDeviceMonitor$bluetoothReceiver$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Context context, BluetoothDevice bluetoothDevice) {
                invoke2(context, bluetoothDevice);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Context context, BluetoothDevice bluetoothDevice) {
                String str;
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(bluetoothDevice, "bluetoothDevice");
                str = BluetoothDeviceMonitor.this.TAG;
                Log.i(str, "onDeviceBonded: ");
                BluetoothDeviceMonitor.this.onDeviceBond(context, bluetoothDevice);
            }
        });
        bluetoothReceiver.setOnDeviceUnbonded(new Function2<Context, BluetoothDevice, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothDeviceMonitor$bluetoothReceiver$1$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Context context, BluetoothDevice bluetoothDevice) {
                invoke2(context, bluetoothDevice);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Context context, BluetoothDevice bluetoothDevice) {
                String str;
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(bluetoothDevice, "bluetoothDevice");
                str = BluetoothDeviceMonitor.this.TAG;
                Log.i(str, "onDeviceUnBonded: ");
                BluetoothDeviceMonitor.this.onDeviceUnbind(context, bluetoothDevice);
            }
        });
        bluetoothReceiver.setOnStateChanged(new Function2<Context, Integer, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothDeviceMonitor$bluetoothReceiver$1$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Context context, Integer num) {
                invoke(context, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Context context, int i) {
                String str;
                Intrinsics.checkNotNullParameter(context, "context");
                str = BluetoothDeviceMonitor.this.TAG;
                Log.i(str, "onBluetoothStateChanged: " + i);
                BluetoothDeviceMonitor.this.onStateChanged(context, i);
            }
        });
        this.bluetoothReceiver = bluetoothReceiver;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002a, code lost:
    
        if ((r0 != null ? r0.get() : null) == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void startMonitor(android.content.Context r9) {
        /*
            r8 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = r8.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "startMonitor: "
            r1.<init>(r2)
            boolean r2 = r8.isInit
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.i(r0, r1)
            java.lang.ref.WeakReference<android.content.Context> r0 = r8.weakContext
            r1 = 0
            if (r0 == 0) goto L2c
            if (r0 == 0) goto L29
            java.lang.Object r0 = r0.get()
            android.content.Context r0 = (android.content.Context) r0
            goto L2a
        L29:
            r0 = r1
        L2a:
            if (r0 != 0) goto L33
        L2c:
            java.lang.ref.WeakReference r0 = new java.lang.ref.WeakReference
            r0.<init>(r9)
            r8.weakContext = r0
        L33:
            boolean r0 = r8.isInit
            if (r0 == 0) goto L38
            return
        L38:
            r0 = 1
            r8.isInit = r0
            java.lang.ref.WeakReference r0 = new java.lang.ref.WeakReference
            r0.<init>(r9)
            r8.context = r0
            android.bluetooth.BluetoothAdapter r0 = android.bluetooth.BluetoothAdapter.getDefaultAdapter()
            java.lang.String r2 = "getDefaultAdapter(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            r8.bluetoothAdapter = r0
            java.lang.String r0 = r8.TAG
            java.lang.String r2 = "registerReceiver"
            android.util.Log.i(r0, r2)
            android.content.IntentFilter r0 = new android.content.IntentFilter
            java.lang.String r2 = "android.bluetooth.device.action.ACL_CONNECTED"
            r0.<init>(r2)
            java.lang.String r2 = "android.bluetooth.device.action.ACL_DISCONNECTED"
            r0.addAction(r2)
            java.lang.String r2 = "android.bluetooth.adapter.action.STATE_CHANGED"
            r0.addAction(r2)
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothReceiver r2 = r8.bluetoothReceiver
            android.content.BroadcastReceiver r2 = (android.content.BroadcastReceiver) r2
            r9.registerReceiver(r2, r0)
            kotlinx.coroutines.CoroutineDispatcher r9 = kotlinx.coroutines.Dispatchers.getIO()
            kotlin.coroutines.CoroutineContext r9 = (kotlin.coroutines.CoroutineContext) r9
            kotlinx.coroutines.CoroutineScope r2 = kotlinx.coroutines.CoroutineScopeKt.CoroutineScope(r9)
            r3 = 0
            r4 = 0
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothDeviceMonitor$startMonitor$1 r9 = new tech.rabbit.r1launcher.settings.bluetooth.BluetoothDeviceMonitor$startMonitor$1
            r9.<init>(r8, r1)
            r5 = r9
            kotlin.jvm.functions.Function2 r5 = (kotlin.jvm.functions.Function2) r5
            r6 = 3
            r7 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.bluetooth.BluetoothDeviceMonitor.startMonitor(android.content.Context):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onDeviceUnbind(Context context, BluetoothDevice device) {
        this.bondedDevices.remove(device);
        Log.i(this.TAG, "onDeviceUnbind: " + device.getName());
        Iterator<T> it = this.bondListeners.iterator();
        while (it.hasNext()) {
            ((Function3) it.next()).invoke(context, device, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onDeviceBond(Context context, BluetoothDevice device) {
        this.bondedDevices.add(device);
        Log.i(this.TAG, "onDeviceBonded: " + device.getName());
        Iterator<T> it = this.bondListeners.iterator();
        while (it.hasNext()) {
            ((Function3) it.next()).invoke(context, device, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onStateChanged(Context context, int state) {
        if (state != 10) {
            if (state != 13) {
                return;
            }
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new BluetoothDeviceMonitor$onStateChanged$1(this, null), 3, null);
        } else {
            Iterator<T> it = this.bondedDevices.iterator();
            while (it.hasNext()) {
                onDeviceUnbind(context, (BluetoothDevice) it.next());
            }
        }
    }

    public final void addOnDeviceConnectedListener(Function3<? super Context, ? super BluetoothDevice, ? super Boolean, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (this.bondListeners.contains(listener)) {
            return;
        }
        this.bondListeners.add(listener);
    }

    public final void removeOnDeviceConnectedListener(Function3<? super Context, ? super BluetoothDevice, ? super Boolean, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (this.bondListeners.contains(listener)) {
            this.bondListeners.remove(listener);
        }
    }

    public final List<BluetoothDevice> getConnectedDevices() {
        BluetoothProfile bluetoothProfile = this.proxy;
        List<BluetoothDevice> connectedDevices = bluetoothProfile != null ? bluetoothProfile.getConnectedDevices() : null;
        return connectedDevices == null ? CollectionsKt.emptyList() : connectedDevices;
    }

    public final void unregister() {
        Unit unit;
        if (this.context != null) {
            BluetoothAdapter bluetoothAdapter = null;
            try {
                Result.Companion companion = Result.INSTANCE;
                WeakReference<Context> weakReference = this.context;
                Intrinsics.checkNotNull(weakReference);
                Context context = weakReference.get();
                if (context != null) {
                    context.unregisterReceiver(this.bluetoothReceiver);
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                Result.m5698constructorimpl(unit);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m5698constructorimpl(ResultKt.createFailure(th));
            }
            if (this.serviceListener != null) {
                BluetoothAdapter bluetoothAdapter2 = this.bluetoothAdapter;
                if (bluetoothAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bluetoothAdapter");
                } else {
                    bluetoothAdapter = bluetoothAdapter2;
                }
                bluetoothAdapter.closeProfileProxy(2, this.proxy);
            }
        }
        this.isInit = false;
        this.bondedDevices.clear();
        this.bondListeners.clear();
    }

    public final Object startA2dpServer(Continuation<? super Boolean> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        this.serviceListener = new BluetoothProfile.ServiceListener() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothDeviceMonitor$startA2dpServer$2$1
            @Override // android.bluetooth.BluetoothProfile.ServiceListener
            public void onServiceConnected(int profile, BluetoothProfile proxy) {
                String str;
                Intrinsics.checkNotNullParameter(proxy, "proxy");
                if (profile == 1 || profile == 2) {
                    BluetoothDeviceMonitor.this.setProxy(proxy);
                    str = BluetoothDeviceMonitor.this.TAG;
                    Log.i(str, "onServiceConnected");
                    if (!cancellableContinuationImpl2.isCompleted()) {
                        cancellableContinuationImpl2.resume(true, null);
                    }
                }
                BluetoothDeviceMonitor.this.setProfile(profile);
            }

            @Override // android.bluetooth.BluetoothProfile.ServiceListener
            public void onServiceDisconnected(int profile) {
                String str;
                if (profile == 2) {
                    BluetoothDeviceMonitor.this.setProxy(null);
                    str = BluetoothDeviceMonitor.this.TAG;
                    Log.e(str, "onServiceDisconnected");
                    if (cancellableContinuationImpl2.isCompleted()) {
                        return;
                    }
                    cancellableContinuationImpl2.resume(false, null);
                }
            }
        };
        BluetoothAdapter bluetoothAdapter = this.bluetoothAdapter;
        if (bluetoothAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bluetoothAdapter");
            bluetoothAdapter = null;
        }
        WeakReference weakReference = this.weakContext;
        bluetoothAdapter.getProfileProxy(weakReference != null ? (Context) weakReference.get() : null, this.serviceListener, 2);
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
