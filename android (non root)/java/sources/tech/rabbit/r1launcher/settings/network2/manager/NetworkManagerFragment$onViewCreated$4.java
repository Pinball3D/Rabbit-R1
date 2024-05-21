package tech.rabbit.r1launcher.settings.network2.manager;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import tech.rabbit.r1launcher.databinding.FragmentNetworkManagerBinding;

/* compiled from: NetworkManagerFragment.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$onViewCreated$4", f = "NetworkManagerFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class NetworkManagerFragment$onViewCreated$4 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
    /* synthetic */ boolean Z$0;
    int label;
    final /* synthetic */ NetworkManagerFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkManagerFragment$onViewCreated$4(NetworkManagerFragment networkManagerFragment, Continuation<? super NetworkManagerFragment$onViewCreated$4> continuation) {
        super(2, continuation);
        this.this$0 = networkManagerFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        NetworkManagerFragment$onViewCreated$4 networkManagerFragment$onViewCreated$4 = new NetworkManagerFragment$onViewCreated$4(this.this$0, continuation);
        networkManagerFragment$onViewCreated$4.Z$0 = ((Boolean) obj).booleanValue();
        return networkManagerFragment$onViewCreated$4;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
        return invoke(bool.booleanValue(), continuation);
    }

    public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
        return ((NetworkManagerFragment$onViewCreated$4) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FragmentNetworkManagerBinding binding;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        boolean z = this.Z$0;
        binding = this.this$0.getBinding();
        binding.tvWifi.setActivated(z);
        return Unit.INSTANCE;
    }
}
