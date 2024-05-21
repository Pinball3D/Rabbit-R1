package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CompositionLocal.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/CompositionLocalContext;", "", "compositionLocals", "Landroidx/compose/runtime/PersistentCompositionLocalMap;", "(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V", "getCompositionLocals$runtime_release", "()Landroidx/compose/runtime/PersistentCompositionLocalMap;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CompositionLocalContext {
    public static final int $stable = 0;
    private final PersistentCompositionLocalMap compositionLocals;

    /* renamed from: getCompositionLocals$runtime_release, reason: from getter */
    public final PersistentCompositionLocalMap getCompositionLocals() {
        return this.compositionLocals;
    }

    public CompositionLocalContext(PersistentCompositionLocalMap compositionLocals) {
        Intrinsics.checkNotNullParameter(compositionLocals, "compositionLocals");
        this.compositionLocals = compositionLocals;
    }
}
