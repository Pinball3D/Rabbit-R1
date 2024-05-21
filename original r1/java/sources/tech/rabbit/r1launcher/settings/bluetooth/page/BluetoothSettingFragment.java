package tech.rabbit.r1launcher.settings.bluetooth.page;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewGroupKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import com.rubensousa.dpadrecyclerview.spacing.DpadLinearSpacingDecoration;
import io.sentry.protocol.Device;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.databinding.FragmentBluetoothSettingBinding;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;
import tech.rabbit.r1launcher.models.settings.BluetoothListData;
import tech.rabbit.r1launcher.settings.adapter.BluetoothSettingAdapter;
import tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager;
import tech.rabbit.r1launcher.widget.SettingTitle;

/* compiled from: BluetoothSettingFragment.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0010H\u0002J\b\u0010\u0015\u001a\u00020\u0012H\u0002J\b\u0010\u0016\u001a\u00020\u0012H\u0002J\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00100\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00100\u001aH\u0003J\b\u0010\u001b\u001a\u00020\u0012H\u0002J\b\u0010\u001c\u001a\u00020\u0011H\u0002J\b\u0010\u001d\u001a\u00020\u0012H\u0002J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 H\u0002J\b\u0010!\u001a\u00020\u0012H\u0002J\b\u0010\"\u001a\u00020\u0012H\u0002J\u0010\u0010#\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020 H\u0002J&\u0010$\u001a\u0004\u0018\u00010 2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\b\u0010+\u001a\u00020\u0012H\u0016J\b\u0010,\u001a\u00020\u0012H\u0016J\b\u0010-\u001a\u00020\u0012H\u0016J\u000e\u0010.\u001a\u00020\u0012H\u0083@¢\u0006\u0002\u0010/J\b\u00100\u001a\u00020\u0012H\u0003J\b\u00101\u001a\u00020\u0012H\u0003J\b\u00102\u001a\u00020\u0012H\u0003R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\fX\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u000e8\u0002X\u0083\u0004¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothSettingFragment;", "Landroidx/fragment/app/Fragment;", "()V", "adapter", "Ltech/rabbit/r1launcher/settings/adapter/BluetoothSettingAdapter;", "binding", "Ltech/rabbit/r1launcher/databinding/FragmentBluetoothSettingBinding;", "cachePos", "", "dataList", "Ljava/util/ArrayList;", "Ltech/rabbit/r1launcher/models/settings/BluetoothListData;", "Lkotlin/collections/ArrayList;", "listener", "Lkotlin/Function3;", "Landroid/content/Context;", "Landroid/bluetooth/BluetoothDevice;", "", "", "addFirstMineDevice", "bluetoothDevice", "disableBluetooth", "enableBluetooth", "filterDataNotExist", "", "deviceList", "", "findMyDeviceList", "hasMyDevicesTitleInList", "initData", "initFocus", "view", "Landroid/view/View;", "initListener", "initView", "isChildOfRecyclerView", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onPause", "onResume", "queryDeviceUpdateState", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startScan", "stopScan", "testConnection", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothSettingFragment extends Fragment {
    public static final int $stable = 8;
    private BluetoothSettingAdapter adapter;
    private FragmentBluetoothSettingBinding binding;
    private final ArrayList<BluetoothListData> dataList = new ArrayList<>();
    private int cachePos = -1;
    private final Function3<Context, BluetoothDevice, Boolean, Unit> listener = new Function3<Context, BluetoothDevice, Boolean, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$listener$1
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(3);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(Context context, BluetoothDevice bluetoothDevice, Boolean bool) {
            invoke(context, bluetoothDevice, bool.booleanValue());
            return Unit.INSTANCE;
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x00a5, code lost:
        
            r4 = r3.this$0.adapter;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00e5, code lost:
        
            r5 = r3.this$0.adapter;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void invoke(android.content.Context r4, android.bluetooth.BluetoothDevice r5, boolean r6) {
            /*
                Method dump skipped, instructions count: 353
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$listener$1.invoke(android.content.Context, android.bluetooth.BluetoothDevice, boolean):void");
        }
    };

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = inflater.inflate(R.layout.fragment_bluetooth_setting, (ViewGroup) null);
        this.binding = FragmentBluetoothSettingBinding.bind(inflate);
        initView();
        Intrinsics.checkNotNull(inflate);
        initFocus(inflate);
        initListener();
        BluetoothManager bluetoothManager = BluetoothManager.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        bluetoothManager.initMonitor(requireContext);
        testConnection();
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (BluetoothManager.INSTANCE.isBluetoothOpened()) {
            startScan();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (BluetoothManager.INSTANCE.isBluetoothOpened()) {
            stopScan();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        BluetoothManager.INSTANCE.removeOnDeviceConnectedListener(this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addFirstMineDevice(BluetoothDevice bluetoothDevice) {
        Object obj;
        SettingTitle settingTitle;
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding;
        DpadRecyclerView dpadRecyclerView;
        DpadRecyclerView dpadRecyclerView2;
        SettingTitle settingTitle2;
        BluetoothSettingAdapter bluetoothSettingAdapter;
        Iterator<T> it = this.dataList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it.next();
                if (Intrinsics.areEqual(((BluetoothListData) obj).getDevice(), bluetoothDevice)) {
                    break;
                }
            }
        }
        BluetoothListData bluetoothListData = (BluetoothListData) obj;
        if (bluetoothListData != null) {
            this.dataList.remove(bluetoothListData);
        }
        ArrayList<BluetoothListData> arrayList = this.dataList;
        BluetoothListData bluetoothListData2 = new BluetoothListData(0);
        String string = getString(R.string.my_devices);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        bluetoothListData2.setTitle(string);
        Unit unit = Unit.INSTANCE;
        arrayList.add(1, bluetoothListData2);
        ArrayList<BluetoothListData> arrayList2 = this.dataList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator<T> it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            BluetoothDevice device = ((BluetoothListData) it2.next()).getDevice();
            arrayList3.add(device != null ? device.getAddress() : null);
        }
        if (!arrayList3.contains(bluetoothDevice.getAddress())) {
            ArrayList<BluetoothListData> arrayList4 = this.dataList;
            BluetoothListData bluetoothListData3 = new BluetoothListData(1);
            bluetoothListData3.setDevice(bluetoothDevice);
            bluetoothListData3.setMyDevice(true);
            bluetoothListData3.setConnected(true);
            Unit unit2 = Unit.INSTANCE;
            arrayList4.add(2, bluetoothListData3);
            FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding2 = this.binding;
            if (fragmentBluetoothSettingBinding2 != null && (settingTitle2 = fragmentBluetoothSettingBinding2.st) != null && !settingTitle2.isFocused() && (bluetoothSettingAdapter = this.adapter) != null) {
                bluetoothSettingAdapter.setCurrentFocusPos(2);
            }
        }
        BluetoothSettingAdapter bluetoothSettingAdapter2 = this.adapter;
        if (bluetoothSettingAdapter2 != null) {
            bluetoothSettingAdapter2.notifyDataSetChanged();
        }
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding3 = this.binding;
        if (fragmentBluetoothSettingBinding3 != null && (dpadRecyclerView2 = fragmentBluetoothSettingBinding3.rv) != null) {
            dpadRecyclerView2.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothSettingFragment.addFirstMineDevice$lambda$4(BluetoothSettingFragment.this);
                }
            });
        }
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding4 = this.binding;
        if (fragmentBluetoothSettingBinding4 == null || (settingTitle = fragmentBluetoothSettingBinding4.st) == null || settingTitle.isFocused() || (fragmentBluetoothSettingBinding = this.binding) == null || (dpadRecyclerView = fragmentBluetoothSettingBinding.rv) == null) {
            return;
        }
        dpadRecyclerView.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                BluetoothSettingFragment.addFirstMineDevice$lambda$6(BluetoothSettingFragment.this);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addFirstMineDevice$lambda$4(BluetoothSettingFragment this$0) {
        DpadRecyclerView dpadRecyclerView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding = this$0.binding;
        if (fragmentBluetoothSettingBinding == null || (dpadRecyclerView = fragmentBluetoothSettingBinding.rv) == null) {
            return;
        }
        dpadRecyclerView.scrollToPosition(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addFirstMineDevice$lambda$6(BluetoothSettingFragment this$0) {
        DpadRecyclerView dpadRecyclerView;
        View childAt;
        View findViewById;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            Result.Companion companion = Result.INSTANCE;
            FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding = this$0.binding;
            Result.m5698constructorimpl((fragmentBluetoothSettingBinding == null || (dpadRecyclerView = fragmentBluetoothSettingBinding.rv) == null || (childAt = dpadRecyclerView.getChildAt(2)) == null || (findViewById = childAt.findViewById(R.id.tv_title)) == null) ? null : Boolean.valueOf(findViewById.requestFocus()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
    }

    private final void initListener() {
        BluetoothManager.INSTANCE.addOnDeviceConnectedListener(this.listener);
        BluetoothManager.INSTANCE.setOnDeviceUnbind(new Function1<BluetoothDevice, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$initListener$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(BluetoothDevice bluetoothDevice) {
                invoke2(bluetoothDevice);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Code restructure failed: missing block: B:31:0x009e, code lost:
            
                r7 = r7.this$0.adapter;
             */
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void invoke2(android.bluetooth.BluetoothDevice r8) {
                /*
                    r7 = this;
                    java.lang.String r0 = "bluetoothDevice"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
                    tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment r0 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.this
                    java.util.ArrayList r0 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.access$getDataList$p(r0)
                    java.lang.Iterable r0 = (java.lang.Iterable) r0
                    java.util.Iterator r0 = r0.iterator()
                L11:
                    boolean r1 = r0.hasNext()
                    r2 = 0
                    if (r1 == 0) goto L2a
                    java.lang.Object r1 = r0.next()
                    r3 = r1
                    tech.rabbit.r1launcher.models.settings.BluetoothListData r3 = (tech.rabbit.r1launcher.models.settings.BluetoothListData) r3
                    android.bluetooth.BluetoothDevice r3 = r3.getDevice()
                    boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r8)
                    if (r3 == 0) goto L11
                    goto L2b
                L2a:
                    r1 = r2
                L2b:
                    tech.rabbit.r1launcher.models.settings.BluetoothListData r1 = (tech.rabbit.r1launcher.models.settings.BluetoothListData) r1
                    if (r1 == 0) goto La9
                    tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment r8 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.this
                    tech.rabbit.r1launcher.settings.adapter.BluetoothSettingAdapter r8 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.access$getAdapter$p(r8)
                    if (r8 == 0) goto L3a
                    r8.remove(r1)
                L3a:
                    tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment r8 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.this
                    java.util.ArrayList r8 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.access$getDataList$p(r8)
                    java.lang.Iterable r8 = (java.lang.Iterable) r8
                    java.util.Iterator r8 = r8.iterator()
                L46:
                    boolean r0 = r8.hasNext()
                    if (r0 == 0) goto L5a
                    java.lang.Object r0 = r8.next()
                    r1 = r0
                    tech.rabbit.r1launcher.models.settings.BluetoothListData r1 = (tech.rabbit.r1launcher.models.settings.BluetoothListData) r1
                    boolean r1 = r1.getBond()
                    if (r1 == 0) goto L46
                    goto L5b
                L5a:
                    r0 = r2
                L5b:
                    if (r0 != 0) goto La9
                    tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment r8 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.this
                    java.util.ArrayList r8 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.access$getDataList$p(r8)
                    java.lang.Iterable r8 = (java.lang.Iterable) r8
                    tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment r0 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.this
                    java.util.Iterator r8 = r8.iterator()
                L6b:
                    boolean r1 = r8.hasNext()
                    if (r1 == 0) goto L9a
                    java.lang.Object r1 = r8.next()
                    r3 = r1
                    tech.rabbit.r1launcher.models.settings.BluetoothListData r3 = (tech.rabbit.r1launcher.models.settings.BluetoothListData) r3
                    int r4 = r3.getItemType()
                    if (r4 != 0) goto L6b
                    java.lang.String r3 = r3.getTitle()
                    java.lang.CharSequence r3 = (java.lang.CharSequence) r3
                    int r4 = tech.rabbit.r1launcher.R.string.my_devices
                    java.lang.String r4 = r0.getString(r4)
                    java.lang.String r5 = "getString(...)"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
                    java.lang.CharSequence r4 = (java.lang.CharSequence) r4
                    r5 = 0
                    r6 = 2
                    boolean r3 = kotlin.text.StringsKt.contains$default(r3, r4, r5, r6, r2)
                    if (r3 == 0) goto L6b
                    r2 = r1
                L9a:
                    tech.rabbit.r1launcher.models.settings.BluetoothListData r2 = (tech.rabbit.r1launcher.models.settings.BluetoothListData) r2
                    if (r2 == 0) goto La9
                    tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment r7 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.this
                    tech.rabbit.r1launcher.settings.adapter.BluetoothSettingAdapter r7 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.access$getAdapter$p(r7)
                    if (r7 == 0) goto La9
                    r7.remove(r2)
                La9:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$initListener$1.invoke2(android.bluetooth.BluetoothDevice):void");
            }
        });
    }

    private final void startScan() {
        BluetoothManager bluetoothManager = BluetoothManager.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        bluetoothManager.startScan(requireContext);
        BluetoothManager.INSTANCE.setOnDeviceScanResultChange(new BluetoothSettingFragment$startScan$1(this));
    }

    private final void stopScan() {
        BluetoothManager bluetoothManager = BluetoothManager.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        bluetoothManager.stopScan(requireContext);
        BluetoothManager.INSTANCE.setOnDeviceScanResultChange(new Function1<BluetoothDevice, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$stopScan$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(BluetoothDevice it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(BluetoothDevice bluetoothDevice) {
                invoke2(bluetoothDevice);
                return Unit.INSTANCE;
            }
        });
    }

    private final void initFocus(View view) {
        view.getViewTreeObserver().addOnGlobalFocusChangeListener(new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$$ExternalSyntheticLambda4
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public final void onGlobalFocusChanged(View view2, View view3) {
                BluetoothSettingFragment.initFocus$lambda$8(BluetoothSettingFragment.this, view2, view3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initFocus$lambda$8(final BluetoothSettingFragment this$0, View view, View view2) {
        DpadRecyclerView dpadRecyclerView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isDetached() || view2 == null || this$0.isChildOfRecyclerView(view2)) {
            return;
        }
        BluetoothSettingAdapter bluetoothSettingAdapter = this$0.adapter;
        final int currentFocusPos = bluetoothSettingAdapter != null ? bluetoothSettingAdapter.getCurrentFocusPos() : -1;
        BluetoothSettingAdapter bluetoothSettingAdapter2 = this$0.adapter;
        if (bluetoothSettingAdapter2 != null) {
            bluetoothSettingAdapter2.setCurrentFocusPos(-1);
        }
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding = this$0.binding;
        if (fragmentBluetoothSettingBinding == null || (dpadRecyclerView = fragmentBluetoothSettingBinding.rv) == null) {
            return;
        }
        dpadRecyclerView.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BluetoothSettingFragment.initFocus$lambda$8$lambda$7(currentFocusPos, this$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initFocus$lambda$8$lambda$7(int i, BluetoothSettingFragment this$0) {
        BluetoothSettingAdapter bluetoothSettingAdapter;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == -1 || (bluetoothSettingAdapter = this$0.adapter) == null) {
            return;
        }
        bluetoothSettingAdapter.notifyItemChanged(i);
    }

    private final void initView() {
        DpadRecyclerView dpadRecyclerView;
        DpadRecyclerView dpadRecyclerView2;
        DpadRecyclerView dpadRecyclerView3;
        DpadRecyclerView dpadRecyclerView4;
        DpadRecyclerView dpadRecyclerView5;
        DpadRecyclerView dpadRecyclerView6;
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding = this.binding;
        RecyclerView.ItemAnimator itemAnimator = (fragmentBluetoothSettingBinding == null || (dpadRecyclerView6 = fragmentBluetoothSettingBinding.rv) == null) ? null : dpadRecyclerView6.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.setChangeDuration(0L);
        }
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding2 = this.binding;
        RecyclerView.ItemAnimator itemAnimator2 = (fragmentBluetoothSettingBinding2 == null || (dpadRecyclerView5 = fragmentBluetoothSettingBinding2.rv) == null) ? null : dpadRecyclerView5.getItemAnimator();
        if (itemAnimator2 != null) {
            itemAnimator2.setMoveDuration(0L);
        }
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding3 = this.binding;
        RecyclerView.ItemAnimator itemAnimator3 = (fragmentBluetoothSettingBinding3 == null || (dpadRecyclerView4 = fragmentBluetoothSettingBinding3.rv) == null) ? null : dpadRecyclerView4.getItemAnimator();
        if (itemAnimator3 != null) {
            itemAnimator3.setAddDuration(0L);
        }
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding4 = this.binding;
        RecyclerView.ItemAnimator itemAnimator4 = (fragmentBluetoothSettingBinding4 == null || (dpadRecyclerView3 = fragmentBluetoothSettingBinding4.rv) == null) ? null : dpadRecyclerView3.getItemAnimator();
        if (itemAnimator4 != null) {
            itemAnimator4.setRemoveDuration(0L);
        }
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding5 = this.binding;
        SettingTitle settingTitle = fragmentBluetoothSettingBinding5 != null ? fragmentBluetoothSettingBinding5.st : null;
        if (settingTitle != null) {
            settingTitle.setOnKeyDownCallback(new Function1<Integer, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$initView$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                    invoke(num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(int i) {
                    FragmentActivity activity;
                    if ((i == 26 || i == 66 || i == 80) && (activity = BluetoothSettingFragment.this.getActivity()) != null) {
                        activity.finish();
                    }
                }
            });
        }
        this.adapter = new BluetoothSettingAdapter();
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding6 = this.binding;
        DpadRecyclerView dpadRecyclerView7 = fragmentBluetoothSettingBinding6 != null ? fragmentBluetoothSettingBinding6.rv : null;
        if (dpadRecyclerView7 != null) {
            dpadRecyclerView7.setAdapter(this.adapter);
        }
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding7 = this.binding;
        if (fragmentBluetoothSettingBinding7 != null && (dpadRecyclerView2 = fragmentBluetoothSettingBinding7.rv) != null) {
            dpadRecyclerView2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z) {
                    BluetoothSettingFragment.initView$lambda$9(view, z);
                }
            });
        }
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding8 = this.binding;
        if (fragmentBluetoothSettingBinding8 != null && (dpadRecyclerView = fragmentBluetoothSettingBinding8.rv) != null) {
            dpadRecyclerView.addItemDecoration(DpadLinearSpacingDecoration.Companion.create$default(DpadLinearSpacingDecoration.INSTANCE, UiExtensionsKt.getDp(9), 0, 0, 6, null));
        }
        BluetoothSettingAdapter bluetoothSettingAdapter = this.adapter;
        if (bluetoothSettingAdapter != null) {
            bluetoothSettingAdapter.setOnConfirmKeyClick(new Function2<BluetoothListData, Integer, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$initView$3
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(BluetoothListData bluetoothListData, Integer num) {
                    invoke(bluetoothListData, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(BluetoothListData data, int i) {
                    BluetoothSettingAdapter bluetoothSettingAdapter2;
                    Intrinsics.checkNotNullParameter(data, "data");
                    int itemType = data.getItemType();
                    if (itemType == 1) {
                        BluetoothSettingFragment.this.cachePos = i;
                        Context context = BluetoothSettingFragment.this.getContext();
                        if (context != null) {
                            Intent intent = new Intent(BluetoothSettingFragment.this.getContext(), (Class<?>) BluetoothAdvanceActivity.class);
                            intent.putExtra(Device.TYPE, data.getDevice());
                            context.startActivity(intent);
                            return;
                        }
                        return;
                    }
                    if (itemType != 3) {
                        return;
                    }
                    boolean z = !data.getSwitch();
                    data.setSwitch(z);
                    BluetoothManager bluetoothManager = BluetoothManager.INSTANCE;
                    Context requireContext = BluetoothSettingFragment.this.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                    bluetoothManager.toggleBluetooth(requireContext, z);
                    bluetoothSettingAdapter2 = BluetoothSettingFragment.this.adapter;
                    if (bluetoothSettingAdapter2 != null) {
                        bluetoothSettingAdapter2.notifyItemChanged(i);
                    }
                    if (!z) {
                        BluetoothSettingFragment.this.disableBluetooth();
                    } else {
                        BluetoothSettingFragment.this.enableBluetooth();
                    }
                }
            });
        }
        initData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$9(View view, boolean z) {
        Log.i("TAG", "initView: rv " + z);
    }

    private final void initData() {
        DpadRecyclerView dpadRecyclerView;
        this.dataList.clear();
        ArrayList<BluetoothListData> arrayList = this.dataList;
        BluetoothListData bluetoothListData = new BluetoothListData(3);
        bluetoothListData.setSwitch(BluetoothManager.INSTANCE.isBluetoothOpened());
        arrayList.add(bluetoothListData);
        if (BluetoothManager.INSTANCE.isBluetoothOpened()) {
            List<BluetoothDevice> queryMyDevices = BluetoothManager.INSTANCE.queryMyDevices();
            if (!queryMyDevices.isEmpty()) {
                ArrayList<BluetoothListData> arrayList2 = this.dataList;
                BluetoothListData bluetoothListData2 = new BluetoothListData(0);
                String string = getString(R.string.my_devices);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                bluetoothListData2.setTitle(string);
                arrayList2.add(bluetoothListData2);
                ArrayList<BluetoothListData> arrayList3 = this.dataList;
                List<BluetoothDevice> list = queryMyDevices;
                ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                for (BluetoothDevice bluetoothDevice : list) {
                    BluetoothListData bluetoothListData3 = new BluetoothListData(1);
                    bluetoothListData3.setDevice(bluetoothDevice);
                    bluetoothListData3.setBond(true);
                    bluetoothListData3.setMyDevice(true);
                    bluetoothListData3.setConnected(BluetoothManager.INSTANCE.isDeviceConnected(bluetoothDevice));
                    arrayList4.add(bluetoothListData3);
                }
                arrayList3.addAll(arrayList4);
            }
            ArrayList<BluetoothListData> arrayList5 = this.dataList;
            BluetoothListData bluetoothListData4 = new BluetoothListData(0);
            String string2 = getString(R.string.other);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            bluetoothListData4.setTitle(string2);
            bluetoothListData4.setLoading(true);
            arrayList5.add(bluetoothListData4);
        }
        BluetoothSettingAdapter bluetoothSettingAdapter = this.adapter;
        if (bluetoothSettingAdapter != null) {
            bluetoothSettingAdapter.setNewData(this.dataList);
        }
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding = this.binding;
        if (fragmentBluetoothSettingBinding == null || (dpadRecyclerView = fragmentBluetoothSettingBinding.rv) == null) {
            return;
        }
        dpadRecyclerView.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                BluetoothSettingFragment.initData$lambda$15(BluetoothSettingFragment.this);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initData$lambda$15(BluetoothSettingFragment this$0) {
        DpadRecyclerView dpadRecyclerView;
        View view;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding = this$0.binding;
        if (fragmentBluetoothSettingBinding == null || (dpadRecyclerView = fragmentBluetoothSettingBinding.rv) == null || (view = ViewGroupKt.get(dpadRecyclerView, 0)) == null) {
            return;
        }
        view.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disableBluetooth() {
        int size = this.dataList.size() - 1;
        BluetoothListData bluetoothListData = this.dataList.get(0);
        Intrinsics.checkNotNullExpressionValue(bluetoothListData, "get(...)");
        this.dataList.clear();
        this.dataList.add(bluetoothListData);
        BluetoothSettingAdapter bluetoothSettingAdapter = this.adapter;
        if (bluetoothSettingAdapter != null) {
            bluetoothSettingAdapter.notifyItemRangeRemoved(1, size);
        }
        BluetoothManager.INSTANCE.setOnDeviceScanResultChange(new Function1<BluetoothDevice, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$disableBluetooth$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(BluetoothDevice it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(BluetoothDevice bluetoothDevice) {
                invoke2(bluetoothDevice);
                return Unit.INSTANCE;
            }
        });
        BluetoothManager bluetoothManager = BluetoothManager.INSTANCE;
        Context context = getContext();
        if (context == null) {
            return;
        }
        bluetoothManager.stopScan(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void enableBluetooth() {
        testConnection();
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new BluetoothSettingFragment$enableBluetooth$1(this, null), 3, null);
        ArrayList<BluetoothListData> arrayList = this.dataList;
        BluetoothListData bluetoothListData = new BluetoothListData(0);
        String string = getString(R.string.other);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        bluetoothListData.setTitle(string);
        bluetoothListData.setLoading(true);
        arrayList.add(bluetoothListData);
        BluetoothSettingAdapter bluetoothSettingAdapter = this.adapter;
        if (bluetoothSettingAdapter != null) {
            bluetoothSettingAdapter.notifyItemRangeChanged(1, this.dataList.size() - 1);
        }
        startScan();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void findMyDeviceList() {
        List<BluetoothDevice> queryMyDevices = BluetoothManager.INSTANCE.queryMyDevices();
        if (!queryMyDevices.isEmpty()) {
            if (!hasMyDevicesTitleInList()) {
                ArrayList<BluetoothListData> arrayList = this.dataList;
                BluetoothListData bluetoothListData = new BluetoothListData(0);
                String string = getString(R.string.my_devices);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                bluetoothListData.setTitle(string);
                Unit unit = Unit.INSTANCE;
                arrayList.add(1, bluetoothListData);
            }
            List<BluetoothDevice> filterDataNotExist = filterDataNotExist(queryMyDevices);
            ArrayList<BluetoothListData> arrayList2 = this.dataList;
            List<BluetoothDevice> list = filterDataNotExist;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            for (BluetoothDevice bluetoothDevice : list) {
                BluetoothListData bluetoothListData2 = new BluetoothListData(1);
                bluetoothListData2.setDevice(bluetoothDevice);
                bluetoothListData2.setBond(true);
                bluetoothListData2.setMyDevice(true);
                bluetoothListData2.setConnected(BluetoothManager.INSTANCE.isDeviceConnected(bluetoothDevice));
                arrayList3.add(bluetoothListData2);
            }
            arrayList2.addAll(2, arrayList3);
            BluetoothSettingAdapter bluetoothSettingAdapter = this.adapter;
            if (bluetoothSettingAdapter != null) {
                bluetoothSettingAdapter.notifyItemRangeChanged(1, queryMyDevices.size() + 1);
            }
        }
    }

    private final List<BluetoothDevice> filterDataNotExist(List<BluetoothDevice> deviceList) {
        List<BluetoothDevice> mutableList = CollectionsKt.toMutableList((Collection) deviceList);
        CollectionsKt.removeAll((List) mutableList, (Function1) new Function1<BluetoothDevice, Boolean>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$filterDataNotExist$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(BluetoothDevice bd) {
                ArrayList arrayList;
                Object obj;
                Intrinsics.checkNotNullParameter(bd, "bd");
                arrayList = BluetoothSettingFragment.this.dataList;
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    BluetoothListData bluetoothListData = (BluetoothListData) next;
                    BluetoothDevice device = bluetoothListData.getDevice();
                    if (Intrinsics.areEqual(device != null ? device.getName() : null, bd.getName())) {
                        BluetoothDevice device2 = bluetoothListData.getDevice();
                        if (Intrinsics.areEqual(device2 != null ? device2.getAddress() : null, bd.getAddress())) {
                            obj = next;
                            break;
                        }
                    }
                }
                return Boolean.valueOf(obj != null);
            }
        });
        return mutableList;
    }

    private final boolean isChildOfRecyclerView(View view) {
        Log.i(ViewHierarchyNode.JsonKeys.TAG, "isChildOfRecyclerView: ");
        if (view.getParent() instanceof RecyclerView) {
            return true;
        }
        if (!(view.getParent() instanceof View)) {
            return false;
        }
        Object parent = view.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
        return isChildOfRecyclerView((View) parent);
    }

    private final void testConnection() {
        if (BluetoothManager.INSTANCE.isBluetoothOpened()) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new BluetoothSettingFragment$testConnection$1(this, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Type inference failed for: r9v11, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object queryDeviceUpdateState(kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.queryDeviceUpdateState(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void queryDeviceUpdateState$lambda$25$lambda$24(BluetoothSettingFragment this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BluetoothSettingAdapter bluetoothSettingAdapter = this$0.adapter;
        if (bluetoothSettingAdapter != null) {
            bluetoothSettingAdapter.notifyItemChanged(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean hasMyDevicesTitleInList() {
        Iterable data;
        BluetoothSettingAdapter bluetoothSettingAdapter = this.adapter;
        Object obj = null;
        if (bluetoothSettingAdapter != null && (data = bluetoothSettingAdapter.getData()) != null) {
            Iterator it = data.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                BluetoothListData bluetoothListData = (BluetoothListData) next;
                if (bluetoothListData.getItemType() == 0 && Intrinsics.areEqual(bluetoothListData.getTitle(), getString(R.string.my_devices))) {
                    obj = next;
                    break;
                }
            }
            obj = (BluetoothListData) obj;
        }
        return obj != null;
    }
}
