package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: WithLifecycleState.kt */
@Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0004\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "R", "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 8, 0}, xi = 176)
/* loaded from: classes2.dex */
public final class WithLifecycleStateKt$withStateAtLeastUnchecked$2<R> extends Lambda implements Function0<R> {
    final /* synthetic */ Function0<R> $block;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WithLifecycleStateKt$withStateAtLeastUnchecked$2(Function0<? extends R> function0) {
        super(0);
        this.$block = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final R invoke() {
        return this.$block.invoke();
    }
}
