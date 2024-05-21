package androidx.compose.runtime;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.internal.PersistentCompositionLocalMapKt;
import androidx.exifinterface.media.ExifInterface;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CompositionLocalMap.kt */
@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a)\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0001H\u0001¢\u0006\u0002\u0010\u0006\u001a \u0010\u0007\u001a\u00020\b\"\u0004\b\u0000\u0010\t*\u00020\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000bH\u0000\u001a%\u0010\f\u001a\u0002H\t\"\u0004\b\u0000\u0010\t*\u00020\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000bH\u0000¢\u0006\u0002\u0010\r\u001a@\u0010\u000e\u001a\u00020\u0001*\u00020\u00012.\u0010\u000f\u001a*\u0012 \u0012\u001e\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000b\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00130\u0011\u0012\u0004\u0012\u00020\u00140\u0010H\u0080\bø\u0001\u0000\u001a%\u0010\u0015\u001a\u0002H\t\"\u0004\b\u0000\u0010\t*\u00020\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000bH\u0000¢\u0006\u0002\u0010\r\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0016"}, d2 = {"compositionLocalMapOf", "Landroidx/compose/runtime/PersistentCompositionLocalMap;", "values", "", "Landroidx/compose/runtime/ProvidedValue;", "parentScope", "([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/PersistentCompositionLocalMap;", "contains", "", ExifInterface.GPS_DIRECTION_TRUE, "key", "Landroidx/compose/runtime/CompositionLocal;", "getValueOf", "(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;", "mutate", "mutator", "Lkotlin/Function1;", "", "", "Landroidx/compose/runtime/State;", "", "read", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CompositionLocalMapKt {
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.compose.runtime.PersistentCompositionLocalMap] */
    public static final PersistentCompositionLocalMap mutate(PersistentCompositionLocalMap persistentCompositionLocalMap, Function1<? super Map<CompositionLocal<Object>, State<Object>>, Unit> mutator) {
        Intrinsics.checkNotNullParameter(persistentCompositionLocalMap, "<this>");
        Intrinsics.checkNotNullParameter(mutator, "mutator");
        PersistentMap.Builder<CompositionLocal<Object>, State<? extends Object>> builder2 = persistentCompositionLocalMap.builder2();
        mutator.invoke(builder2);
        return builder2.build2();
    }

    public static final <T> boolean contains(PersistentCompositionLocalMap persistentCompositionLocalMap, CompositionLocal<T> key) {
        Intrinsics.checkNotNullParameter(persistentCompositionLocalMap, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        return persistentCompositionLocalMap.containsKey(key);
    }

    public static final <T> T getValueOf(PersistentCompositionLocalMap persistentCompositionLocalMap, CompositionLocal<T> key) {
        Intrinsics.checkNotNullParameter(persistentCompositionLocalMap, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        State state = (State) persistentCompositionLocalMap.get((Object) key);
        if (state != null) {
            return (T) state.getValue();
        }
        return null;
    }

    public static final <T> T read(PersistentCompositionLocalMap persistentCompositionLocalMap, CompositionLocal<T> key) {
        Intrinsics.checkNotNullParameter(persistentCompositionLocalMap, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (contains(persistentCompositionLocalMap, key)) {
            return (T) getValueOf(persistentCompositionLocalMap, key);
        }
        return key.getDefaultValueHolder$runtime_release().getValue();
    }

    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.compose.runtime.PersistentCompositionLocalMap] */
    public static final PersistentCompositionLocalMap compositionLocalMapOf(ProvidedValue<?>[] values, PersistentCompositionLocalMap parentScope, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(values, "values");
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        composer.startReplaceableGroup(-300354947);
        ComposerKt.sourceInformation(composer, "C(compositionLocalMapOf)P(1):CompositionLocalMap.kt#9igjgp");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-300354947, i, -1, "androidx.compose.runtime.compositionLocalMapOf (CompositionLocalMap.kt:91)");
        }
        PersistentMap.Builder<CompositionLocal<Object>, State<? extends Object>> builder2 = PersistentCompositionLocalMapKt.persistentCompositionLocalHashMapOf().builder2();
        PersistentMap.Builder<CompositionLocal<Object>, State<? extends Object>> builder = builder2;
        for (ProvidedValue<?> providedValue : values) {
            composer.startReplaceableGroup(680845765);
            ComposerKt.sourceInformation(composer, "*101@4372L24");
            if (providedValue.getCanOverride() || !contains(parentScope, providedValue.getCompositionLocal())) {
                CompositionLocal<?> compositionLocal = providedValue.getCompositionLocal();
                Intrinsics.checkNotNull(compositionLocal, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>");
                builder.put(compositionLocal, providedValue.getCompositionLocal().provided$runtime_release(providedValue.getValue(), composer, 8));
            }
            composer.endReplaceableGroup();
        }
        ?? build2 = builder2.build2();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return build2;
    }
}
