package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArrayMap;
import androidx.compose.runtime.collection.IdentityArraySet;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Composition.kt */
@Metadata(d1 = {"\u0000j\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f2\u0006\u0010\r\u001a\u00020\u000e\u001a$\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u001a\u0010\u000f\u001a\u00020\u00042\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f2\u0006\u0010\r\u001a\u00020\u000e\u001a$\u0010\u000f\u001a\u00020\u00042\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u0006\u0010\u0010\u001a\u00020\u0011\u001a\u001c\u0010\u0012\u001a\u0018\u0012\u0014\u0012\u0012\u0012\b\u0012\u00060\u0015j\u0002`\u0016\u0012\u0004\u0012\u00020\u00170\u00140\u0013\u001a\u000e\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a\u001a\u000e\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0001\u001aI\u0010\u001d\u001a\u00020\u0011\"\b\b\u0000\u0010\u001e*\u00020\u0001\"\b\b\u0001\u0010\u001f*\u00020\u0001*\u0016\u0012\u0004\u0012\u0002H\u001e\u0012\f\u0012\n\u0012\u0004\u0012\u0002H\u001f\u0018\u00010!0 2\u0006\u0010\u0019\u001a\u0002H\u001e2\u0006\u0010\"\u001a\u0002H\u001fH\u0002¢\u0006\u0002\u0010#\u001a7\u0010$\u001a\u00020\u0011\"\u0004\b\u0000\u0010%*\u0012\u0012\u0004\u0012\u0002H%0&j\b\u0012\u0004\u0012\u0002H%`'2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u0002H%\u0012\u0004\u0012\u00020\u00170)H\u0082\b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001e\u0010\u0002\u001a\u00020\u0003*\u00020\u00048GX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006*"}, d2 = {"PendingApplyNoModifications", "", "recomposeCoroutineContext", "Lkotlin/coroutines/CoroutineContext;", "Landroidx/compose/runtime/ControlledComposition;", "getRecomposeCoroutineContext$annotations", "(Landroidx/compose/runtime/ControlledComposition;)V", "getRecomposeCoroutineContext", "(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/coroutines/CoroutineContext;", "Composition", "Landroidx/compose/runtime/Composition;", "applier", "Landroidx/compose/runtime/Applier;", "parent", "Landroidx/compose/runtime/CompositionContext;", "ControlledComposition", "clearCompositionErrors", "", "currentCompositionErrors", "", "Lkotlin/Pair;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "", "invalidateGroupsWithKey", "key", "", "simulateHotReload", "context", "addValue", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/compose/runtime/collection/IdentityArrayMap;", "Landroidx/compose/runtime/collection/IdentityArraySet;", "value", "(Landroidx/compose/runtime/collection/IdentityArrayMap;Ljava/lang/Object;Ljava/lang/Object;)V", "removeValueIf", ExifInterface.LONGITUDE_EAST, "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "predicate", "Lkotlin/Function1;", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CompositionKt {
    private static final Object PendingApplyNoModifications = new Object();

    public static final /* synthetic */ void access$addValue(IdentityArrayMap identityArrayMap, Object obj, Object obj2) {
        addValue(identityArrayMap, obj, obj2);
    }

    public static final /* synthetic */ Object access$getPendingApplyNoModifications$p() {
        return PendingApplyNoModifications;
    }

    public static /* synthetic */ void getRecomposeCoroutineContext$annotations(ControlledComposition controlledComposition) {
    }

    public static final CoroutineContext getRecomposeCoroutineContext(ControlledComposition controlledComposition) {
        CoroutineContext recomposeContext;
        Intrinsics.checkNotNullParameter(controlledComposition, "<this>");
        CompositionImpl compositionImpl = controlledComposition instanceof CompositionImpl ? (CompositionImpl) controlledComposition : null;
        return (compositionImpl == null || (recomposeContext = compositionImpl.getRecomposeContext()) == null) ? EmptyCoroutineContext.INSTANCE : recomposeContext;
    }

    public static final Composition Composition(Applier<?> applier, CompositionContext parent) {
        Intrinsics.checkNotNullParameter(applier, "applier");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new CompositionImpl(parent, applier, null, 4, null);
    }

    public static final ControlledComposition ControlledComposition(Applier<?> applier, CompositionContext parent) {
        Intrinsics.checkNotNullParameter(applier, "applier");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new CompositionImpl(parent, applier, null, 4, null);
    }

    public static final Composition Composition(Applier<?> applier, CompositionContext parent, CoroutineContext recomposeCoroutineContext) {
        Intrinsics.checkNotNullParameter(applier, "applier");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(recomposeCoroutineContext, "recomposeCoroutineContext");
        return new CompositionImpl(parent, applier, recomposeCoroutineContext);
    }

    public static final ControlledComposition ControlledComposition(Applier<?> applier, CompositionContext parent, CoroutineContext recomposeCoroutineContext) {
        Intrinsics.checkNotNullParameter(applier, "applier");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(recomposeCoroutineContext, "recomposeCoroutineContext");
        return new CompositionImpl(parent, applier, recomposeCoroutineContext);
    }

    public static final void simulateHotReload(Object context) {
        Intrinsics.checkNotNullParameter(context, "context");
        HotReloader.INSTANCE.simulateHotReload$runtime_release(context);
    }

    public static final void invalidateGroupsWithKey(int i) {
        HotReloader.INSTANCE.invalidateGroupsWithKey$runtime_release(i);
    }

    public static final List<Pair<Exception, Boolean>> currentCompositionErrors() {
        List<RecomposerErrorInfo> currentErrors$runtime_release = HotReloader.INSTANCE.getCurrentErrors$runtime_release();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(currentErrors$runtime_release, 10));
        for (RecomposerErrorInfo recomposerErrorInfo : currentErrors$runtime_release) {
            arrayList.add(TuplesKt.to(recomposerErrorInfo.getCause(), Boolean.valueOf(recomposerErrorInfo.getRecoverable())));
        }
        return arrayList;
    }

    public static final void clearCompositionErrors() {
        HotReloader.INSTANCE.clearErrors$runtime_release();
    }

    public static final <K, V> void addValue(IdentityArrayMap<K, IdentityArraySet<V>> identityArrayMap, K k, V v) {
        if (identityArrayMap.contains(k)) {
            IdentityArraySet<V> identityArraySet = identityArrayMap.get(k);
            if (identityArraySet != null) {
                identityArraySet.add(v);
                return;
            }
            return;
        }
        IdentityArraySet<V> identityArraySet2 = new IdentityArraySet<>();
        identityArraySet2.add(v);
        Unit unit = Unit.INSTANCE;
        identityArrayMap.set(k, identityArraySet2);
    }

    private static final <E> void removeValueIf(HashSet<E> hashSet, Function1<? super E, Boolean> function1) {
        Iterator<E> it = hashSet.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator()");
        while (it.hasNext()) {
            if (function1.invoke(it.next()).booleanValue()) {
                it.remove();
            }
        }
    }
}
