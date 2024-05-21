package kotlinx.coroutines.channels;

import androidx.compose.material3.MenuKt;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Deprecated.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {MenuKt.OutTransitionDuration}, m = "firstOrNull", n = {"$this$consume$iv", "iterator"}, s = {"L$0", "L$1"})
/* loaded from: classes3.dex */
public final class ChannelsKt__DeprecatedKt$firstOrNull$1<E> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$firstOrNull$1(Continuation<? super ChannelsKt__DeprecatedKt$firstOrNull$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object firstOrNull;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        firstOrNull = ChannelsKt__DeprecatedKt.firstOrNull(null, this);
        return firstOrNull;
    }
}
