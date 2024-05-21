package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SnackbarHost.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposableSingletons$SnackbarHostKt {
    public static final ComposableSingletons$SnackbarHostKt INSTANCE = new ComposableSingletons$SnackbarHostKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function3<SnackbarData, Composer, Integer, Unit> f30lambda1 = ComposableLambdaKt.composableLambdaInstance(818736383, false, new Function3<SnackbarData, Composer, Integer, Unit>() { // from class: androidx.compose.material3.ComposableSingletons$SnackbarHostKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(SnackbarData snackbarData, Composer composer, Integer num) {
            invoke(snackbarData, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(SnackbarData it, Composer composer, int i) {
            int i2;
            Intrinsics.checkNotNullParameter(it, "it");
            ComposerKt.sourceInformation(composer, "C219@9130L12:SnackbarHost.kt#uh7d8r");
            if ((i & 14) == 0) {
                i2 = i | (composer.changed(it) ? 4 : 2);
            } else {
                i2 = i;
            }
            if ((i2 & 91) == 18 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(818736383, i2, -1, "androidx.compose.material3.ComposableSingletons$SnackbarHostKt.lambda-1.<anonymous> (SnackbarHost.kt:219)");
            }
            SnackbarKt.m1400SnackbarsDKtq54(it, null, false, null, 0L, 0L, 0L, 0L, 0L, composer, i2 & 14, 510);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: getLambda-1$material3_release, reason: not valid java name */
    public final Function3<SnackbarData, Composer, Integer, Unit> m1135getLambda1$material3_release() {
        return f30lambda1;
    }
}
