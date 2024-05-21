package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: Deprecated.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "K", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinctBy$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2, 2}, l = {387, 388, 390}, m = "invokeSuspend", n = {"$this$produce", "keys", "$this$produce", "keys", "e", "$this$produce", "keys", "k"}, s = {"L$0", "L$1", "L$0", "L$1", "L$3", "L$0", "L$1", "L$3"})
/* loaded from: classes3.dex */
public final class ChannelsKt__DeprecatedKt$distinctBy$1<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<E, Continuation<? super K>, Object> $selector;
    final /* synthetic */ ReceiveChannel<E> $this_distinctBy;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$distinctBy$1(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super K>, ? extends Object> function2, Continuation<? super ChannelsKt__DeprecatedKt$distinctBy$1> continuation) {
        super(2, continuation);
        this.$this_distinctBy = receiveChannel;
        this.$selector = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$distinctBy$1 channelsKt__DeprecatedKt$distinctBy$1 = new ChannelsKt__DeprecatedKt$distinctBy$1(this.$this_distinctBy, this.$selector, continuation);
        channelsKt__DeprecatedKt$distinctBy$1.L$0 = obj;
        return channelsKt__DeprecatedKt$distinctBy$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$distinctBy$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x007b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c6  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00a4 -> B:8:0x00c3). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00ba -> B:7:0x00bc). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinctBy$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
