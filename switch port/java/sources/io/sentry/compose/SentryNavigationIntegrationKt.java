package io.sentry.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavHostController;
import io.sentry.android.navigation.SentryNavigationListener;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SentryNavigationIntegration.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u0011\u0010\u0002\u001a\u00020\u0003*\u00020\u0003H\u0001¢\u0006\u0002\u0010\u0004\u001a%\u0010\u0002\u001a\u00020\u0003*\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0002\u0010\b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"TRACE_ORIGIN_APPENDIX", "", "withSentryObservableEffect", "Landroidx/navigation/NavHostController;", "(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;", "enableNavigationBreadcrumbs", "", "enableNavigationTracing", "(Landroidx/navigation/NavHostController;ZZLandroidx/compose/runtime/Composer;II)Landroidx/navigation/NavHostController;", "sentry-compose_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryNavigationIntegrationKt {
    private static final String TRACE_ORIGIN_APPENDIX = "jetpack_compose";

    public static final NavHostController withSentryObservableEffect(final NavHostController navHostController, boolean z, boolean z2, Composer composer, int i, int i2) {
        Intrinsics.checkNotNullParameter(navHostController, "<this>");
        composer.startReplaceableGroup(-2071393061);
        ComposerKt.sourceInformation(composer, "C(withSentryObservableEffect)");
        if ((i2 & 1) != 0) {
            z = true;
        }
        if ((i2 & 2) != 0) {
            z2 = true;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2071393061, i, -1, "io.sentry.compose.withSentryObservableEffect (SentryNavigationIntegration.kt:57)");
        }
        final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z), composer, (i >> 3) & 14);
        final State rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z2), composer, (i >> 6) & 14);
        ProvidableCompositionLocal<LifecycleOwner> localLifecycleOwner = AndroidCompositionLocals_androidKt.getLocalLifecycleOwner();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localLifecycleOwner);
        ComposerKt.sourceInformationMarkerEnd(composer);
        final Lifecycle lifecycle = ((LifecycleOwner) consume).getLifecycle();
        Intrinsics.checkNotNullExpressionValue(lifecycle, "LocalLifecycleOwner.current.lifecycle");
        EffectsKt.DisposableEffect(lifecycle, navHostController, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: io.sentry.compose.SentryNavigationIntegrationKt$withSentryObservableEffect$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final DisposableEffectResult invoke(DisposableEffectScope DisposableEffect) {
                boolean withSentryObservableEffect$lambda$0;
                boolean withSentryObservableEffect$lambda$1;
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                NavHostController navHostController2 = NavHostController.this;
                withSentryObservableEffect$lambda$0 = SentryNavigationIntegrationKt.withSentryObservableEffect$lambda$0(rememberUpdatedState);
                withSentryObservableEffect$lambda$1 = SentryNavigationIntegrationKt.withSentryObservableEffect$lambda$1(rememberUpdatedState2);
                final SentryLifecycleObserver sentryLifecycleObserver = new SentryLifecycleObserver(navHostController2, new SentryNavigationListener(null, withSentryObservableEffect$lambda$0, withSentryObservableEffect$lambda$1, "jetpack_compose", 1, null));
                lifecycle.addObserver(sentryLifecycleObserver);
                final Lifecycle lifecycle2 = lifecycle;
                return new DisposableEffectResult() { // from class: io.sentry.compose.SentryNavigationIntegrationKt$withSentryObservableEffect$1$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        SentryLifecycleObserver.this.dispose();
                        lifecycle2.removeObserver(SentryLifecycleObserver.this);
                    }
                };
            }
        }, composer, 72);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return navHostController;
    }

    public static final NavHostController withSentryObservableEffect(NavHostController navHostController, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(navHostController, "<this>");
        composer.startReplaceableGroup(-941334997);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-941334997, i, -1, "io.sentry.compose.withSentryObservableEffect (SentryNavigationIntegration.kt:94)");
        }
        NavHostController withSentryObservableEffect = withSentryObservableEffect(navHostController, true, true, composer, 440, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return withSentryObservableEffect;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean withSentryObservableEffect$lambda$0(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean withSentryObservableEffect$lambda$1(State<Boolean> state) {
        return state.getValue().booleanValue();
    }
}
