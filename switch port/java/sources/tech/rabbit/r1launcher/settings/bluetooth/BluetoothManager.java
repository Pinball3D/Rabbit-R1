package tech.rabbit.r1launcher.settings.bluetooth;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanRecord;
import android.bluetooth.le.ScanResult;
import android.content.Context;
import android.content.IntentFilter;
import android.util.Log;
import androidx.work.WorkRequest;
import io.sentry.ProfilingTraceData;
import io.sentry.okhttp.SentryOkHttpEventListener;
import io.sentry.protocol.Device;
import io.sentry.protocol.SentryThread;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* compiled from: BluetoothManager.kt */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u00020\u0016H\u0002J5\u00104\u001a\u00020\u00112-\u0010\u0013\u001a)\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00110\u0014J\u0010\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u0016H\u0003J\u001e\u00107\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u0016H\u0082@¢\u0006\u0002\u00109J4\u0010:\u001a\u00020\u00102\u0006\u0010;\u001a\u00020\u00152\b\u00106\u001a\u0004\u0018\u00010\u00162\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fH\u0087@¢\u0006\u0002\u0010<J\u0010\u0010=\u001a\u00020>2\u0006\u00106\u001a\u00020\u0016H\u0002J\u0018\u0010?\u001a\u00020\u00102\b\u00106\u001a\u0004\u0018\u00010\u0016H\u0087@¢\u0006\u0002\u0010@J\u0016\u0010A\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u0016H\u0087@¢\u0006\u0002\u0010@J\u0010\u0010B\u001a\u00020>2\u0006\u00106\u001a\u00020\u0016H\u0002J\u000e\u0010C\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u0015J,\u0010D\u001a\u00020\u00102\n\u0010E\u001a\u0006\u0012\u0002\b\u00030F2\u0006\u0010G\u001a\u00020H2\u0006\u00108\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u0016H\u0002J\u0006\u0010I\u001a\u00020\u0010J\u0012\u0010J\u001a\u00020\u00102\b\u00106\u001a\u0004\u0018\u00010\u0016H\u0007J\u0012\u0010K\u001a\u00020\u00102\b\u00106\u001a\u0004\u0018\u00010\u0016H\u0007J\u000e\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00160MH\u0007J5\u0010N\u001a\u00020\u00112-\u0010\u0013\u001a)\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00110\u0014J \u0010O\u001a\u00020\u00112\u0006\u0010P\u001a\u00020Q2\u0006\u00106\u001a\u00020\u00162\u0006\u0010R\u001a\u00020>H\u0002J8\u0010S\u001a\u00020\u00112\b\b\u0002\u0010T\u001a\u00020\u00072\b\b\u0002\u0010U\u001a\u00020\u00072\u0006\u00106\u001a\u00020\u00162\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fH\u0002J\u0010\u0010V\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u0015H\u0007J\u000e\u0010W\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u0015J$\u0010X\u001a\u00020\u00112\u0006\u0010Y\u001a\u00020\u00162\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fH\u0007J\u0018\u0010Z\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u00152\u0006\u0010[\u001a\u00020\u0010H\u0007J\u0010\u0010\\\u001a\u00020\u00112\b\u00106\u001a\u0004\u0018\u00010\u0016R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082D¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \u0005*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R5\u0010\u0013\u001a)\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00110\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R&\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001f\"\u0004\b$\u0010!R&\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001f\"\u0004\b'\u0010!R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u00160+j\b\u0012\u0004\u0012\u00020\u0016`,X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010-\u001a\u0004\u0018\u00010)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101¨\u0006]"}, d2 = {"Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;", "", "()V", "MY_UUID", "Ljava/util/UUID;", "kotlin.jvm.PlatformType", "SCAN_TIME", "", "TAG", "", "bluetoothAdapter", "Landroid/bluetooth/BluetoothAdapter;", "bluetoothScanReceiver", "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;", "connectingListener", "Lkotlin/Function1;", "", "", "disconnectingListener", "listener", "Lkotlin/Function3;", "Landroid/content/Context;", "Landroid/bluetooth/BluetoothDevice;", "Lkotlin/ParameterName;", "name", "isConnected", "monitor", "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;", "needScan", "onDeviceBond", "getOnDeviceBond", "()Lkotlin/jvm/functions/Function1;", "setOnDeviceBond", "(Lkotlin/jvm/functions/Function1;)V", "onDeviceScanResultChange", "getOnDeviceScanResultChange", "setOnDeviceScanResultChange", "onDeviceUnbind", "getOnDeviceUnbind", "setOnDeviceUnbind", "scanJob", "Lkotlinx/coroutines/Job;", "scanList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "timeoutJob", "getTimeoutJob", "()Lkotlinx/coroutines/Job;", "setTimeoutJob", "(Lkotlinx/coroutines/Job;)V", "addIntoList", "it", "addOnDeviceConnectedListener", "adjustDeviceType", Device.TYPE, "changeDeviceConnection", SentryOkHttpEventListener.CONNECT_EVENT, "(ZLandroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "connectDevice", "context", "(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "connectDeviceInternal", "", "disconnectAndRemoveDevice", "(Landroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "disconnectDevice", "disconnectDeviceInternal", "initMonitor", "invokeMethod", "clz", "Ljava/lang/Class;", "obj", "Landroid/bluetooth/BluetoothProfile;", "isBluetoothOpened", "isDeviceBonded", "isDeviceConnected", "queryMyDevices", "", "removeOnDeviceConnectedListener", "setPriority", "a2dp", "Landroid/bluetooth/BluetoothA2dp;", SentryThread.JsonKeys.PRIORITY, "startCheckConnectionWithTimeout", ProfilingTraceData.TRUNCATION_REASON_TIMEOUT, "interval", "startScan", "stopScan", "testDeviceInConnection", "targetDevice", "toggleBluetooth", "open", "unbindDevice", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothManager {
    private static BluetoothScanReceiver bluetoothScanReceiver;
    private static boolean needScan;
    private static Job scanJob;
    private static Job timeoutJob;
    public static final BluetoothManager INSTANCE = new BluetoothManager();
    private static final String TAG = "BluetoothManager";
    private static final ArrayList<BluetoothDevice> scanList = new ArrayList<>();
    private static final BluetoothAdapter bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    private static BluetoothDeviceMonitor monitor = new BluetoothDeviceMonitor();
    private static Function1<? super BluetoothDevice, Unit> onDeviceScanResultChange = new Function1<BluetoothDevice, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$onDeviceScanResultChange$1
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(BluetoothDevice it) {
            Intrinsics.checkNotNullParameter(it, "it");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(BluetoothDevice bluetoothDevice) {
            invoke2(bluetoothDevice);
            return Unit.INSTANCE;
        }
    };
    private static Function1<? super BluetoothDevice, Unit> onDeviceUnbind = new Function1<BluetoothDevice, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$onDeviceUnbind$1
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(BluetoothDevice it) {
            Intrinsics.checkNotNullParameter(it, "it");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(BluetoothDevice bluetoothDevice) {
            invoke2(bluetoothDevice);
            return Unit.INSTANCE;
        }
    };
    private static Function1<? super BluetoothDevice, Unit> onDeviceBond = new Function1<BluetoothDevice, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$onDeviceBond$1
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(BluetoothDevice it) {
            Intrinsics.checkNotNullParameter(it, "it");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(BluetoothDevice bluetoothDevice) {
            invoke2(bluetoothDevice);
            return Unit.INSTANCE;
        }
    };
    private static Function1<? super Boolean, Unit> connectingListener = new Function1<Boolean, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$connectingListener$1
        public final void invoke(boolean z) {
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            invoke(bool.booleanValue());
            return Unit.INSTANCE;
        }
    };
    private static Function1<? super Boolean, Unit> disconnectingListener = new Function1<Boolean, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$disconnectingListener$1
        public final void invoke(boolean z) {
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            invoke(bool.booleanValue());
            return Unit.INSTANCE;
        }
    };
    private static final long SCAN_TIME = WorkRequest.MIN_BACKOFF_MILLIS;
    private static final UUID MY_UUID = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");
    private static final Function3<Context, BluetoothDevice, Boolean, Unit> listener = new Function3<Context, BluetoothDevice, Boolean, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$listener$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(Context context, BluetoothDevice bluetoothDevice, Boolean bool) {
            invoke(context, bluetoothDevice, bool.booleanValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Context context, BluetoothDevice bluetoothDevice, boolean z) {
            Function1 function1;
            Function1 function12;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(bluetoothDevice, "bluetoothDevice");
            if (z) {
                Log.i(BluetoothManager.TAG, "bluetooth device binded");
                if (BluetoothManager.INSTANCE.isDeviceConnected(bluetoothDevice)) {
                    function12 = BluetoothManager.connectingListener;
                    function12.invoke(true);
                    BluetoothManager bluetoothManager = BluetoothManager.INSTANCE;
                    BluetoothManager.connectingListener = new Function1<Boolean, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$listener$1.1
                        public final void invoke(boolean z2) {
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                            invoke(bool.booleanValue());
                            return Unit.INSTANCE;
                        }
                    };
                    Job timeoutJob2 = BluetoothManager.INSTANCE.getTimeoutJob();
                    if (timeoutJob2 != null) {
                        Job.DefaultImpls.cancel$default(timeoutJob2, (CancellationException) null, 1, (Object) null);
                        return;
                    }
                    return;
                }
                return;
            }
            Log.i(BluetoothManager.TAG, "bluetooth device unbind");
            function1 = BluetoothManager.disconnectingListener;
            function1.invoke(true);
            BluetoothManager bluetoothManager2 = BluetoothManager.INSTANCE;
            BluetoothManager.disconnectingListener = new Function1<Boolean, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$listener$1.2
                public final void invoke(boolean z2) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return Unit.INSTANCE;
                }
            };
            Job timeoutJob3 = BluetoothManager.INSTANCE.getTimeoutJob();
            if (timeoutJob3 != null) {
                Job.DefaultImpls.cancel$default(timeoutJob3, (CancellationException) null, 1, (Object) null);
            }
        }
    };
    public static final int $stable = 8;

    public final Function1<BluetoothDevice, Unit> getOnDeviceBond() {
        return onDeviceBond;
    }

    public final Function1<BluetoothDevice, Unit> getOnDeviceScanResultChange() {
        return onDeviceScanResultChange;
    }

    public final Function1<BluetoothDevice, Unit> getOnDeviceUnbind() {
        return onDeviceUnbind;
    }

    public final Job getTimeoutJob() {
        return timeoutJob;
    }

    public final void setOnDeviceBond(Function1<? super BluetoothDevice, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        onDeviceBond = function1;
    }

    public final void setOnDeviceScanResultChange(Function1<? super BluetoothDevice, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        onDeviceScanResultChange = function1;
    }

    public final void setOnDeviceUnbind(Function1<? super BluetoothDevice, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        onDeviceUnbind = function1;
    }

    public final void setTimeoutJob(Job job) {
        timeoutJob = job;
    }

    private BluetoothManager() {
    }

    public final void initMonitor(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        monitor.addOnDeviceConnectedListener(listener);
        monitor.startMonitor(context);
    }

    public final void startScan(Context context) {
        Job launch$default;
        Intrinsics.checkNotNullParameter(context, "context");
        IntentFilter intentFilter = new IntentFilter("android.bluetooth.device.action.FOUND");
        BluetoothScanReceiver bluetoothScanReceiver2 = new BluetoothScanReceiver();
        bluetoothScanReceiver2.setOnDeviceFound(new Function1<BluetoothDevice, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startScan$1$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(BluetoothDevice bluetoothDevice) {
                invoke2(bluetoothDevice);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(BluetoothDevice it) {
                Intrinsics.checkNotNullParameter(it, "it");
                BluetoothManager.INSTANCE.addIntoList(it);
            }
        });
        bluetoothScanReceiver = bluetoothScanReceiver2;
        context.registerReceiver(bluetoothScanReceiver2, intentFilter);
        BluetoothAdapter bluetoothAdapter2 = bluetoothAdapter;
        if (bluetoothAdapter2.isDiscovering()) {
            bluetoothAdapter2.cancelDiscovery();
        }
        needScan = true;
        launch$default = BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new BluetoothManager$startScan$2(null), 3, null);
        scanJob = launch$default;
    }

    public final void stopScan(Context context) {
        BluetoothScanReceiver bluetoothScanReceiver2;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Result.Companion companion = Result.INSTANCE;
            BluetoothManager bluetoothManager = this;
            bluetoothScanReceiver2 = bluetoothScanReceiver;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (bluetoothScanReceiver2 == null) {
            return;
        }
        context.unregisterReceiver(bluetoothScanReceiver2);
        Result.m5698constructorimpl(Unit.INSTANCE);
        scanList.clear();
        needScan = false;
        Job job = scanJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
    }

    public final void toggleBluetooth(Context context, boolean open) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!open) {
            bluetoothAdapter.disable();
        } else {
            bluetoothAdapter.enable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addIntoList(BluetoothDevice it) {
        ArrayList<BluetoothDevice> arrayList = scanList;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        Iterator<T> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((BluetoothDevice) it2.next()).getAddress());
        }
        if (arrayList2.contains(it.getAddress())) {
            return;
        }
        scanList.add(it);
        onDeviceScanResultChange.invoke(it);
    }

    public final List<BluetoothDevice> queryMyDevices() {
        Set<BluetoothDevice> bondedDevices = bluetoothAdapter.getBondedDevices();
        Log.i(TAG, "queryMyDevices: " + bondedDevices.size());
        Intrinsics.checkNotNull(bondedDevices);
        return CollectionsKt.toList(bondedDevices);
    }

    public final boolean isBluetoothOpened() {
        return bluetoothAdapter.isEnabled();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:1|(2:3|(14:5|6|7|(1:(1:(3:11|12|13)(2:15|16))(2:17|18))(2:32|(2:34|35)(8:36|(3:38|39|(1:41))|23|(1:30)|27|(1:29)|12|13))|19|20|(1:22)|23|(1:25)|30|27|(0)|12|13))|44|6|7|(0)(0)|19|20|(0)|23|(0)|30|27|(0)|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0040, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0084, code lost:
    
        r8 = kotlin.Result.INSTANCE;
        r6 = kotlin.Result.m5698constructorimpl(kotlin.ResultKt.createFailure(r6));
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object disconnectAndRemoveDevice(android.bluetooth.BluetoothDevice r7, kotlin.coroutines.Continuation<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.disconnectAndRemoveDevice(android.bluetooth.BluetoothDevice, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0075 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object disconnectDevice(android.bluetooth.BluetoothDevice r6, kotlin.coroutines.Continuation<? super java.lang.Boolean> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$disconnectDevice$1
            if (r0 == 0) goto L14
            r0 = r7
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$disconnectDevice$1 r0 = (tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$disconnectDevice$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r5 = r0.label
            int r5 = r5 - r2
            r0.label = r5
            goto L19
        L14:
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$disconnectDevice$1 r0 = new tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$disconnectDevice$1
            r0.<init>(r5, r7)
        L19:
            java.lang.Object r5 = r0.result
            java.lang.Object r7 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r0.label
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L42
            if (r1 == r3) goto L3a
            if (r1 != r2) goto L32
            java.lang.Object r6 = r0.L$0
            android.bluetooth.BluetoothDevice r6 = (android.bluetooth.BluetoothDevice) r6
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L77
            goto L76
        L32:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3a:
            java.lang.Object r6 = r0.L$0
            android.bluetooth.BluetoothDevice r6 = (android.bluetooth.BluetoothDevice) r6
            kotlin.ResultKt.throwOnFailure(r5)
            goto L5a
        L42:
            kotlin.ResultKt.throwOnFailure(r5)
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothDeviceMonitor r5 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.monitor
            boolean r5 = r5.isA2DPServerAlive()
            if (r5 != 0) goto L67
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothDeviceMonitor r5 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.monitor
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r5 = r5.startA2dpServer(r0)
            if (r5 != r7) goto L5a
            return r7
        L5a:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 != 0) goto L67
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r5
        L67:
            kotlin.Result$Companion r5 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L77
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager r5 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.INSTANCE     // Catch: java.lang.Throwable -> L77
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L77
            r0.label = r2     // Catch: java.lang.Throwable -> L77
            java.lang.Object r5 = r5.changeDeviceConnection(r4, r6, r0)     // Catch: java.lang.Throwable -> L77
            if (r5 != r7) goto L76
            return r7
        L76:
            return r5
        L77:
            r5 = move-exception
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            java.lang.Object r5 = kotlin.ResultKt.createFailure(r5)
            java.lang.Object r5 = kotlin.Result.m5698constructorimpl(r5)
            java.lang.Throwable r5 = kotlin.Result.m5701exceptionOrNullimpl(r5)
            if (r5 == 0) goto Lad
            r5.printStackTrace()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r0 = "[disconnect]Device:"
            r7.<init>(r0)
            java.lang.String r6 = r6.getName()
            java.lang.StringBuilder r6 = r7.append(r6)
            java.lang.String r7 = " fail reason = "
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.StringBuilder r5 = r6.append(r5)
            java.lang.String r5 = r5.toString()
            java.lang.String r6 = "TAG"
            android.util.Log.i(r6, r5)
        Lad:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.disconnectDevice(android.bluetooth.BluetoothDevice, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean isDeviceConnected(BluetoothDevice device) {
        if (device == null) {
            return false;
        }
        BluetoothProfile proxy = monitor.getProxy();
        Integer valueOf = proxy != null ? Integer.valueOf(proxy.getConnectionState(device)) : null;
        return valueOf != null && valueOf.intValue() == 2;
    }

    public final boolean isDeviceBonded(BluetoothDevice device) {
        return device != null && device.getBondState() == 12;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0032  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x01bb -> B:20:0x005a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object connectDevice(android.content.Context r18, android.bluetooth.BluetoothDevice r19, kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit> r20, kotlin.coroutines.Continuation<? super java.lang.Boolean> r21) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.connectDevice(android.content.Context, android.bluetooth.BluetoothDevice, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final boolean adjustDeviceType(BluetoothDevice device) {
        int deviceClass = device.getBluetoothClass().getDeviceClass();
        Log.i(TAG, "[connect] adjustDeviceType: " + deviceClass);
        return deviceClass == 1076 || deviceClass == 1056 || deviceClass == 1032 || deviceClass == 1048 || deviceClass == 1064 || deviceClass == 1044 || deviceClass == 1040 || deviceClass == 1052 || deviceClass == 1060 || deviceClass == 1024 || deviceClass == 1068 || deviceClass == 1072 || deviceClass == 1088 || deviceClass == 1084 || deviceClass == 1096 || deviceClass == 1080 || deviceClass == 1028;
    }

    static /* synthetic */ void startCheckConnectionWithTimeout$default(BluetoothManager bluetoothManager, long j, long j2, BluetoothDevice bluetoothDevice, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 5000;
        }
        long j3 = j;
        if ((i & 2) != 0) {
            j2 = 500;
        }
        bluetoothManager.startCheckConnectionWithTimeout(j3, j2, bluetoothDevice, function1);
    }

    private final void startCheckConnectionWithTimeout(long timeout, long interval, BluetoothDevice device, Function1<? super Boolean, Unit> connectingListener2) {
        Job launch$default;
        launch$default = BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new BluetoothManager$startCheckConnectionWithTimeout$1(interval, device, timeout, connectingListener2, null), 3, null);
        timeoutJob = launch$default;
    }

    public final void unbindDevice(BluetoothDevice device) {
        if (device != null) {
            try {
                Method method = BluetoothDevice.class.getMethod("removeBond", null);
                Intrinsics.checkNotNullExpressionValue(method, "getMethod(...)");
                method.invoke(device, null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private final int disconnectDeviceInternal(BluetoothDevice device) {
        Method declaredMethod = BluetoothDevice.class.getDeclaredMethod("disconnect", new Class[0]);
        declaredMethod.setAccessible(true);
        Object invoke = declaredMethod.invoke(device, new Object[0]);
        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) invoke).intValue();
        Log.i(TAG, "[connect]: method called result =" + intValue);
        return intValue;
    }

    private final int connectDeviceInternal(BluetoothDevice device) {
        Method declaredMethod = BluetoothDevice.class.getDeclaredMethod(SentryOkHttpEventListener.CONNECT_EVENT, new Class[0]);
        declaredMethod.setAccessible(true);
        Object invoke = declaredMethod.invoke(device, new Object[0]);
        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) invoke).intValue();
        Log.i(TAG, "[disconnect]: method called result =" + intValue);
        return intValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean invokeMethod(Class<?> clz, BluetoothProfile obj, boolean connect, BluetoothDevice device) {
        Method declaredMethod;
        if (!connect) {
            declaredMethod = clz.getDeclaredMethod("disconnect", BluetoothDevice.class);
        } else {
            declaredMethod = clz.getDeclaredMethod(SentryOkHttpEventListener.CONNECT_EVENT, BluetoothDevice.class);
        }
        declaredMethod.setAccessible(true);
        Object invoke = declaredMethod.invoke(obj, device);
        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) invoke).booleanValue();
    }

    private final void setPriority(BluetoothA2dp a2dp, BluetoothDevice device, int priority) {
        try {
            Method method = BluetoothA2dp.class.getMethod("setPriority", BluetoothDevice.class, Integer.TYPE);
            method.setAccessible(true);
            method.invoke(a2dp, device, Integer.valueOf(priority));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void addOnDeviceConnectedListener(Function3<? super Context, ? super BluetoothDevice, ? super Boolean, Unit> listener2) {
        Intrinsics.checkNotNullParameter(listener2, "listener");
        monitor.addOnDeviceConnectedListener(listener2);
    }

    public final void removeOnDeviceConnectedListener(Function3<? super Context, ? super BluetoothDevice, ? super Boolean, Unit> listener2) {
        Intrinsics.checkNotNullParameter(listener2, "listener");
        monitor.removeOnDeviceConnectedListener(listener2);
    }

    public final void testDeviceInConnection(final BluetoothDevice targetDevice, final Function1<? super Boolean, Unit> listener2) {
        Intrinsics.checkNotNullParameter(targetDevice, "targetDevice");
        Intrinsics.checkNotNullParameter(listener2, "listener");
        final BluetoothLeScanner bluetoothLeScanner = bluetoothAdapter.getBluetoothLeScanner();
        bluetoothLeScanner.startScan(new ScanCallback() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$testDeviceInConnection$scanCallback$1
            @Override // android.bluetooth.le.ScanCallback
            public void onScanResult(int callbackType, ScanResult result) {
                Intrinsics.checkNotNullParameter(result, "result");
                super.onScanResult(callbackType, result);
                ScanRecord scanRecord = result.getScanRecord();
                String deviceName = scanRecord != null ? scanRecord.getDeviceName() : null;
                Log.i(BluetoothManager.TAG, "onScanResult: " + deviceName);
                if (Intrinsics.areEqual(deviceName, targetDevice.getName())) {
                    listener2.invoke(true);
                    bluetoothLeScanner.stopScan(this);
                }
            }

            @Override // android.bluetooth.le.ScanCallback
            public void onBatchScanResults(List<ScanResult> results) {
                super.onBatchScanResults(results);
            }

            @Override // android.bluetooth.le.ScanCallback
            public void onScanFailed(int errorCode) {
                super.onScanFailed(errorCode);
                listener2.invoke(false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object changeDeviceConnection(boolean z, BluetoothDevice bluetoothDevice, Continuation<? super Boolean> continuation) {
        Object m5698constructorimpl;
        boolean invokeMethod;
        boolean z2 = true;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        BluetoothManager bluetoothManager = INSTANCE;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (monitor.getProxy() == null) {
                invokeMethod = false;
            } else if (monitor.getProfile() == 1) {
                Log.i(TAG, "changeDeviceConnection: device:HEADSET");
                BluetoothProfile proxy = monitor.getProxy();
                Intrinsics.checkNotNull(proxy);
                invokeMethod = bluetoothManager.invokeMethod(BluetoothHeadset.class, proxy, z, bluetoothDevice);
            } else {
                Log.i(TAG, "changeDeviceConnection: device:A2DP");
                BluetoothProfile proxy2 = monitor.getProxy();
                Intrinsics.checkNotNull(proxy2);
                invokeMethod = bluetoothManager.invokeMethod(BluetoothA2dp.class, proxy2, z, bluetoothDevice);
            }
            String str = "[connect]";
            Log.i(TAG, (z ? "[connect]" : "[disconnect]") + " Internal: " + invokeMethod);
            Thread.sleep(1000L);
            if (z) {
                z2 = bluetoothManager.isDeviceConnected(bluetoothDevice);
            } else if (bluetoothManager.isDeviceConnected(bluetoothDevice)) {
                z2 = false;
            }
            String str2 = TAG;
            StringBuilder sb = new StringBuilder();
            if (!z) {
                str = "[disconnect]";
            }
            Log.i(str2, sb.append(str).append(" double check: ").append(invokeMethod).toString());
            if (invokeMethod && z2) {
                cancellableContinuationImpl2.resume(Boxing.boxBoolean(invokeMethod), null);
            } else {
                cancellableContinuationImpl2.resume(Boxing.boxBoolean(false), null);
            }
            m5698constructorimpl = Result.m5698constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5701exceptionOrNullimpl(m5698constructorimpl) != null && (!cancellableContinuationImpl2.isCompleted() || !cancellableContinuationImpl2.isCancelled())) {
            cancellableContinuationImpl2.resume(Boxing.boxBoolean(false), null);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
