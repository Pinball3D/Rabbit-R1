package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyGridIntervalContent.kt */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 *2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001*B\u001e\u0012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007¢\u0006\u0002\u0010\bJ]\u0010\u0017\u001a\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0019\u0010\u001a\u001a\u0015\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u0005¢\u0006\u0002\b\u00072\b\u0010\u001d\u001a\u0004\u0018\u00010\u00192\u001c\u0010\u0004\u001a\u0018\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u001f¢\u0006\u0002\b\u0007H\u0016ø\u0001\u0000¢\u0006\u0002\u0010 J¶\u0001\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#2#\u0010\u0018\u001a\u001f\u0012\u0013\u0012\u00110#¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00052\u001f\u0010\u001a\u001a\u001b\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u001c\u0018\u00010'¢\u0006\u0002\b\u00072#\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110#¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u000521\u0010(\u001a-\u0012\u0004\u0012\u00020\u001e\u0012\u0013\u0012\u00110#¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020\u00060'¢\u0006\u0002\b\u001f¢\u0006\u0002\b\u0007H\u0016ø\u0001\u0000¢\u0006\u0002\u0010)R\u001a\u0010\t\u001a\u00020\nX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0010X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u0014X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;", "Landroidx/compose/foundation/lazy/grid/LazyGridScope;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;", "Landroidx/compose/foundation/lazy/grid/LazyGridInterval;", "content", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;)V", "hasCustomSpans", "", "getHasCustomSpans$foundation_release", "()Z", "setHasCustomSpans$foundation_release", "(Z)V", "intervals", "Landroidx/compose/foundation/lazy/layout/MutableIntervalList;", "getIntervals", "()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;", "spanLayoutProvider", "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;", "getSpanLayoutProvider$foundation_release", "()Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;", "item", "key", "", "span", "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;", "Landroidx/compose/foundation/lazy/grid/GridItemSpan;", "contentType", "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;", "Landroidx/compose/runtime/Composable;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V", "items", MetricSummary.JsonKeys.COUNT, "", "Lkotlin/ParameterName;", "name", "index", "Lkotlin/Function2;", "itemContent", "(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V", "Companion", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyGridIntervalContent extends LazyLayoutIntervalContent<LazyGridInterval> implements LazyGridScope {
    private static final Companion Companion = new Companion(null);
    private static final Function2<LazyGridItemSpanScope, Integer, GridItemSpan> DefaultSpan = new Function2<LazyGridItemSpanScope, Integer, GridItemSpan>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridIntervalContent$Companion$DefaultSpan$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
            return GridItemSpan.m605boximpl(m620invoke_orMbw(lazyGridItemSpanScope, num.intValue()));
        }

        /* renamed from: invoke-_-orMbw, reason: not valid java name */
        public final long m620invoke_orMbw(LazyGridItemSpanScope lazyGridItemSpanScope, int i) {
            Intrinsics.checkNotNullParameter(lazyGridItemSpanScope, "$this$null");
            return LazyGridSpanKt.GridItemSpan(1);
        }
    };
    private boolean hasCustomSpans;
    private final MutableIntervalList<LazyGridInterval> intervals;
    private final LazyGridSpanLayoutProvider spanLayoutProvider;

    /* renamed from: getHasCustomSpans$foundation_release, reason: from getter */
    public final boolean getHasCustomSpans() {
        return this.hasCustomSpans;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent
    public IntervalList<LazyGridInterval> getIntervals() {
        return this.intervals;
    }

    /* renamed from: getSpanLayoutProvider$foundation_release, reason: from getter */
    public final LazyGridSpanLayoutProvider getSpanLayoutProvider() {
        return this.spanLayoutProvider;
    }

    public final void setHasCustomSpans$foundation_release(boolean z) {
        this.hasCustomSpans = z;
    }

    public LazyGridIntervalContent(Function1<? super LazyGridScope, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        this.spanLayoutProvider = new LazyGridSpanLayoutProvider(this);
        this.intervals = new MutableIntervalList<>();
        content.invoke(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.foundation.lazy.layout.MutableIntervalList] */
    @Override // androidx.compose.foundation.lazy.grid.LazyGridScope
    public void item(final Object key, final Function1<? super LazyGridItemSpanScope, GridItemSpan> span, final Object contentType, final Function3<? super LazyGridItemScope, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        getIntervals().addInterval(1, new LazyGridInterval(key != null ? new Function1<Integer, Object>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridIntervalContent$item$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final Object invoke(int i) {
                return key;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                return invoke(num.intValue());
            }
        } : null, span != null ? new Function2<LazyGridItemSpanScope, Integer, GridItemSpan>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridIntervalContent$item$2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
                return GridItemSpan.m605boximpl(m621invoke_orMbw(lazyGridItemSpanScope, num.intValue()));
            }

            /* renamed from: invoke-_-orMbw, reason: not valid java name */
            public final long m621invoke_orMbw(LazyGridItemSpanScope lazyGridItemSpanScope, int i) {
                Intrinsics.checkNotNullParameter(lazyGridItemSpanScope, "$this$null");
                return span.invoke(lazyGridItemSpanScope).getPackedValue();
            }
        } : DefaultSpan, new Function1<Integer, Object>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridIntervalContent$item$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final Object invoke(int i) {
                return contentType;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                return invoke(num.intValue());
            }
        }, ComposableLambdaKt.composableLambdaInstance(-34608120, true, new Function4<LazyGridItemScope, Integer, Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridIntervalContent$item$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(4);
            }

            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Unit invoke(LazyGridItemScope lazyGridItemScope, Integer num, Composer composer, Integer num2) {
                invoke(lazyGridItemScope, num.intValue(), composer, num2.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(LazyGridItemScope $receiver, int i, Composer composer, int i2) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                ComposerKt.sourceInformation(composer, "C49@1790L9:LazyGridIntervalContent.kt#7791vq");
                if ((i2 & 14) == 0) {
                    i2 |= composer.changed($receiver) ? 4 : 2;
                }
                if ((i2 & 651) == 130 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-34608120, i2, -1, "androidx.compose.foundation.lazy.grid.LazyGridIntervalContent.item.<anonymous> (LazyGridIntervalContent.kt:49)");
                }
                content.invoke($receiver, composer, Integer.valueOf(i2 & 14));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        })));
        if (span != null) {
            this.hasCustomSpans = true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.foundation.lazy.layout.MutableIntervalList] */
    @Override // androidx.compose.foundation.lazy.grid.LazyGridScope
    public void items(int count, Function1<? super Integer, ? extends Object> key, Function2<? super LazyGridItemSpanScope, ? super Integer, GridItemSpan> span, Function1<? super Integer, ? extends Object> contentType, Function4<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, Unit> itemContent) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(itemContent, "itemContent");
        getIntervals().addInterval(count, new LazyGridInterval(key, span == null ? DefaultSpan : span, contentType, itemContent));
        if (span != null) {
            this.hasCustomSpans = true;
        }
    }

    /* compiled from: LazyGridIntervalContent.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R+\u0010\u0003\u001a\u0019\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\u0002\b\bø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent$Companion;", "", "()V", "DefaultSpan", "Lkotlin/Function2;", "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;", "", "Landroidx/compose/foundation/lazy/grid/GridItemSpan;", "Lkotlin/ExtensionFunctionType;", "getDefaultSpan", "()Lkotlin/jvm/functions/Function2;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Function2<LazyGridItemSpanScope, Integer, GridItemSpan> getDefaultSpan() {
            return LazyGridIntervalContent.DefaultSpan;
        }
    }
}
