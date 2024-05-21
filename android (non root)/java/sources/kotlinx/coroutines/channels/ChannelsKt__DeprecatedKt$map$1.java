package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Deprecated.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$map$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {487, 333, 333}, m = "invokeSuspend", n = {"$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv"}, s = {"L$0", "L$2", "L$0", "L$2", "L$0", "L$2"})
/* loaded from: classes3.dex */
public final class ChannelsKt__DeprecatedKt$map$1<R> extends SuspendLambda implements Function2<ProducerScope<? super R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ ReceiveChannel<E> $this_map;
    final /* synthetic */ Function2<E, Continuation<? super R>, Object> $transform;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$map$1(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super ChannelsKt__DeprecatedKt$map$1> continuation) {
        super(2, continuation);
        this.$this_map = receiveChannel;
        this.$transform = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$map$1 channelsKt__DeprecatedKt$map$1 = new ChannelsKt__DeprecatedKt$map$1(this.$this_map, this.$transform, continuation);
        channelsKt__DeprecatedKt$map$1.L$0 = obj;
        return channelsKt__DeprecatedKt$map$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super R> producerScope, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$map$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x008e A[Catch: all -> 0x00ca, TRY_LEAVE, TryCatch #1 {all -> 0x00ca, blocks: (B:8:0x0022, B:10:0x0072, B:15:0x0086, B:17:0x008e, B:34:0x00c2, B:44:0x005c, B:46:0x006b), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c2 A[Catch: all -> 0x00ca, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00ca, blocks: (B:8:0x0022, B:10:0x0072, B:15:0x0086, B:17:0x008e, B:34:0x00c2, B:44:0x005c, B:46:0x006b), top: B:2:0x000a }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00bd -> B:10:0x0072). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$map$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
