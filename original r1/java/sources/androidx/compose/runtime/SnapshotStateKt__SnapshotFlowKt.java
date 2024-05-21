package androidx.compose.runtime;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SnapshotFlow.kt */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0010\"\n\u0002\b\u0003\u001a \u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001a?\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\b\b\u0000\u0010\u0002*\u0002H\u0007\"\u0004\b\u0001\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\b\u001a\u0002H\u00072\b\b\u0002\u0010\t\u001a\u00020\nH\u0007¢\u0006\u0002\u0010\u000b\u001a-\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\f2\b\b\u0002\u0010\t\u001a\u00020\nH\u0007¢\u0006\u0002\u0010\r\u001a+\u0010\u000e\u001a\u00020\u000f\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0010H\u0002¢\u0006\u0002\b\u0012¨\u0006\u0013"}, d2 = {"snapshotFlow", "Lkotlinx/coroutines/flow/Flow;", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function0;", "collectAsState", "Landroidx/compose/runtime/State;", "R", "initial", "context", "Lkotlin/coroutines/CoroutineContext;", "(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;", "Lkotlinx/coroutines/flow/StateFlow;", "(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;", "intersects", "", "", "other", "intersects$SnapshotStateKt__SnapshotFlowKt", "runtime_release"}, k = 5, mv = {1, 8, 0}, xi = 48, xs = "androidx/compose/runtime/SnapshotStateKt")
/* loaded from: classes.dex */
public final /* synthetic */ class SnapshotStateKt__SnapshotFlowKt {
    public static final <T> State<T> collectAsState(StateFlow<? extends T> stateFlow, CoroutineContext coroutineContext, Composer composer, int i, int i2) {
        Intrinsics.checkNotNullParameter(stateFlow, "<this>");
        composer.startReplaceableGroup(-1439883919);
        ComposerKt.sourceInformation(composer, "C(collectAsState)46@1741L30:SnapshotFlow.kt#9igjgp");
        if ((i2 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1439883919, i, -1, "androidx.compose.runtime.collectAsState (SnapshotFlow.kt:44)");
        }
        State<T> collectAsState = SnapshotStateKt.collectAsState(stateFlow, stateFlow.getValue(), coroutineContext2, composer, 520, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return collectAsState;
    }

    public static final <T extends R, R> State<R> collectAsState(Flow<? extends T> flow, R r, CoroutineContext coroutineContext, Composer composer, int i, int i2) {
        Intrinsics.checkNotNullParameter(flow, "<this>");
        composer.startReplaceableGroup(-606625098);
        ComposerKt.sourceInformation(composer, "C(collectAsState)P(1)61@2283L186:SnapshotFlow.kt#9igjgp");
        if ((i2 & 2) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-606625098, i, -1, "androidx.compose.runtime.collectAsState (SnapshotFlow.kt:58)");
        }
        int i3 = i >> 3;
        State<R> produceState = SnapshotStateKt.produceState(r, flow, coroutineContext2, new SnapshotStateKt__SnapshotFlowKt$collectAsState$1(coroutineContext2, flow, null), composer, (i3 & 8) | 4672 | (i3 & 14));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return produceState;
    }

    public static final <T> Flow<T> snapshotFlow(Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return FlowKt.flow(new SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1(block, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> boolean intersects$SnapshotStateKt__SnapshotFlowKt(Set<? extends T> set, Set<? extends T> set2) {
        if (set.size() < set2.size()) {
            Set<? extends T> set3 = set;
            if (!(set3 instanceof Collection) || !set3.isEmpty()) {
                Iterator<T> it = set3.iterator();
                while (it.hasNext()) {
                    if (set2.contains(it.next())) {
                        return true;
                    }
                }
            }
        } else {
            Set<? extends T> set4 = set2;
            if (!(set4 instanceof Collection) || !set4.isEmpty()) {
                Iterator<T> it2 = set4.iterator();
                while (it2.hasNext()) {
                    if (set.contains(it2.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
