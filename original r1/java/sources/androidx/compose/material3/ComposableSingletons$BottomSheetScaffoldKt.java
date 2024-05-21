package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BottomSheetScaffold.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposableSingletons$BottomSheetScaffoldKt {
    public static final ComposableSingletons$BottomSheetScaffoldKt INSTANCE = new ComposableSingletons$BottomSheetScaffoldKt();

    /* renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f17lambda1 = ComposableLambdaKt.composableLambdaInstance(481988104, false, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ComposableSingletons$BottomSheetScaffoldKt$lambda-1$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            ComposerKt.sourceInformation(composer, "C106@5655L12:BottomSheetScaffold.kt#uh7d8r");
            if ((i & 11) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(481988104, i, -1, "androidx.compose.material3.ComposableSingletons$BottomSheetScaffoldKt.lambda-1.<anonymous> (BottomSheetScaffold.kt:106)");
            }
            BottomSheetDefaults.INSTANCE.m1002DragHandlelgZ2HuY(null, 0.0f, 0.0f, null, 0L, composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: lambda-2, reason: not valid java name */
    public static Function3<SnackbarHostState, Composer, Integer, Unit> f18lambda2 = ComposableLambdaKt.composableLambdaInstance(-928941170, false, new Function3<SnackbarHostState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.ComposableSingletons$BottomSheetScaffoldKt$lambda-2$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(SnackbarHostState snackbarHostState, Composer composer, Integer num) {
            invoke(snackbarHostState, composer, num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(SnackbarHostState it, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(it, "it");
            ComposerKt.sourceInformation(composer, "C109@5818L16:BottomSheetScaffold.kt#uh7d8r");
            if ((i & 14) == 0) {
                i |= composer.changed(it) ? 4 : 2;
            }
            if ((i & 91) == 18 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-928941170, i, -1, "androidx.compose.material3.ComposableSingletons$BottomSheetScaffoldKt.lambda-2.<anonymous> (BottomSheetScaffold.kt:109)");
            }
            SnackbarHostKt.SnackbarHost(it, null, null, composer, i & 14, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* renamed from: getLambda-1$material3_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m1122getLambda1$material3_release() {
        return f17lambda1;
    }

    /* renamed from: getLambda-2$material3_release, reason: not valid java name */
    public final Function3<SnackbarHostState, Composer, Integer, Unit> m1123getLambda2$material3_release() {
        return f18lambda2;
    }
}
