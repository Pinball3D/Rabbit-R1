package androidx.compose.ui.window;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: AndroidPopup.android.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposableSingletons$AndroidPopup_androidKt {
    public static final ComposableSingletons$AndroidPopup_androidKt INSTANCE = new ComposableSingletons$AndroidPopup_androidKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f43lambda1 = ComposableLambdaKt.composableLambdaInstance(-1131826196, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.ComposableSingletons$AndroidPopup_androidKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C:AndroidPopup.android.kt#2oxthz");
            if ((i & 11) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1131826196, i, -1, "androidx.compose.ui.window.ComposableSingletons$AndroidPopup_androidKt.lambda-1.<anonymous> (AndroidPopup.android.kt:446)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: getLambda-1$ui_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m5127getLambda1$ui_release() {
        return f43lambda1;
    }
}
