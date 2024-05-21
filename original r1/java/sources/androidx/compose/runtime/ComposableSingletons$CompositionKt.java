package androidx.compose.runtime;

import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: Composition.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposableSingletons$CompositionKt {
    public static final ComposableSingletons$CompositionKt INSTANCE = new ComposableSingletons$CompositionKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f37lambda1 = ComposableLambdaKt.composableLambdaInstance(954879418, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.runtime.ComposableSingletons$CompositionKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C:Composition.kt#9igjgp");
            if ((i & 11) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(954879418, i, -1, "androidx.compose.runtime.ComposableSingletons$CompositionKt.lambda-1.<anonymous> (Composition.kt:506)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-2, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f38lambda2 = ComposableLambdaKt.composableLambdaInstance(1918065384, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.runtime.ComposableSingletons$CompositionKt$lambda-2$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C:Composition.kt#9igjgp");
            if ((i & 11) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1918065384, i, -1, "androidx.compose.runtime.ComposableSingletons$CompositionKt.lambda-2.<anonymous> (Composition.kt:597)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: getLambda-1$runtime_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m2248getLambda1$runtime_release() {
        return f37lambda1;
    }

    /* renamed from: getLambda-2$runtime_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m2249getLambda2$runtime_release() {
        return f38lambda2;
    }
}
