package androidx.activity.compose;

import androidx.activity.FullyDrawnReporter;
import androidx.activity.FullyDrawnReporterOwner;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: ReportDrawn.kt */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0002\u001a.\u0010\u0003\u001a\u00020\u00012\u001c\u0010\u0004\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\b\u001a\u001b\u0010\t\u001a\u00020\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0007¢\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"ReportDrawn", "", "(Landroidx/compose/runtime/Composer;I)V", "ReportDrawnAfter", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "ReportDrawnWhen", "predicate", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "activity-compose_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReportDrawnKt {
    public static final void ReportDrawnWhen(final Function0<Boolean> function0, Composer composer, final int i) {
        int i2;
        final FullyDrawnReporter fullyDrawnReporter;
        Composer startRestartGroup = composer.startRestartGroup(-2047119994);
        ComposerKt.sourceInformation(startRestartGroup, "C(ReportDrawnWhen)131@4432L7,132@4474L339:ReportDrawn.kt#q1dkbc");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 11) != 2 || !startRestartGroup.getSkipping()) {
            FullyDrawnReporterOwner current = LocalFullyDrawnReporterOwner.INSTANCE.getCurrent(startRestartGroup, 6);
            if (current == null || (fullyDrawnReporter = current.getFullyDrawnReporter()) == null) {
                ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
                if (endRestartGroup == null) {
                    return;
                }
                endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnWhen$fullyDrawnReporter$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer2, int i3) {
                        ReportDrawnKt.ReportDrawnWhen(function0, composer2, i | 1);
                    }
                });
                return;
            }
            EffectsKt.DisposableEffect(fullyDrawnReporter, function0, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnWhen$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final DisposableEffectResult invoke(DisposableEffectScope disposableEffectScope) {
                    if (!FullyDrawnReporter.this.isFullyDrawnReported()) {
                        final ReportDrawnComposition reportDrawnComposition = new ReportDrawnComposition(FullyDrawnReporter.this, function0);
                        return new DisposableEffectResult() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnWhen$1$invoke$$inlined$onDispose$2
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public void dispose() {
                                ReportDrawnComposition.this.removeReporter();
                            }
                        };
                    }
                    return new DisposableEffectResult() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnWhen$1$invoke$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public void dispose() {
                        }
                    };
                }
            }, startRestartGroup, ((i2 << 3) & 112) | 8);
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup2 = startRestartGroup.endRestartGroup();
        if (endRestartGroup2 == null) {
            return;
        }
        endRestartGroup2.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnWhen$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i3) {
                ReportDrawnKt.ReportDrawnWhen(function0, composer2, i | 1);
            }
        });
    }

    public static final void ReportDrawn(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-1357012904);
        ComposerKt.sourceInformation(startRestartGroup, "C(ReportDrawn)152@5068L24:ReportDrawn.kt#q1dkbc");
        if (i == 0 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            ReportDrawnWhen(new Function0<Boolean>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawn$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return true;
                }
            }, startRestartGroup, 6);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawn$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i2) {
                ReportDrawnKt.ReportDrawn(composer2, i | 1);
            }
        });
    }

    public static final void ReportDrawnAfter(final Function1<? super Continuation<? super Unit>, ? extends Object> function1, Composer composer, final int i) {
        FullyDrawnReporter fullyDrawnReporter;
        Composer startRestartGroup = composer.startRestartGroup(945311272);
        ComposerKt.sourceInformation(startRestartGroup, "C(ReportDrawnAfter)170@5599L7,171@5641L102:ReportDrawn.kt#q1dkbc");
        FullyDrawnReporterOwner current = LocalFullyDrawnReporterOwner.INSTANCE.getCurrent(startRestartGroup, 6);
        if (current == null || (fullyDrawnReporter = current.getFullyDrawnReporter()) == null) {
            ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
            if (endRestartGroup == null) {
                return;
            }
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnAfter$fullyDrawnReporter$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i2) {
                    ReportDrawnKt.ReportDrawnAfter(function1, composer2, i | 1);
                }
            });
            return;
        }
        EffectsKt.LaunchedEffect(function1, fullyDrawnReporter, new ReportDrawnKt$ReportDrawnAfter$1(fullyDrawnReporter, function1, null), startRestartGroup, 584);
        ScopeUpdateScope endRestartGroup2 = startRestartGroup.endRestartGroup();
        if (endRestartGroup2 == null) {
            return;
        }
        endRestartGroup2.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnAfter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i2) {
                ReportDrawnKt.ReportDrawnAfter(function1, composer2, i | 1);
            }
        });
    }
}
