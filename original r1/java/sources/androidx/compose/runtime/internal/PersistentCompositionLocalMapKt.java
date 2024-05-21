package androidx.compose.runtime.internal;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.State;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PersistentCompositionLocalMap.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0000\u001aY\u0010\u0000\u001a\u00020\u00022J\u0010\u0003\u001a&\u0012\"\b\u0001\u0012\u001e\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\b0\u00050\u0004\"\u001e\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\b0\u0005H\u0000¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"persistentCompositionLocalHashMapOf", "Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;", "Landroidx/compose/runtime/PersistentCompositionLocalMap;", "pairs", "", "Lkotlin/Pair;", "Landroidx/compose/runtime/CompositionLocal;", "", "Landroidx/compose/runtime/State;", "([Lkotlin/Pair;)Landroidx/compose/runtime/PersistentCompositionLocalMap;", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PersistentCompositionLocalMapKt {
    public static final PersistentCompositionLocalHashMap persistentCompositionLocalHashMapOf() {
        return PersistentCompositionLocalHashMap.INSTANCE.getEmpty();
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.runtime.PersistentCompositionLocalMap] */
    public static final PersistentCompositionLocalMap persistentCompositionLocalHashMapOf(Pair<? extends CompositionLocal<Object>, ? extends State<? extends Object>>... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        PersistentMap.Builder<CompositionLocal<Object>, State<? extends Object>> builder2 = PersistentCompositionLocalHashMap.INSTANCE.getEmpty().builder2();
        MapsKt.putAll(builder2, pairs);
        return builder2.build2();
    }
}
