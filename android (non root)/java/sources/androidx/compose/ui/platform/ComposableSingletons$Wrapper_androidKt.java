package androidx.compose.ui.platform;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: Wrapper.android.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposableSingletons$Wrapper_androidKt {
    public static final ComposableSingletons$Wrapper_androidKt INSTANCE = new ComposableSingletons$Wrapper_androidKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f41lambda1 = ComposableLambdaKt.composableLambdaInstance(-1759434350, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.platform.ComposableSingletons$Wrapper_androidKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C:Wrapper.android.kt#itgzvw");
            if ((i & 11) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1759434350, i, -1, "androidx.compose.ui.platform.ComposableSingletons$Wrapper_androidKt.lambda-1.<anonymous> (Wrapper.android.kt:129)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: getLambda-1$ui_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m4185getLambda1$ui_release() {
        return f41lambda1;
    }
}
