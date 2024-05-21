package androidx.compose.runtime;

import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: Recomposer.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposableSingletons$RecomposerKt {
    public static final ComposableSingletons$RecomposerKt INSTANCE = new ComposableSingletons$RecomposerKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f39lambda1 = ComposableLambdaKt.composableLambdaInstance(-1091980426, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.runtime.ComposableSingletons$RecomposerKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C:Recomposer.kt#9igjgp");
            if ((i & 11) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1091980426, i, -1, "androidx.compose.runtime.ComposableSingletons$RecomposerKt.lambda-1.<anonymous> (Recomposer.kt:391)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: getLambda-1$runtime_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m2250getLambda1$runtime_release() {
        return f39lambda1;
    }
}
