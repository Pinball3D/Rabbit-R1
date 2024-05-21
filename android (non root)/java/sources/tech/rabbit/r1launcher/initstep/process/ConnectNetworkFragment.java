package tech.rabbit.r1launcher.initstep.process;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.ScanResult;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.autofill.HintConstants;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.components.wifiutils.WifiUtils;
import tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionErrorCode;
import tech.rabbit.r1launcher.components.wifiutils.wifiScan.ScanResultsListener;
import tech.rabbit.r1launcher.factorymode.FactoryModeActivity;
import tech.rabbit.r1launcher.initstep.InitStepActivity;
import tech.rabbit.r1launcher.initstep.OnKeyUpListener;
import tech.rabbit.r1launcher.initstep.model.Wifi;
import tech.rabbit.r1launcher.initstep.utils.Constants;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;
import tech.rabbit.r1launcher.initstep.utils.Utils;
import tech.rabbit.r1launcher.settings.network2.receiver.SimStateReceiver;
import tech.rabbit.r1launcher.settings.utils.SystemControllerUtil;
import tech.rabbit.r1launcher.widget.FactoryModeVerifyView;

/* compiled from: ConnectNetworkFragment.kt */
@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001YB\u0005¢\u0006\u0002\u0010\u0004J\u0010\u00101\u001a\u00020\u00102\u0006\u00102\u001a\u00020\fH\u0002J\"\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u00102\b\u00107\u001a\u0004\u0018\u000108H\u0016J\u0010\u00109\u001a\u0002042\u0006\u0010:\u001a\u00020;H\u0016J&\u0010<\u001a\u0004\u0018\u00010=2\u0006\u0010>\u001a\u00020?2\b\u0010@\u001a\u0004\u0018\u00010A2\b\u0010B\u001a\u0004\u0018\u00010CH\u0016J\b\u0010D\u001a\u000204H\u0016J\b\u0010E\u001a\u000204H\u0016J\u001a\u0010F\u001a\u0002042\u0006\u0010G\u001a\u00020\u00102\b\u0010H\u001a\u0004\u0018\u00010IH\u0016J\b\u0010J\u001a\u000204H\u0016J\b\u0010K\u001a\u000204H\u0016J\b\u0010L\u001a\u000204H\u0016J\b\u0010M\u001a\u000204H\u0016J\u001a\u0010N\u001a\u0002042\u0006\u0010O\u001a\u00020=2\b\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u0016\u0010P\u001a\u0002042\f\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u000f0\"H\u0002J\b\u0010R\u001a\u000204H\u0002J\u000e\u0010S\u001a\u0002042\u0006\u0010+\u001a\u00020,J\b\u0010T\u001a\u000204H\u0002J\b\u0010U\u001a\u000204H\u0002J\u0010\u0010V\u001a\u00020\u00102\u0006\u0010W\u001a\u00020\u0010H\u0002J\b\u0010X\u001a\u000204H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R'\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R'\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0016\u0010\u0012R'\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u0019\u0010\u0012R'\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0014\u001a\u0004\b\u001c\u0010\u0012R'\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0014\u001a\u0004\b\u001f\u0010\u0012R-\u0010!\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e0\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u0014\u001a\u0004\b#\u0010$R\u0014\u0010&\u001a\b\u0012\u0004\u0012\u00020\u000f0'X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006Z"}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;", "Landroidx/fragment/app/Fragment;", "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;", "Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;", "()V", "adapter", "Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;", "fmvvLauncher", "Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;", "isClickedUseWifi", "", "lvNetworkOptions", "Landroid/widget/ListView;", "optionChangeNetwork", "Lkotlin/Pair;", "Ltech/rabbit/r1launcher/initstep/model/Wifi;", "", "getOptionChangeNetwork", "()Lkotlin/Pair;", "optionChangeNetwork$delegate", "Lkotlin/Lazy;", "optionConnectToWifi", "getOptionConnectToWifi", "optionConnectToWifi$delegate", "optionReEnter", "getOptionReEnter", "optionReEnter$delegate", "optionRetry", "getOptionRetry", "optionRetry$delegate", "optionUseCellular", "getOptionUseCellular", "optionUseCellular$delegate", "options", "", "getOptions", "()Ljava/util/List;", "options$delegate", "scanWifiResultCache", "", "scrollAnimator", "Landroid/animation/ValueAnimator;", "scrollTopMargin", "showType", "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;", "tvTip", "Landroid/widget/TextView;", "wifiScanTimer", "Landroid/os/Handler;", "getItemsHeightOfListView", "listView", "onActivityResult", "", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onAttach", "context", "Landroid/content/Context;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onDetach", "onKeyUp", "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onPause", "onResume", "onSimStateChangeToLoaded", "onSimStateChangeToNotLoaded", "onViewCreated", "view", "onWifiScanResult", "result", "scanWifiList", "setShowType", "setupUI", "showScanWifiResult", "switchSignalLevelResId", "level", "updateTipsTopMargin", "ShowType", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ConnectNetworkFragment extends Fragment implements OnKeyUpListener, SimStateReceiver.OnSimStateListener {
    public static final int $stable = 8;
    private final NetworkOptionsAdapter adapter;
    private FactoryModeVerifyView fmvvLauncher;
    private boolean isClickedUseWifi;
    private ListView lvNetworkOptions;

    /* renamed from: optionChangeNetwork$delegate, reason: from kotlin metadata */
    private final Lazy optionChangeNetwork;

    /* renamed from: optionConnectToWifi$delegate, reason: from kotlin metadata */
    private final Lazy optionConnectToWifi;

    /* renamed from: optionReEnter$delegate, reason: from kotlin metadata */
    private final Lazy optionReEnter;

    /* renamed from: optionRetry$delegate, reason: from kotlin metadata */
    private final Lazy optionRetry;

    /* renamed from: optionUseCellular$delegate, reason: from kotlin metadata */
    private final Lazy optionUseCellular;

    /* renamed from: options$delegate, reason: from kotlin metadata */
    private final Lazy options;
    private final List<Wifi> scanWifiResultCache;
    private ValueAnimator scrollAnimator;
    private final int scrollTopMargin;
    private ShowType showType;
    private TextView tvTip;
    private final Handler wifiScanTimer;

    public final void setShowType(ShowType showType) {
        Intrinsics.checkNotNullParameter(showType, "showType");
        this.showType = showType;
    }

    public ConnectNetworkFragment() {
        super(R.layout.fragment_connect_network);
        this.optionUseCellular = LazyKt.lazy(new Function0<Pair<? extends Wifi, ? extends Integer>>() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$optionUseCellular$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Pair<? extends Wifi, ? extends Integer> invoke() {
                String string = ConnectNetworkFragment.this.requireContext().getString(R.string.text_init_step_connect_network_option_name_use_cellular);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                return TuplesKt.to(new Wifi(string), Integer.valueOf(R.drawable.ic_4g));
            }
        });
        this.optionConnectToWifi = LazyKt.lazy(new Function0<Pair<? extends Wifi, ? extends Integer>>() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$optionConnectToWifi$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Pair<? extends Wifi, ? extends Integer> invoke() {
                String string = ConnectNetworkFragment.this.requireContext().getString(R.string.text_init_step_connect_network_option_name_connect_to_wifi);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                return TuplesKt.to(new Wifi(string), Integer.valueOf(R.drawable.ic_wifi_signal_level_3));
            }
        });
        this.optionRetry = LazyKt.lazy(new Function0<Pair<? extends Wifi, ? extends Integer>>() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$optionRetry$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Pair<? extends Wifi, ? extends Integer> invoke() {
                String string = ConnectNetworkFragment.this.requireContext().getString(R.string.text_init_step_connect_network_option_name_retry);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                return TuplesKt.to(new Wifi(string), Integer.valueOf(R.drawable.ic_connect_network_retry));
            }
        });
        this.optionReEnter = LazyKt.lazy(new Function0<Pair<? extends Wifi, ? extends Integer>>() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$optionReEnter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Pair<? extends Wifi, ? extends Integer> invoke() {
                String string = ConnectNetworkFragment.this.requireContext().getString(R.string.text_init_step_connect_network_option_name_reenter);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                return TuplesKt.to(new Wifi(string), Integer.valueOf(R.drawable.ic_connect_network_retry));
            }
        });
        this.optionChangeNetwork = LazyKt.lazy(new Function0<Pair<? extends Wifi, ? extends Integer>>() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$optionChangeNetwork$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Pair<? extends Wifi, ? extends Integer> invoke() {
                String string = ConnectNetworkFragment.this.requireContext().getString(R.string.text_init_step_connect_network_option_name_change_network);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                return TuplesKt.to(new Wifi(string), Integer.valueOf(R.drawable.ic_wifi_signal_level_3));
            }
        });
        this.options = LazyKt.lazy(new Function0<List<? extends Pair<? extends Wifi, ? extends Integer>>>() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$options$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends Pair<? extends Wifi, ? extends Integer>> invoke() {
                Pair optionUseCellular;
                Pair optionConnectToWifi;
                Pair optionChangeNetwork;
                Pair optionRetry;
                Pair optionReEnter;
                optionUseCellular = ConnectNetworkFragment.this.getOptionUseCellular();
                optionConnectToWifi = ConnectNetworkFragment.this.getOptionConnectToWifi();
                optionChangeNetwork = ConnectNetworkFragment.this.getOptionChangeNetwork();
                optionRetry = ConnectNetworkFragment.this.getOptionRetry();
                optionReEnter = ConnectNetworkFragment.this.getOptionReEnter();
                return CollectionsKt.listOf((Object[]) new Pair[]{optionUseCellular, optionConnectToWifi, optionChangeNetwork, optionRetry, optionReEnter});
            }
        });
        this.scrollTopMargin = UiExtensionsKt.getDp(7);
        this.wifiScanTimer = new Handler(Looper.getMainLooper());
        this.scanWifiResultCache = new ArrayList();
        this.adapter = new NetworkOptionsAdapter();
        this.showType = ShowType.SelectNetworkType.INSTANCE;
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyDown(int i, KeyEvent keyEvent) {
        OnKeyUpListener.DefaultImpls.onKeyDown(this, i, keyEvent);
    }

    /* compiled from: ConnectNetworkFragment.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;", "", "()V", "SelectNetworkType", "WifiConnectRetry", "WifiScanResult", "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;", "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;", "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiScanResult;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static abstract class ShowType {
        public static final int $stable = 0;

        public /* synthetic */ ShowType(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* compiled from: ConnectNetworkFragment.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;", "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class SelectNetworkType extends ShowType {
            public static final int $stable = 0;
            public static final SelectNetworkType INSTANCE = new SelectNetworkType();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof SelectNetworkType)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 2133146929;
            }

            public String toString() {
                return "SelectNetworkType";
            }

            private SelectNetworkType() {
                super(null);
            }
        }

        private ShowType() {
        }

        /* compiled from: ConnectNetworkFragment.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiScanResult;", "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class WifiScanResult extends ShowType {
            public static final int $stable = 0;
            public static final WifiScanResult INSTANCE = new WifiScanResult();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof WifiScanResult)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 611680970;
            }

            public String toString() {
                return "WifiScanResult";
            }

            private WifiScanResult() {
                super(null);
            }
        }

        /* compiled from: ConnectNetworkFragment.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;", "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;", "wifi", "Ltech/rabbit/r1launcher/initstep/model/Wifi;", HintConstants.AUTOFILL_HINT_PASSWORD, "", "errorType", "Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;", "(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V", "getErrorType", "()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;", "getPassword", "()Ljava/lang/String;", "getWifi", "()Ltech/rabbit/r1launcher/initstep/model/Wifi;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class WifiConnectRetry extends ShowType {
            public static final int $stable = Wifi.$stable;
            private final ConnectionErrorCode errorType;
            private final String password;
            private final Wifi wifi;

            public static /* synthetic */ WifiConnectRetry copy$default(WifiConnectRetry wifiConnectRetry, Wifi wifi, String str, ConnectionErrorCode connectionErrorCode, int i, Object obj) {
                if ((i & 1) != 0) {
                    wifi = wifiConnectRetry.wifi;
                }
                if ((i & 2) != 0) {
                    str = wifiConnectRetry.password;
                }
                if ((i & 4) != 0) {
                    connectionErrorCode = wifiConnectRetry.errorType;
                }
                return wifiConnectRetry.copy(wifi, str, connectionErrorCode);
            }

            /* renamed from: component1, reason: from getter */
            public final Wifi getWifi() {
                return this.wifi;
            }

            /* renamed from: component2, reason: from getter */
            public final String getPassword() {
                return this.password;
            }

            /* renamed from: component3, reason: from getter */
            public final ConnectionErrorCode getErrorType() {
                return this.errorType;
            }

            public final WifiConnectRetry copy(Wifi wifi, String password, ConnectionErrorCode errorType) {
                Intrinsics.checkNotNullParameter(wifi, "wifi");
                Intrinsics.checkNotNullParameter(password, "password");
                Intrinsics.checkNotNullParameter(errorType, "errorType");
                return new WifiConnectRetry(wifi, password, errorType);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof WifiConnectRetry)) {
                    return false;
                }
                WifiConnectRetry wifiConnectRetry = (WifiConnectRetry) other;
                return Intrinsics.areEqual(this.wifi, wifiConnectRetry.wifi) && Intrinsics.areEqual(this.password, wifiConnectRetry.password) && this.errorType == wifiConnectRetry.errorType;
            }

            public final ConnectionErrorCode getErrorType() {
                return this.errorType;
            }

            public final String getPassword() {
                return this.password;
            }

            public final Wifi getWifi() {
                return this.wifi;
            }

            public int hashCode() {
                return (((this.wifi.hashCode() * 31) + this.password.hashCode()) * 31) + this.errorType.hashCode();
            }

            public String toString() {
                return "WifiConnectRetry(wifi=" + this.wifi + ", password=" + this.password + ", errorType=" + this.errorType + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public WifiConnectRetry(Wifi wifi, String password, ConnectionErrorCode errorType) {
                super(null);
                Intrinsics.checkNotNullParameter(wifi, "wifi");
                Intrinsics.checkNotNullParameter(password, "password");
                Intrinsics.checkNotNullParameter(errorType, "errorType");
                this.wifi = wifi;
                this.password = password;
                this.errorType = errorType;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<Wifi, Integer> getOptionUseCellular() {
        return (Pair) this.optionUseCellular.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<Wifi, Integer> getOptionConnectToWifi() {
        return (Pair) this.optionConnectToWifi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<Wifi, Integer> getOptionRetry() {
        return (Pair) this.optionRetry.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<Wifi, Integer> getOptionReEnter() {
        return (Pair) this.optionReEnter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<Wifi, Integer> getOptionChangeNetwork() {
        return (Pair) this.optionChangeNetwork.getValue();
    }

    private final List<Pair<Wifi, Integer>> getOptions() {
        return (List) this.options.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        SimStateReceiver.Companion companion = SimStateReceiver.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        companion.register(requireContext, this);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View onCreateView = super.onCreateView(inflater, container, savedInstanceState);
        FactoryModeVerifyView factoryModeVerifyView = null;
        if (onCreateView == null) {
            return null;
        }
        View findViewById = onCreateView.findViewById(R.id.tv_tip);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.tvTip = (TextView) findViewById;
        View findViewById2 = onCreateView.findViewById(R.id.lv_network_options);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        ListView listView = (ListView) findViewById2;
        this.lvNetworkOptions = listView;
        if (listView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
            listView = null;
        }
        listView.setAdapter((ListAdapter) this.adapter);
        ListView listView2 = this.lvNetworkOptions;
        if (listView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
            listView2 = null;
        }
        listView2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$$ExternalSyntheticLambda0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                ConnectNetworkFragment.onCreateView$lambda$0(ConnectNetworkFragment.this, adapterView, view, i, j);
            }
        });
        View findViewById3 = onCreateView.findViewById(R.id.fmvv_launcher);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        FactoryModeVerifyView factoryModeVerifyView2 = (FactoryModeVerifyView) findViewById3;
        this.fmvvLauncher = factoryModeVerifyView2;
        if (factoryModeVerifyView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fmvvLauncher");
        } else {
            factoryModeVerifyView = factoryModeVerifyView2;
        }
        factoryModeVerifyView.setOnVerifySucceed(new FactoryModeVerifyView.OnVerifySucceedListener() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$onCreateView$2
            @Override // tech.rabbit.r1launcher.widget.FactoryModeVerifyView.OnVerifySucceedListener
            public void onVerifySucceed() {
                FactoryModeActivity.Companion companion = FactoryModeActivity.INSTANCE;
                FragmentActivity requireActivity = ConnectNetworkFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                companion.launch(requireActivity);
            }
        });
        return onCreateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$0(ConnectNetworkFragment this$0, AdapterView adapterView, View view, int i, long j) {
        ListView listView;
        ShowType.WifiConnectRetry wifiConnectRetry;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.adapter.getCount() == 0) {
            return;
        }
        Object item = this$0.adapter.getItem(i);
        Intrinsics.checkNotNull(item, "null cannot be cast to non-null type kotlin.Pair<tech.rabbit.r1launcher.initstep.model.Wifi, kotlin.Int>");
        Pair pair = (Pair) item;
        FragmentActivity requireActivity = this$0.requireActivity();
        InitStepActivity initStepActivity = requireActivity instanceof InitStepActivity ? (InitStepActivity) requireActivity : null;
        if (initStepActivity == null) {
            return;
        }
        this$0.isClickedUseWifi = Intrinsics.areEqual(pair, this$0.getOptionConnectToWifi()) || Intrinsics.areEqual(pair, this$0.getOptionChangeNetwork());
        if (Intrinsics.areEqual(pair, this$0.getOptionUseCellular())) {
            SystemControllerUtil.INSTANCE.setCellularEnable(initStepActivity, true);
            initStepActivity.gotoConnectRabbitAccount();
            return;
        }
        if (Intrinsics.areEqual(pair, this$0.getOptionConnectToWifi()) || Intrinsics.areEqual(pair, this$0.getOptionChangeNetwork())) {
            TextView textView = this$0.tvTip;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                textView = null;
            }
            textView.setText(R.string.text_init_step_connect_network_no_inserted_sim);
            if (this$0.adapter.isContainsItem(this$0.getOptions())) {
                NetworkOptionsAdapter networkOptionsAdapter = this$0.adapter;
                ListView listView2 = this$0.lvNetworkOptions;
                if (listView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                    listView = null;
                } else {
                    listView = listView2;
                }
                NetworkOptionsAdapter.setNewData$default(networkOptionsAdapter, listView, CollectionsKt.emptyList(), 0, 4, null);
            }
            this$0.showScanWifiResult();
            return;
        }
        if (Intrinsics.areEqual(pair, this$0.getOptionReEnter())) {
            ShowType showType = this$0.showType;
            wifiConnectRetry = showType instanceof ShowType.WifiConnectRetry ? (ShowType.WifiConnectRetry) showType : null;
            if (wifiConnectRetry == null) {
                return;
            }
            initStepActivity.enterPasswordToConnectWifi(wifiConnectRetry.getWifi());
            return;
        }
        if (Intrinsics.areEqual(pair, this$0.getOptionRetry())) {
            ShowType showType2 = this$0.showType;
            wifiConnectRetry = showType2 instanceof ShowType.WifiConnectRetry ? (ShowType.WifiConnectRetry) showType2 : null;
            if (wifiConnectRetry == null) {
                return;
            }
            initStepActivity.connectToWifi(wifiConnectRetry.getWifi(), wifiConnectRetry.getPassword());
            return;
        }
        initStepActivity.enterPasswordToConnectWifi((Wifi) pair.getFirst());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FactoryModeVerifyView factoryModeVerifyView = this.fmvvLauncher;
        if (factoryModeVerifyView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fmvvLauncher");
            factoryModeVerifyView = null;
        }
        factoryModeVerifyView.startChecker();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        FactoryModeVerifyView factoryModeVerifyView = this.fmvvLauncher;
        if (factoryModeVerifyView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fmvvLauncher");
            factoryModeVerifyView = null;
        }
        factoryModeVerifyView.stopChecker();
        super.onPause();
    }

    private final int switchSignalLevelResId(int level) {
        if (level == 0) {
            return R.drawable.ic_wifi_signal_level_1;
        }
        if (level == 1) {
            return R.drawable.ic_wifi_signal_level_2;
        }
        if (level == 2) {
            return R.drawable.ic_wifi_signal_level_3;
        }
        return R.drawable.ic_wifi_signal_level_3;
    }

    private final void showScanWifiResult() {
        NetworkOptionsAdapter networkOptionsAdapter = this.adapter;
        ListView listView = this.lvNetworkOptions;
        if (listView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
            listView = null;
        }
        List<Wifi> list = this.scanWifiResultCache;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (Wifi wifi : list) {
            arrayList.add(TuplesKt.to(wifi, Integer.valueOf(switchSignalLevelResId(wifi.getSignalLevel()))));
        }
        networkOptionsAdapter.setNewData(listView, arrayList, this.adapter.getCount() == 0 ? 0 : -1);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        scanWifiList();
    }

    private final void setupUI() {
        ShowType showType = this.showType;
        TextView textView = null;
        if (Intrinsics.areEqual(showType, ShowType.SelectNetworkType.INSTANCE)) {
            SystemControllerUtil systemControllerUtil = SystemControllerUtil.INSTANCE;
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            if (systemControllerUtil.isSimCardExist(requireContext)) {
                TextView textView2 = this.tvTip;
                if (textView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                    textView2 = null;
                }
                int i = R.string.text_init_step_connect_network_inserted_dynamic_operator_name;
                Utils utils = Utils.INSTANCE;
                Context requireContext2 = requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
                textView2.setText(getString(i, utils.readSimOperatorName(requireContext2)));
                NetworkOptionsAdapter networkOptionsAdapter = this.adapter;
                ListView listView = this.lvNetworkOptions;
                if (listView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                    listView = null;
                }
                networkOptionsAdapter.setNewData(listView, CollectionsKt.listOf((Object[]) new Pair[]{getOptionUseCellular(), getOptionConnectToWifi()}), 0);
            } else {
                TextView textView3 = this.tvTip;
                if (textView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                    textView3 = null;
                }
                textView3.setText(R.string.text_init_step_connect_network_no_inserted_sim);
                showScanWifiResult();
            }
            TextView textView4 = this.tvTip;
            if (textView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            } else {
                textView = textView4;
            }
            TextView textView5 = textView;
            ViewGroup.LayoutParams layoutParams = textView5.getLayoutParams();
            if (layoutParams != null) {
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                LinearLayout.LayoutParams layoutParams3 = layoutParams2;
                layoutParams3.setMargins(((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin, UiExtensionsKt.getDp(81), ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin, UiExtensionsKt.getDp(32));
                textView5.setLayoutParams(layoutParams2);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            }
        } else if (showType instanceof ShowType.WifiConnectRetry) {
            ShowType showType2 = this.showType;
            Intrinsics.checkNotNull(showType2, "null cannot be cast to non-null type tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment.ShowType.WifiConnectRetry");
            if (((ShowType.WifiConnectRetry) showType2).getErrorType() == ConnectionErrorCode.AUTHENTICATION_ERROR_OCCURRED) {
                TextView textView6 = this.tvTip;
                if (textView6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                    textView6 = null;
                }
                Context requireContext3 = requireContext();
                int i2 = R.string.text_init_step_connect_network_incorrect_password;
                ShowType showType3 = this.showType;
                Intrinsics.checkNotNull(showType3, "null cannot be cast to non-null type tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment.ShowType.WifiConnectRetry");
                textView6.setText(requireContext3.getString(i2, ((ShowType.WifiConnectRetry) showType3).getWifi().getSsid()));
                SystemControllerUtil systemControllerUtil2 = SystemControllerUtil.INSTANCE;
                Context requireContext4 = requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext4, "requireContext(...)");
                if (systemControllerUtil2.isSimCardExist(requireContext4)) {
                    NetworkOptionsAdapter networkOptionsAdapter2 = this.adapter;
                    ListView listView2 = this.lvNetworkOptions;
                    if (listView2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                        listView2 = null;
                    }
                    networkOptionsAdapter2.setNewData(listView2, CollectionsKt.listOf((Object[]) new Pair[]{getOptionReEnter(), getOptionChangeNetwork(), getOptionUseCellular()}), 0);
                } else {
                    NetworkOptionsAdapter networkOptionsAdapter3 = this.adapter;
                    ListView listView3 = this.lvNetworkOptions;
                    if (listView3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                        listView3 = null;
                    }
                    networkOptionsAdapter3.setNewData(listView3, CollectionsKt.listOf((Object[]) new Pair[]{getOptionReEnter(), getOptionChangeNetwork()}), 0);
                }
            } else {
                TextView textView7 = this.tvTip;
                if (textView7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                    textView7 = null;
                }
                textView7.setText(R.string.text_init_step_connect_network_connect_error);
                SystemControllerUtil systemControllerUtil3 = SystemControllerUtil.INSTANCE;
                Context requireContext5 = requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext5, "requireContext(...)");
                if (systemControllerUtil3.isSimCardExist(requireContext5)) {
                    NetworkOptionsAdapter networkOptionsAdapter4 = this.adapter;
                    ListView listView4 = this.lvNetworkOptions;
                    if (listView4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                        listView4 = null;
                    }
                    networkOptionsAdapter4.setNewData(listView4, CollectionsKt.listOf((Object[]) new Pair[]{getOptionRetry(), getOptionChangeNetwork(), getOptionUseCellular()}), 0);
                } else {
                    NetworkOptionsAdapter networkOptionsAdapter5 = this.adapter;
                    ListView listView5 = this.lvNetworkOptions;
                    if (listView5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                        listView5 = null;
                    }
                    networkOptionsAdapter5.setNewData(listView5, CollectionsKt.listOf((Object[]) new Pair[]{getOptionRetry(), getOptionChangeNetwork()}), 0);
                }
            }
            TextView textView8 = this.tvTip;
            if (textView8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            } else {
                textView = textView8;
            }
            TextView textView9 = textView;
            ViewGroup.LayoutParams layoutParams4 = textView9.getLayoutParams();
            if (layoutParams4 != null) {
                LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) layoutParams4;
                LinearLayout.LayoutParams layoutParams6 = layoutParams5;
                layoutParams6.setMargins(((ViewGroup.MarginLayoutParams) layoutParams6).leftMargin, UiExtensionsKt.getDp(78), ((ViewGroup.MarginLayoutParams) layoutParams6).rightMargin, UiExtensionsKt.getDp(21));
                textView9.setLayoutParams(layoutParams5);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            }
        } else if (Intrinsics.areEqual(showType, ShowType.WifiScanResult.INSTANCE)) {
            TextView textView10 = this.tvTip;
            if (textView10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                textView10 = null;
            }
            textView10.setText(R.string.text_init_step_connect_network_no_inserted_sim);
            TextView textView11 = this.tvTip;
            if (textView11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            } else {
                textView = textView11;
            }
            TextView textView12 = textView;
            ViewGroup.LayoutParams layoutParams7 = textView12.getLayoutParams();
            if (layoutParams7 != null) {
                LinearLayout.LayoutParams layoutParams8 = (LinearLayout.LayoutParams) layoutParams7;
                LinearLayout.LayoutParams layoutParams9 = layoutParams8;
                layoutParams9.setMargins(((ViewGroup.MarginLayoutParams) layoutParams9).leftMargin, UiExtensionsKt.getDp(81), ((ViewGroup.MarginLayoutParams) layoutParams9).rightMargin, UiExtensionsKt.getDp(32));
                textView12.setLayoutParams(layoutParams8);
                showScanWifiResult();
            } else {
                throw new NullPointerException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            }
        }
        SystemControllerUtil systemControllerUtil4 = SystemControllerUtil.INSTANCE;
        Intrinsics.checkNotNullExpressionValue(requireContext(), "requireContext(...)");
        this.isClickedUseWifi = !systemControllerUtil4.isSimCardExist(r1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void scanWifiList() {
        if (getActivity() == null || !isAdded()) {
            return;
        }
        this.wifiScanTimer.removeCallbacksAndMessages(null);
        WifiUtils.withActivity(requireActivity()).scanWifi(new ScanResultsListener() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$$ExternalSyntheticLambda3
            @Override // tech.rabbit.r1launcher.components.wifiutils.wifiScan.ScanResultsListener
            public final void onScanResults(List list) {
                ConnectNetworkFragment.scanWifiList$lambda$7(ConnectNetworkFragment.this, list);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void scanWifiList$lambda$7(final ConnectNetworkFragment this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        List<ScanResult> list = it;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (ScanResult scanResult : list) {
            Wifi.Companion companion = Wifi.INSTANCE;
            Intrinsics.checkNotNull(scanResult);
            arrayList.add(companion.adapt(scanResult));
        }
        this$0.onWifiScanResult(arrayList);
        this$0.wifiScanTimer.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$scanWifiList$lambda$7$$inlined$postDelayed$default$1
            @Override // java.lang.Runnable
            public final void run() {
                ConnectNetworkFragment.this.scanWifiList();
            }
        }, 30000L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2 = this.scrollAnimator;
        if (valueAnimator2 != null && valueAnimator2.isRunning() && (valueAnimator = this.scrollAnimator) != null) {
            valueAnimator.cancel();
        }
        this.wifiScanTimer.removeCallbacksAndMessages(null);
        this.isClickedUseWifi = false;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        SimStateReceiver.Companion companion = SimStateReceiver.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        companion.unregister(requireContext);
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (WifiUtils.isEnableWifiRequest(requestCode)) {
            scanWifiList();
        }
    }

    private final void onWifiScanResult(List<Wifi> result) {
        if (getActivity() == null || !isAdded() || result.isEmpty()) {
            return;
        }
        this.scanWifiResultCache.clear();
        List<Wifi> list = this.scanWifiResultCache;
        ArrayList arrayList = new ArrayList();
        for (Object obj : result) {
            if (Wifi.INSTANCE.isAvailableSSID(((Wifi) obj).getSsid())) {
                arrayList.add(obj);
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (hashSet.add(((Wifi) obj2).getSsid())) {
                arrayList2.add(obj2);
            }
        }
        list.addAll(CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$onWifiScanResult$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(((Wifi) t2).getSignalLevel()), Integer.valueOf(((Wifi) t).getSignalLevel()));
            }
        }));
        if (!this.isClickedUseWifi || this.adapter.isContainsItem(getOptions())) {
            return;
        }
        showScanWifiResult();
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyUp(int keyCode, KeyEvent event) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        ValueAnimator valueAnimator;
        if (Constants.INSTANCE.isSideButtonKeyCode(keyCode)) {
            FragmentActivity requireActivity = requireActivity();
            InitStepActivity initStepActivity = requireActivity instanceof InitStepActivity ? (InitStepActivity) requireActivity : null;
            if (initStepActivity != null && initStepActivity.isBackShowing()) {
                FragmentActivity requireActivity2 = requireActivity();
                InitStepActivity initStepActivity2 = requireActivity2 instanceof InitStepActivity ? (InitStepActivity) requireActivity2 : null;
                if (initStepActivity2 != null) {
                    initStepActivity2.hideBack();
                }
                TextView textView = this.tvTip;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                    textView = null;
                }
                int i = R.string.text_init_step_connect_network_inserted_dynamic_operator_name;
                Utils utils = Utils.INSTANCE;
                Context requireContext = requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                textView.setText(getString(i, utils.readSimOperatorName(requireContext)));
                NetworkOptionsAdapter networkOptionsAdapter = this.adapter;
                ListView listView = this.lvNetworkOptions;
                if (listView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                    listView = null;
                }
                networkOptionsAdapter.setNewData(listView, CollectionsKt.listOf((Object[]) new Pair[]{getOptionUseCellular(), getOptionConnectToWifi()}), 0);
            } else {
                int selectedIndex = this.adapter.getSelectedIndex();
                if (selectedIndex < 0) {
                    return;
                }
                ListView listView2 = this.lvNetworkOptions;
                if (listView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                    listView2 = null;
                }
                View childAt = listView2.getChildAt(selectedIndex);
                ListView listView3 = this.lvNetworkOptions;
                if (listView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                    listView3 = null;
                }
                long itemIdAtPosition = listView3.getItemIdAtPosition(selectedIndex);
                ListView listView4 = this.lvNetworkOptions;
                if (listView4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                    listView4 = null;
                }
                listView4.performItemClick(childAt, selectedIndex, itemIdAtPosition);
            }
        } else if (keyCode == 19) {
            if (this.adapter.getSelectedIndex() != 0) {
                NetworkOptionsAdapter networkOptionsAdapter2 = this.adapter;
                ListView listView5 = this.lvNetworkOptions;
                if (listView5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                    listView5 = null;
                }
                networkOptionsAdapter2.selectPrev(listView5);
            } else {
                if (this.adapter.isContainsItem(getOptions())) {
                    return;
                }
                SystemControllerUtil systemControllerUtil = SystemControllerUtil.INSTANCE;
                Context requireContext2 = requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
                if (!systemControllerUtil.isSimCardExist(requireContext2)) {
                    return;
                }
                FragmentActivity requireActivity3 = requireActivity();
                InitStepActivity initStepActivity3 = requireActivity3 instanceof InitStepActivity ? (InitStepActivity) requireActivity3 : null;
                if (initStepActivity3 != null) {
                    initStepActivity3.showBack(R.string.text_cellular);
                }
                NetworkOptionsAdapter networkOptionsAdapter3 = this.adapter;
                ListView listView6 = this.lvNetworkOptions;
                if (listView6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                    listView6 = null;
                }
                networkOptionsAdapter3.removeSelectedState(listView6);
            }
        } else if (keyCode == 20) {
            FragmentActivity requireActivity4 = requireActivity();
            InitStepActivity initStepActivity4 = requireActivity4 instanceof InitStepActivity ? (InitStepActivity) requireActivity4 : null;
            if (initStepActivity4 == null || !initStepActivity4.isBackShowing()) {
                NetworkOptionsAdapter networkOptionsAdapter4 = this.adapter;
                ListView listView7 = this.lvNetworkOptions;
                if (listView7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                    listView7 = null;
                }
                networkOptionsAdapter4.selectNext(listView7);
            } else {
                FragmentActivity requireActivity5 = requireActivity();
                InitStepActivity initStepActivity5 = requireActivity5 instanceof InitStepActivity ? (InitStepActivity) requireActivity5 : null;
                if (initStepActivity5 != null) {
                    initStepActivity5.hideBack();
                }
                NetworkOptionsAdapter networkOptionsAdapter5 = this.adapter;
                ListView listView8 = this.lvNetworkOptions;
                if (listView8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
                    listView8 = null;
                }
                networkOptionsAdapter5.resetSelectedStateToFirstItem(listView8);
            }
        }
        if (Constants.INSTANCE.isSideButtonKeyCode(keyCode)) {
            return;
        }
        ValueAnimator valueAnimator2 = this.scrollAnimator;
        if (valueAnimator2 != null && valueAnimator2.isRunning() && (valueAnimator = this.scrollAnimator) != null) {
            valueAnimator.end();
        }
        TextView textView2 = this.tvTip;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            textView2 = null;
        }
        ViewGroup.LayoutParams layoutParams = textView2.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        int i2 = marginLayoutParams2 != null ? marginLayoutParams2.topMargin : 0;
        TextView textView3 = this.tvTip;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            textView3 = null;
        }
        int measuredHeight = i2 + textView3.getMeasuredHeight();
        TextView textView4 = this.tvTip;
        if (textView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            textView4 = null;
        }
        ViewGroup.LayoutParams layoutParams2 = textView4.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
        int i3 = measuredHeight + (marginLayoutParams3 != null ? marginLayoutParams3.bottomMargin : 0);
        ListView listView9 = this.lvNetworkOptions;
        if (listView9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
            listView9 = null;
        }
        if (i3 + getItemsHeightOfListView(listView9) >= requireView().getMeasuredHeight()) {
            if (this.adapter.getSelectedIndex() >= 2) {
                TextView textView5 = this.tvTip;
                if (textView5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                    textView5 = null;
                }
                ViewGroup.LayoutParams layoutParams3 = textView5.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams4 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
                if (marginLayoutParams4 != null && marginLayoutParams4.topMargin != 0) {
                    TextView textView6 = this.tvTip;
                    if (textView6 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                        textView6 = null;
                    }
                    ViewGroup.LayoutParams layoutParams4 = textView6.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams5 = layoutParams4 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams4 : null;
                    if ((marginLayoutParams5 != null ? marginLayoutParams5.topMargin : 0) == this.scrollTopMargin) {
                        return;
                    }
                    int[] iArr = new int[2];
                    TextView textView7 = this.tvTip;
                    if (textView7 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                        textView7 = null;
                    }
                    ViewGroup.LayoutParams layoutParams5 = textView7.getLayoutParams();
                    marginLayoutParams = layoutParams5 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams5 : null;
                    iArr[0] = marginLayoutParams != null ? marginLayoutParams.topMargin : 0;
                    iArr[1] = this.scrollTopMargin;
                    final ValueAnimator duration = ValueAnimator.ofInt(iArr).setDuration(300L);
                    duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                            ConnectNetworkFragment.onKeyUp$lambda$14$lambda$12(ConnectNetworkFragment.this, valueAnimator3);
                        }
                    });
                    Intrinsics.checkNotNull(duration);
                    duration.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$onKeyUp$lambda$14$$inlined$addListener$default$1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            duration.removeAllUpdateListeners();
                            duration.removeAllListeners();
                        }
                    });
                    this.scrollAnimator = duration;
                    duration.start();
                    return;
                }
            }
            if (this.adapter.getSelectedIndex() < 2) {
                TextView textView8 = this.tvTip;
                if (textView8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                    textView8 = null;
                }
                ViewGroup.LayoutParams layoutParams6 = textView8.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams6 = layoutParams6 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams6 : null;
                if ((marginLayoutParams6 != null ? marginLayoutParams6.topMargin : 0) == this.scrollTopMargin) {
                    TextView textView9 = this.tvTip;
                    if (textView9 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                        textView9 = null;
                    }
                    ViewGroup.LayoutParams layoutParams7 = textView9.getLayoutParams();
                    marginLayoutParams = layoutParams7 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams7 : null;
                    if ((marginLayoutParams != null ? marginLayoutParams.topMargin : 0) == (Intrinsics.areEqual(this.showType, ShowType.SelectNetworkType.INSTANCE) ? UiExtensionsKt.getDp(81) : UiExtensionsKt.getDp(78))) {
                        return;
                    }
                    int[] iArr2 = new int[2];
                    iArr2[0] = this.scrollTopMargin;
                    iArr2[1] = Intrinsics.areEqual(this.showType, ShowType.SelectNetworkType.INSTANCE) ? UiExtensionsKt.getDp(81) : UiExtensionsKt.getDp(78);
                    final ValueAnimator duration2 = ValueAnimator.ofInt(iArr2).setDuration(300L);
                    duration2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$$ExternalSyntheticLambda2
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                            ConnectNetworkFragment.onKeyUp$lambda$19$lambda$17(ConnectNetworkFragment.this, valueAnimator3);
                        }
                    });
                    Intrinsics.checkNotNull(duration2);
                    duration2.addListener(new Animator.AnimatorListener() { // from class: tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment$onKeyUp$lambda$19$$inlined$addListener$default$1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            duration2.removeAllUpdateListeners();
                            duration2.removeAllListeners();
                        }
                    });
                    this.scrollAnimator = duration2;
                    duration2.start();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onKeyUp$lambda$14$lambda$12(ConnectNetworkFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        TextView textView = this$0.tvTip;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            textView = null;
        }
        TextView textView2 = textView;
        ViewGroup.LayoutParams layoutParams = textView2.getLayoutParams();
        if (layoutParams != null) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            LinearLayout.LayoutParams layoutParams3 = layoutParams2;
            Object animatedValue = it.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
            layoutParams3.setMargins(((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin, ((Integer) animatedValue).intValue(), ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin);
            textView2.setLayoutParams(layoutParams2);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onKeyUp$lambda$19$lambda$17(ConnectNetworkFragment this$0, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        TextView textView = this$0.tvTip;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            textView = null;
        }
        TextView textView2 = textView;
        ViewGroup.LayoutParams layoutParams = textView2.getLayoutParams();
        if (layoutParams != null) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            LinearLayout.LayoutParams layoutParams3 = layoutParams2;
            Object animatedValue = it.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
            layoutParams3.setMargins(((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin, ((Integer) animatedValue).intValue(), ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin);
            textView2.setLayoutParams(layoutParams2);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
    }

    private final int getItemsHeightOfListView(ListView listView) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ListAdapter adapter = listView.getAdapter();
        Intrinsics.checkNotNullExpressionValue(adapter, "getAdapter(...)");
        int count = adapter.getCount();
        int i = 0;
        for (int i2 = 0; i2 < count; i2++) {
            View view = adapter.getView(i2, null, listView);
            Intrinsics.checkNotNullExpressionValue(view, "getView(...)");
            view.measure(makeMeasureSpec, makeMeasureSpec);
            i += view.getMeasuredHeight();
        }
        return i;
    }

    @Override // tech.rabbit.r1launcher.settings.network2.receiver.SimStateReceiver.OnSimStateListener
    public void onSimStateChangeToLoaded() {
        setupUI();
        updateTipsTopMargin();
    }

    @Override // tech.rabbit.r1launcher.settings.network2.receiver.SimStateReceiver.OnSimStateListener
    public void onSimStateChangeToNotLoaded() {
        setupUI();
        updateTipsTopMargin();
    }

    private final void updateTipsTopMargin() {
        TextView textView = this.tvTip;
        TextView textView2 = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            textView = null;
        }
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        int i = marginLayoutParams != null ? marginLayoutParams.topMargin : 0;
        TextView textView3 = this.tvTip;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            textView3 = null;
        }
        int measuredHeight = i + textView3.getMeasuredHeight();
        TextView textView4 = this.tvTip;
        if (textView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvTip");
            textView4 = null;
        }
        ViewGroup.LayoutParams layoutParams2 = textView4.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
        int i2 = measuredHeight + (marginLayoutParams2 != null ? marginLayoutParams2.bottomMargin : 0);
        ListView listView = this.lvNetworkOptions;
        if (listView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lvNetworkOptions");
            listView = null;
        }
        if (i2 + getItemsHeightOfListView(listView) < requireView().getMeasuredHeight()) {
            return;
        }
        if (this.adapter.getSelectedIndex() >= 2) {
            TextView textView5 = this.tvTip;
            if (textView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                textView5 = null;
            }
            ViewGroup.LayoutParams layoutParams3 = textView5.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
            if (marginLayoutParams3 != null && marginLayoutParams3.topMargin != 0) {
                TextView textView6 = this.tvTip;
                if (textView6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                } else {
                    textView2 = textView6;
                }
                TextView textView7 = textView2;
                ViewGroup.LayoutParams layoutParams4 = textView7.getLayoutParams();
                if (layoutParams4 != null) {
                    LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) layoutParams4;
                    LinearLayout.LayoutParams layoutParams6 = layoutParams5;
                    layoutParams6.setMargins(((ViewGroup.MarginLayoutParams) layoutParams6).leftMargin, this.scrollTopMargin, ((ViewGroup.MarginLayoutParams) layoutParams6).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams6).bottomMargin);
                    textView7.setLayoutParams(layoutParams5);
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            }
        }
        if (this.adapter.getSelectedIndex() < 2) {
            TextView textView8 = this.tvTip;
            if (textView8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                textView8 = null;
            }
            ViewGroup.LayoutParams layoutParams7 = textView8.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams4 = layoutParams7 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams7 : null;
            if ((marginLayoutParams4 != null ? marginLayoutParams4.topMargin : 0) == this.scrollTopMargin) {
                TextView textView9 = this.tvTip;
                if (textView9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tvTip");
                } else {
                    textView2 = textView9;
                }
                TextView textView10 = textView2;
                ViewGroup.LayoutParams layoutParams8 = textView10.getLayoutParams();
                if (layoutParams8 != null) {
                    LinearLayout.LayoutParams layoutParams9 = (LinearLayout.LayoutParams) layoutParams8;
                    LinearLayout.LayoutParams layoutParams10 = layoutParams9;
                    layoutParams10.setMargins(((ViewGroup.MarginLayoutParams) layoutParams10).leftMargin, UiExtensionsKt.getDp(Intrinsics.areEqual(this.showType, ShowType.SelectNetworkType.INSTANCE) ? 81 : 78), ((ViewGroup.MarginLayoutParams) layoutParams10).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams10).bottomMargin);
                    textView10.setLayoutParams(layoutParams9);
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            }
        }
    }
}
