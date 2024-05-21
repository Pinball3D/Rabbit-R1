package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Composer.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B-\u0012&\u0010\u0003\u001a\"\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004¢\u0006\u0002\b\t¢\u0006\u0002\u0010\nR3\u0010\u0003\u001a\"\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004¢\u0006\u0002\b\t¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Landroidx/compose/runtime/MovableContent;", "P", "", "content", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "parameter", "", "Landroidx/compose/runtime/Composable;", "(Lkotlin/jvm/functions/Function3;)V", "getContent", "()Lkotlin/jvm/functions/Function3;", "Lkotlin/jvm/functions/Function3;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MovableContent<P> {
    public static final int $stable = 0;
    private final Function3<P, Composer, Integer, Unit> content;

    public final Function3<P, Composer, Integer, Unit> getContent() {
        return this.content;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MovableContent(Function3<? super P, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        this.content = content;
    }
}
