package tech.rabbit.r1launcher;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: HWTestActivity.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ComposableSingletons$HWTestActivityKt {
    public static final ComposableSingletons$HWTestActivityKt INSTANCE = new ComposableSingletons$HWTestActivityKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f48lambda1 = ComposableLambdaKt.composableLambdaInstance(806451613, false, new Function2<Composer, Integer, Unit>() { // from class: tech.rabbit.r1launcher.ComposableSingletons$HWTestActivityKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 11) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(806451613, i, -1, "tech.rabbit.r1launcher.ComposableSingletons$HWTestActivityKt.lambda-1.<anonymous> (HWTestActivity.kt:77)");
            }
            HWTestActivityKt.Greeting("Android", null, composer, 6, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: getLambda-1$app_productionEnvRelease, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m7458getLambda1$app_productionEnvRelease() {
        return f48lambda1;
    }
}
