package tech.rabbit.r1launcher.settings.network2.detail;

import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.databinding.FragmentWifiDetailBinding;
import tech.rabbit.r1launcher.initstep.model.Wifi;
import tech.rabbit.r1launcher.settings.network2.WifiConnectState;

/* compiled from: WifiDetailFragment.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u008a@"}, d2 = {"<anonymous>", "", "it", "Lkotlin/Pair;", "Ltech/rabbit/r1launcher/initstep/model/Wifi;", "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.network2.detail.WifiDetailFragment$onViewCreated$2", f = "WifiDetailFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class WifiDetailFragment$onViewCreated$2 extends SuspendLambda implements Function2<Pair<? extends Wifi, ? extends WifiConnectState>, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ WifiDetailFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiDetailFragment$onViewCreated$2(WifiDetailFragment wifiDetailFragment, Continuation<? super WifiDetailFragment$onViewCreated$2> continuation) {
        super(2, continuation);
        this.this$0 = wifiDetailFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        WifiDetailFragment$onViewCreated$2 wifiDetailFragment$onViewCreated$2 = new WifiDetailFragment$onViewCreated$2(this.this$0, continuation);
        wifiDetailFragment$onViewCreated$2.L$0 = obj;
        return wifiDetailFragment$onViewCreated$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Pair<? extends Wifi, ? extends WifiConnectState> pair, Continuation<? super Unit> continuation) {
        return invoke2((Pair<Wifi, ? extends WifiConnectState>) pair, continuation);
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(Pair<Wifi, ? extends WifiConnectState> pair, Continuation<? super Unit> continuation) {
        return ((WifiDetailFragment$onViewCreated$2) create(pair, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FragmentWifiDetailBinding fragmentWifiDetailBinding;
        LinearLayoutCompat linearLayoutCompat;
        FragmentWifiDetailBinding fragmentWifiDetailBinding2;
        AppCompatTextView appCompatTextView;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Pair pair = (Pair) this.L$0;
            Wifi wifi = (Wifi) pair.component1();
            WifiConnectState wifiConnectState = (WifiConnectState) pair.component2();
            if (!Intrinsics.areEqual(wifi.getSsid(), this.this$0.getWifi().getSsid())) {
                return Unit.INSTANCE;
            }
            this.this$0.currentState = wifiConnectState;
            if (wifiConnectState == WifiConnectState.ConnectFailure) {
                fragmentWifiDetailBinding2 = this.this$0._binding;
                if (fragmentWifiDetailBinding2 != null && (appCompatTextView = fragmentWifiDetailBinding2.tvForgetOrRetry) != null) {
                    final WifiDetailFragment wifiDetailFragment = this.this$0;
                    Boxing.boxBoolean(appCompatTextView.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.detail.WifiDetailFragment$onViewCreated$2$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            WifiDetailFragment$onViewCreated$2.invokeSuspend$lambda$0(WifiDetailFragment.this);
                        }
                    }));
                }
            } else if (wifiConnectState != WifiConnectState.Forget) {
                if (wifiConnectState == WifiConnectState.Connected) {
                    this.this$0.savedWifi = wifi;
                }
                fragmentWifiDetailBinding = this.this$0._binding;
                if (fragmentWifiDetailBinding != null && (linearLayoutCompat = fragmentWifiDetailBinding.llStateContainer) != null) {
                    final WifiDetailFragment wifiDetailFragment2 = this.this$0;
                    Boxing.boxBoolean(linearLayoutCompat.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.detail.WifiDetailFragment$onViewCreated$2$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            WifiDetailFragment$onViewCreated$2.invokeSuspend$lambda$1(WifiDetailFragment.this);
                        }
                    }));
                }
            }
            this.this$0.renderUIWithConnectState(wifiConnectState);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$0(WifiDetailFragment wifiDetailFragment) {
        FragmentWifiDetailBinding fragmentWifiDetailBinding;
        AppCompatTextView appCompatTextView;
        fragmentWifiDetailBinding = wifiDetailFragment._binding;
        if (fragmentWifiDetailBinding == null || (appCompatTextView = fragmentWifiDetailBinding.tvForgetOrRetry) == null) {
            return;
        }
        appCompatTextView.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$1(WifiDetailFragment wifiDetailFragment) {
        FragmentWifiDetailBinding fragmentWifiDetailBinding;
        LinearLayoutCompat linearLayoutCompat;
        fragmentWifiDetailBinding = wifiDetailFragment._binding;
        if (fragmentWifiDetailBinding == null || (linearLayoutCompat = fragmentWifiDetailBinding.llStateContainer) == null) {
            return;
        }
        linearLayoutCompat.requestFocus();
    }
}
