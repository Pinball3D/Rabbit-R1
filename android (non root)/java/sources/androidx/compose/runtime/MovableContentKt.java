package androidx.compose.runtime;

import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MovableContent.kt */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u001a)\u0010\u0002\u001a\r\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\b\u00052\u0011\u0010\u0006\u001a\r\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\b\u0005¢\u0006\u0002\u0010\u0007\u001a;\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\u0005\"\u0004\b\u0000\u0010\t2\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\u0005¢\u0006\u0002\u0010\n\u001aM\u0010\u0002\u001a\u0019\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u00040\u000b¢\u0006\u0002\b\u0005\"\u0004\b\u0000\u0010\f\"\u0004\b\u0001\u0010\r2\u001d\u0010\u0006\u001a\u0019\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u00040\u000b¢\u0006\u0002\b\u0005¢\u0006\u0002\u0010\u000e\u001a_\u0010\u0002\u001a\u001f\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\u0002\b\u0005\"\u0004\b\u0000\u0010\f\"\u0004\b\u0001\u0010\r\"\u0004\b\u0002\u0010\u00102#\u0010\u0006\u001a\u001f\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\u0002\b\u0005¢\u0006\u0002\u0010\u0011\u001aq\u0010\u0002\u001a%\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u00020\u00040\u0012¢\u0006\u0002\b\u0005\"\u0004\b\u0000\u0010\f\"\u0004\b\u0001\u0010\r\"\u0004\b\u0002\u0010\u0010\"\u0004\b\u0003\u0010\u00132)\u0010\u0006\u001a%\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u00020\u00040\u0012¢\u0006\u0002\b\u0005¢\u0006\u0002\u0010\u0014\u001aE\u0010\u0015\u001a\u0018\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\u0005¢\u0006\u0002\b\u0017\"\u0004\b\u0000\u0010\u00162\u001c\u0010\u0006\u001a\u0018\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\u0005¢\u0006\u0002\b\u0017¢\u0006\u0002\u0010\n\u001aW\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00040\u000b¢\u0006\u0002\b\u0005¢\u0006\u0002\b\u0017\"\u0004\b\u0000\u0010\u0016\"\u0004\b\u0001\u0010\t2\"\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00040\u000b¢\u0006\u0002\b\u0005¢\u0006\u0002\b\u0017¢\u0006\u0002\u0010\u000e\u001ai\u0010\u0015\u001a$\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\u0002\b\u0005¢\u0006\u0002\b\u0017\"\u0004\b\u0000\u0010\u0016\"\u0004\b\u0001\u0010\f\"\u0004\b\u0002\u0010\r2(\u0010\u0006\u001a$\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\u0002\b\u0005¢\u0006\u0002\b\u0017¢\u0006\u0002\u0010\u0011\u001a{\u0010\u0015\u001a*\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u00040\u0012¢\u0006\u0002\b\u0005¢\u0006\u0002\b\u0017\"\u0004\b\u0000\u0010\u0016\"\u0004\b\u0001\u0010\f\"\u0004\b\u0002\u0010\r\"\u0004\b\u0003\u0010\u00102.\u0010\u0006\u001a*\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u00040\u0012¢\u0006\u0002\b\u0005¢\u0006\u0002\b\u0017¢\u0006\u0002\u0010\u0014\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"movableContentKey", "", "movableContentOf", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "content", "(Lkotlin/jvm/functions/Function2;)Lkotlin/jvm/functions/Function2;", "Lkotlin/Function1;", "P", "(Lkotlin/jvm/functions/Function3;)Lkotlin/jvm/functions/Function3;", "Lkotlin/Function2;", "P1", "P2", "(Lkotlin/jvm/functions/Function4;)Lkotlin/jvm/functions/Function4;", "Lkotlin/Function3;", "P3", "(Lkotlin/jvm/functions/Function5;)Lkotlin/jvm/functions/Function5;", "Lkotlin/Function4;", "P4", "(Lkotlin/jvm/functions/Function6;)Lkotlin/jvm/functions/Function6;", "movableContentWithReceiverOf", "R", "Lkotlin/ExtensionFunctionType;", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MovableContentKt {
    public static final int movableContentKey = 126665345;

    public static final Function2<Composer, Integer, Unit> movableContentOf(final Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(-1079330685, true, new Function3<Unit, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$movableContent$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Unit unit, Composer composer, Integer num) {
                invoke(unit, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Unit it, Composer composer, int i) {
                Intrinsics.checkNotNullParameter(it, "it");
                ComposerKt.sourceInformation(composer, "C37@1498L9:MovableContent.kt#9igjgp");
                if ((i & 81) == 16 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1079330685, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:37)");
                }
                content.invoke(composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(-642339857, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer, int i) {
                ComposerKt.sourceInformation(composer, "C:MovableContent.kt#9igjgp");
                if ((i & 11) == 2 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-642339857, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:38)");
                }
                composer.insertMovableContent(movableContent, Unit.INSTANCE);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    public static final <P> Function3<P, Composer, Integer, Unit> movableContentOf(Function3<? super P, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        final MovableContent movableContent = new MovableContent(content);
        return ComposableLambdaKt.composableLambdaInstance(-434707029, true, new Function3<P, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentOf$2<P>) obj, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(P p, Composer composer, int i) {
                int i2;
                ComposerKt.sourceInformation(composer, "C:MovableContent.kt#9igjgp");
                if ((i & 14) == 0) {
                    i2 = (composer.changed(p) ? 4 : 2) | i;
                } else {
                    i2 = i;
                }
                if ((i2 & 91) == 18 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-434707029, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:63)");
                }
                composer.insertMovableContent(movableContent, p);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    public static final <P1, P2> Function4<P1, P2, Composer, Integer, Unit> movableContentOf(final Function4<? super P1, ? super P2, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(1849814513, true, new Function3<Pair<? extends P1, ? extends P2>, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$movableContent$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((Pair) obj, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Pair<? extends P1, ? extends P2> it, Composer composer, int i) {
                int i2;
                Intrinsics.checkNotNullParameter(it, "it");
                ComposerKt.sourceInformation(composer, "C87@3417L28:MovableContent.kt#9igjgp");
                if ((i & 14) == 0) {
                    i2 = (composer.changed(it) ? 4 : 2) | i;
                } else {
                    i2 = i;
                }
                if ((i2 & 91) == 18 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1849814513, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:87)");
                }
                content.invoke(it.getFirst(), it.getSecond(), composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(-1200019734, true, new Function4<P1, P2, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(4);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentOf$3<P1, P2>) obj, obj2, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(P1 p1, P2 p2, Composer composer, int i) {
                int i2;
                ComposerKt.sourceInformation(composer, "C:MovableContent.kt#9igjgp");
                if ((i & 14) == 0) {
                    i2 = (composer.changed(p1) ? 4 : 2) | i;
                } else {
                    i2 = i;
                }
                if ((i & 112) == 0) {
                    i2 |= composer.changed(p2) ? 32 : 16;
                }
                if ((i2 & 731) == 146 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1200019734, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:88)");
                }
                composer.insertMovableContent(movableContent, TuplesKt.to(p1, p2));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    public static final <P1, P2, P3> Function5<P1, P2, P3, Composer, Integer, Unit> movableContentOf(final Function5<? super P1, ? super P2, ? super P3, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(-284417101, true, new Function3<Pair<? extends Pair<? extends P1, ? extends P2>, ? extends P3>, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$movableContent$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((Pair) obj, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Pair<? extends Pair<? extends P1, ? extends P2>, ? extends P3> it, Composer composer, int i) {
                Intrinsics.checkNotNullParameter(it, "it");
                ComposerKt.sourceInformation(composer, "C115@4463L51:MovableContent.kt#9igjgp");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-284417101, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:114)");
                }
                content.invoke(it.getFirst().getFirst(), it.getFirst().getSecond(), it.getSecond(), composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(-1083870185, true, new Function5<P1, P2, P3, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(5);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function5
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2, Object obj3, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentOf$4<P1, P2, P3>) obj, obj2, obj3, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(P1 p1, P2 p2, P3 p3, Composer composer, int i) {
                int i2;
                ComposerKt.sourceInformation(composer, "C:MovableContent.kt#9igjgp");
                if ((i & 14) == 0) {
                    i2 = (composer.changed(p1) ? 4 : 2) | i;
                } else {
                    i2 = i;
                }
                if ((i & 112) == 0) {
                    i2 |= composer.changed(p2) ? 32 : 16;
                }
                if ((i & 896) == 0) {
                    i2 |= composer.changed(p3) ? 256 : 128;
                }
                if ((i2 & 5851) == 1170 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1083870185, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:117)");
                }
                composer.insertMovableContent(movableContent, TuplesKt.to(TuplesKt.to(p1, p2), p3));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    public static final <P1, P2, P3, P4> Function6<P1, P2, P3, P4, Composer, Integer, Unit> movableContentOf(final Function6<? super P1, ? super P2, ? super P3, ? super P4, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(1876318581, true, new Function3<Pair<? extends Pair<? extends P1, ? extends P2>, ? extends Pair<? extends P3, ? extends P4>>, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$movableContent$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((Pair) obj, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Pair<? extends Pair<? extends P1, ? extends P2>, ? extends Pair<? extends P3, ? extends P4>> it, Composer composer, int i) {
                Intrinsics.checkNotNullParameter(it, "it");
                ComposerKt.sourceInformation(composer, "C144@5570L75:MovableContent.kt#9igjgp");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1876318581, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:143)");
                }
                content.invoke(it.getFirst().getFirst(), it.getFirst().getSecond(), it.getSecond().getFirst(), it.getSecond().getSecond(), composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(-1741877681, true, new Function6<P1, P2, P3, P4, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$5
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(6);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2, Object obj3, Object obj4, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentOf$5<P1, P2, P3, P4>) obj, obj2, obj3, obj4, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(P1 p1, P2 p2, P3 p3, P4 p4, Composer composer, int i) {
                int i2;
                ComposerKt.sourceInformation(composer, "C:MovableContent.kt#9igjgp");
                if ((i & 14) == 0) {
                    i2 = (composer.changed(p1) ? 4 : 2) | i;
                } else {
                    i2 = i;
                }
                if ((i & 112) == 0) {
                    i2 |= composer.changed(p2) ? 32 : 16;
                }
                if ((i & 896) == 0) {
                    i2 |= composer.changed(p3) ? 256 : 128;
                }
                if ((i & 7168) == 0) {
                    i2 |= composer.changed(p4) ? 2048 : 1024;
                }
                if ((i2 & 46811) == 9362 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1741877681, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:146)");
                }
                composer.insertMovableContent(movableContent, TuplesKt.to(TuplesKt.to(p1, p2), TuplesKt.to(p3, p4)));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    public static final <R> Function3<R, Composer, Integer, Unit> movableContentWithReceiverOf(final Function3<? super R, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(250838178, true, new Function3<R, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$movableContent$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentWithReceiverOf$movableContent$1<R>) obj, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(R r, Composer composer, int i) {
                ComposerKt.sourceInformation(composer, "C170@6662L9:MovableContent.kt#9igjgp");
                if ((i & 14) == 0) {
                    i |= composer.changed(r) ? 4 : 2;
                }
                if ((i & 91) == 18 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(250838178, i, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:170)");
                }
                content.invoke(r, composer, Integer.valueOf(i & 14));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(506997506, true, new Function3<R, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentWithReceiverOf$1<R>) obj, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(R r, Composer composer, int i) {
                int i2;
                ComposerKt.sourceInformation(composer, "C:MovableContent.kt#9igjgp");
                if ((i & 14) == 0) {
                    i2 = (composer.changed(r) ? 4 : 2) | i;
                } else {
                    i2 = i;
                }
                if ((i2 & 91) == 18 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(506997506, i, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:171)");
                }
                composer.insertMovableContent(movableContent, r);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    public static final <R, P> Function4<R, P, Composer, Integer, Unit> movableContentWithReceiverOf(final Function4<? super R, ? super P, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(812082854, true, new Function3<Pair<? extends R, ? extends P>, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$movableContent$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((Pair) obj, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Pair<? extends R, ? extends P> it, Composer composer, int i) {
                int i2;
                Intrinsics.checkNotNullParameter(it, "it");
                ComposerKt.sourceInformation(composer, "C197@7673L18:MovableContent.kt#9igjgp");
                if ((i & 14) == 0) {
                    i2 = (composer.changed(it) ? 4 : 2) | i;
                } else {
                    i2 = i;
                }
                if ((i2 & 91) == 18 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(812082854, i, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:197)");
                }
                content.invoke(it.getFirst(), it.getSecond(), composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(627354118, true, new Function4<R, P, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(4);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentWithReceiverOf$2<P, R>) obj, obj2, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(R r, P p, Composer composer, int i) {
                int i2;
                ComposerKt.sourceInformation(composer, "C:MovableContent.kt#9igjgp");
                if ((i & 14) == 0) {
                    i2 = (composer.changed(r) ? 4 : 2) | i;
                } else {
                    i2 = i;
                }
                if ((i & 112) == 0) {
                    i2 |= composer.changed(p) ? 32 : 16;
                }
                if ((i2 & 731) == 146 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(627354118, i, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:198)");
                }
                composer.insertMovableContent(movableContent, TuplesKt.to(r, p));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    public static final <R, P1, P2> Function5<R, P1, P2, Composer, Integer, Unit> movableContentWithReceiverOf(final Function5<? super R, ? super P1, ? super P2, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(-1322148760, true, new Function3<Pair<? extends Pair<? extends R, ? extends P1>, ? extends P2>, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$movableContent$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((Pair) obj, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Pair<? extends Pair<? extends R, ? extends P1>, ? extends P2> it, Composer composer, int i) {
                Intrinsics.checkNotNullParameter(it, "it");
                ComposerKt.sourceInformation(composer, "C225@8739L35:MovableContent.kt#9igjgp");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1322148760, i, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:224)");
                }
                content.invoke(it.getFirst().getFirst(), it.getFirst().getSecond(), it.getSecond(), composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(583402949, true, new Function5<R, P1, P2, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(5);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function5
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2, Object obj3, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentWithReceiverOf$3<P1, P2, R>) obj, obj2, obj3, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(R r, P1 p1, P2 p2, Composer composer, int i) {
                int i2;
                ComposerKt.sourceInformation(composer, "C:MovableContent.kt#9igjgp");
                if ((i & 14) == 0) {
                    i2 = (composer.changed(r) ? 4 : 2) | i;
                } else {
                    i2 = i;
                }
                if ((i & 112) == 0) {
                    i2 |= composer.changed(p1) ? 32 : 16;
                }
                if ((i & 896) == 0) {
                    i2 |= composer.changed(p2) ? 256 : 128;
                }
                if ((i2 & 5851) == 1170 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(583402949, i, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:227)");
                }
                composer.insertMovableContent(movableContent, TuplesKt.to(TuplesKt.to(r, p1), p2));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    public static final <R, P1, P2, P3> Function6<R, P1, P2, P3, Composer, Integer, Unit> movableContentWithReceiverOf(final Function6<? super R, ? super P1, ? super P2, ? super P3, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(838586922, true, new Function3<Pair<? extends Pair<? extends R, ? extends P1>, ? extends Pair<? extends P2, ? extends P3>>, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$movableContent$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((Pair) obj, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Pair<? extends Pair<? extends R, ? extends P1>, ? extends Pair<? extends P2, ? extends P3>> it, Composer composer, int i) {
                Intrinsics.checkNotNullParameter(it, "it");
                ComposerKt.sourceInformation(composer, "C254@9865L59:MovableContent.kt#9igjgp");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(838586922, i, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:253)");
                }
                content.invoke(it.getFirst().getFirst(), it.getFirst().getSecond(), it.getSecond().getFirst(), it.getSecond().getSecond(), composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(1468683306, true, new Function6<R, P1, P2, P3, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(6);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2, Object obj3, Object obj4, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentWithReceiverOf$4<P1, P2, P3, R>) obj, obj2, obj3, obj4, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(R r, P1 p1, P2 p2, P3 p3, Composer composer, int i) {
                int i2;
                ComposerKt.sourceInformation(composer, "C:MovableContent.kt#9igjgp");
                if ((i & 14) == 0) {
                    i2 = (composer.changed(r) ? 4 : 2) | i;
                } else {
                    i2 = i;
                }
                if ((i & 112) == 0) {
                    i2 |= composer.changed(p1) ? 32 : 16;
                }
                if ((i & 896) == 0) {
                    i2 |= composer.changed(p2) ? 256 : 128;
                }
                if ((i & 7168) == 0) {
                    i2 |= composer.changed(p3) ? 2048 : 1024;
                }
                if ((i2 & 46811) == 9362 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1468683306, i, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:256)");
                }
                composer.insertMovableContent(movableContent, TuplesKt.to(TuplesKt.to(r, p1), TuplesKt.to(p2, p3)));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }
}
