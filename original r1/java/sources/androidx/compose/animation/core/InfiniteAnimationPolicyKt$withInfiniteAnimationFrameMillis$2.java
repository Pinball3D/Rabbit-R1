package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: InfiniteAnimationPolicy.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "R", "it", "", "invoke", "(J)Ljava/lang/Object;"}, k = 3, mv = {1, 8, 0}, xi = 176)
/* loaded from: classes.dex */
public final class InfiniteAnimationPolicyKt$withInfiniteAnimationFrameMillis$2<R> extends Lambda implements Function1<Long, R> {
    final /* synthetic */ Function1<Long, R> $onFrame;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public InfiniteAnimationPolicyKt$withInfiniteAnimationFrameMillis$2(Function1<? super Long, ? extends R> function1) {
        super(1);
        this.$onFrame = function1;
    }

    public final R invoke(long j) {
        return this.$onFrame.invoke(Long.valueOf(j / 1000000));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Long l) {
        return invoke(l.longValue());
    }
}
