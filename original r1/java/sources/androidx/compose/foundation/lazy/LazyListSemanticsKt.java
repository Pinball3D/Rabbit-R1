package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyListSemantics.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0001¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"rememberLazyListSemanticState", "Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/lazy/LazyListState;", "isVertical", "", "(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyListSemanticsKt {
    public static final LazyLayoutSemanticState rememberLazyListSemanticState(LazyListState state, boolean z, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(state, "state");
        composer.startReplaceableGroup(596174919);
        ComposerKt.sourceInformation(composer, "C(rememberLazyListSemanticState)P(1)27@961L107:LazyListSemantics.kt#428nma");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(596174919, i, -1, "androidx.compose.foundation.lazy.rememberLazyListSemanticState (LazyListSemantics.kt:23)");
        }
        Boolean valueOf = Boolean.valueOf(z);
        composer.startReplaceableGroup(511388516);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
        boolean changed = composer.changed(valueOf) | composer.changed(state);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = LazyLayoutSemanticStateKt.LazyLayoutSemanticState(state, z);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        LazyLayoutSemanticState lazyLayoutSemanticState = (LazyLayoutSemanticState) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return lazyLayoutSemanticState;
    }
}
