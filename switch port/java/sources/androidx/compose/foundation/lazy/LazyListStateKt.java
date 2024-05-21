package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* compiled from: LazyListState.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a!\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"rememberLazyListState", "Landroidx/compose/foundation/lazy/LazyListState;", "initialFirstVisibleItemIndex", "", "initialFirstVisibleItemScrollOffset", "(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyListStateKt {
    public static final LazyListState rememberLazyListState(final int i, final int i2, Composer composer, int i3, int i4) {
        composer.startReplaceableGroup(1470655220);
        ComposerKt.sourceInformation(composer, "C(rememberLazyListState)61@2758L130,61@2712L176:LazyListState.kt#428nma");
        if ((i4 & 1) != 0) {
            i = 0;
        }
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1470655220, i3, -1, "androidx.compose.foundation.lazy.rememberLazyListState (LazyListState.kt:57)");
        }
        Object[] objArr = new Object[0];
        Saver<LazyListState, ?> saver = LazyListState.INSTANCE.getSaver();
        Integer valueOf = Integer.valueOf(i);
        Integer valueOf2 = Integer.valueOf(i2);
        composer.startReplaceableGroup(511388516);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
        boolean changed = composer.changed(valueOf) | composer.changed(valueOf2);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = (Function0) new Function0<LazyListState>() { // from class: androidx.compose.foundation.lazy.LazyListStateKt$rememberLazyListState$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final LazyListState invoke() {
                    return new LazyListState(i, i2);
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        LazyListState lazyListState = (LazyListState) RememberSaveableKt.m2286rememberSaveable(objArr, (Saver) saver, (String) null, (Function0) rememberedValue, composer, 72, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return lazyListState;
    }
}
