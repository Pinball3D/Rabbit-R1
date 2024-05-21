package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PagerSemantics.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0001¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"rememberPagerSemanticState", "Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/pager/PagerState;", "reverseScrolling", "", "isVertical", "(Landroidx/compose/foundation/pager/PagerState;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PagerSemanticsKt {
    public static final LazyLayoutSemanticState rememberPagerSemanticState(PagerState state, boolean z, boolean z2, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(state, "state");
        composer.startReplaceableGroup(352210115);
        ComposerKt.sourceInformation(composer, "C(rememberPagerSemanticState)P(2,1)30@1089L104:PagerSemantics.kt#g6yjnt");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(352210115, i, -1, "androidx.compose.foundation.pager.rememberPagerSemanticState (PagerSemantics.kt:25)");
        }
        Boolean valueOf = Boolean.valueOf(z);
        Boolean valueOf2 = Boolean.valueOf(z2);
        composer.startReplaceableGroup(1618982084);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2,3):Composables.kt#9igjgp");
        boolean changed = composer.changed(valueOf) | composer.changed(state) | composer.changed(valueOf2);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = LazyLayoutSemanticStateKt.LazyLayoutSemanticState(state, z2);
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
