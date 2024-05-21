package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: TabRow.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposableSingletons$TabRowKt {
    public static final ComposableSingletons$TabRowKt INSTANCE = new ComposableSingletons$TabRowKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f32lambda1 = ComposableLambdaKt.composableLambdaInstance(-711844679, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ComposableSingletons$TabRowKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C138@6786L9:TabRow.kt#uh7d8r");
            if ((i & 11) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-711844679, i, -1, "androidx.compose.material3.ComposableSingletons$TabRowKt.lambda-1.<anonymous> (TabRow.kt:137)");
            }
            DividerKt.m1186Divider9IZ8Weo(null, 0.0f, 0L, composer, 0, 7);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-2, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f33lambda2 = ComposableLambdaKt.composableLambdaInstance(-713969278, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ComposableSingletons$TabRowKt$lambda-2$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C239@11427L9:TabRow.kt#uh7d8r");
            if ((i & 11) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-713969278, i, -1, "androidx.compose.material3.ComposableSingletons$TabRowKt.lambda-2.<anonymous> (TabRow.kt:238)");
            }
            DividerKt.m1186Divider9IZ8Weo(null, 0.0f, 0L, composer, 0, 7);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: getLambda-1$material3_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m1137getLambda1$material3_release() {
        return f32lambda1;
    }

    /* renamed from: getLambda-2$material3_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m1138getLambda2$material3_release() {
        return f33lambda2;
    }
}
