package androidx.compose.foundation.pager;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PagerState.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\u0002\u0010\bR\u0014\u0010\t\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR&\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00070\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Landroidx/compose/foundation/pager/PagerStateImpl;", "Landroidx/compose/foundation/pager/PagerState;", "initialPage", "", "initialPageOffsetFraction", "", "updatedPageCount", "Lkotlin/Function0;", "(IFLkotlin/jvm/functions/Function0;)V", "pageCount", "getPageCount", "()I", "pageCountState", "Landroidx/compose/runtime/MutableState;", "getPageCountState", "()Landroidx/compose/runtime/MutableState;", "setPageCountState", "(Landroidx/compose/runtime/MutableState;)V", "Companion", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PagerStateImpl extends PagerState {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Saver<PagerStateImpl, ?> Saver = ListSaverKt.listSaver(new Function2<SaverScope, PagerStateImpl, List<? extends Object>>() { // from class: androidx.compose.foundation.pager.PagerStateImpl$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        public final List<Object> invoke(SaverScope listSaver, PagerStateImpl it) {
            Intrinsics.checkNotNullParameter(listSaver, "$this$listSaver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.listOf(Integer.valueOf(it.getCurrentPage()), Float.valueOf(it.getCurrentPageOffsetFraction()), Integer.valueOf(it.getPageCount()));
        }
    }, new Function1<List, PagerStateImpl>() { // from class: androidx.compose.foundation.pager.PagerStateImpl$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ PagerStateImpl invoke(List list) {
            return invoke2((List<? extends Object>) list);
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final PagerStateImpl invoke2(final List<? extends Object> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Object obj = it.get(0);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
            int intValue = ((Integer) obj).intValue();
            Object obj2 = it.get(1);
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Float");
            return new PagerStateImpl(intValue, ((Float) obj2).floatValue(), new Function0<Integer>() { // from class: androidx.compose.foundation.pager.PagerStateImpl$Companion$Saver$2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Integer invoke() {
                    Object obj3 = it.get(2);
                    Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Int");
                    return (Integer) obj3;
                }
            });
        }
    });
    private MutableState<Function0<Integer>> pageCountState;

    public final MutableState<Function0<Integer>> getPageCountState() {
        return this.pageCountState;
    }

    public final void setPageCountState(MutableState<Function0<Integer>> mutableState) {
        Intrinsics.checkNotNullParameter(mutableState, "<set-?>");
        this.pageCountState = mutableState;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerStateImpl(int i, float f, Function0<Integer> updatedPageCount) {
        super(i, f);
        MutableState<Function0<Integer>> mutableStateOf$default;
        Intrinsics.checkNotNullParameter(updatedPageCount, "updatedPageCount");
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(updatedPageCount, null, 2, null);
        this.pageCountState = mutableStateOf$default;
    }

    @Override // androidx.compose.foundation.pager.PagerState
    public int getPageCount() {
        return this.pageCountState.getValue().invoke().intValue();
    }

    /* compiled from: PagerState.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\f\u0012\u0004\u0012\u00020\u0005\u0012\u0002\b\u00030\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/pager/PagerStateImpl$Companion;", "", "()V", "Saver", "Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/foundation/pager/PagerStateImpl;", "getSaver", "()Landroidx/compose/runtime/saveable/Saver;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Saver<PagerStateImpl, ?> getSaver() {
            return PagerStateImpl.Saver;
        }
    }
}
