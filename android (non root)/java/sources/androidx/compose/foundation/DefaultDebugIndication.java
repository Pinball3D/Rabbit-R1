package androidx.compose.foundation;

import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.HoverInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteractionKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Indication.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001:\u0001\bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0017¢\u0006\u0002\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/DefaultDebugIndication;", "Landroidx/compose/foundation/Indication;", "()V", "rememberUpdatedInstance", "Landroidx/compose/foundation/IndicationInstance;", "interactionSource", "Landroidx/compose/foundation/interaction/InteractionSource;", "(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/IndicationInstance;", "DefaultDebugIndicationInstance", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DefaultDebugIndication implements Indication {
    public static final DefaultDebugIndication INSTANCE = new DefaultDebugIndication();

    private DefaultDebugIndication() {
    }

    /* compiled from: Indication.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B/\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0007J\f\u0010\b\u001a\u00020\t*\u00020\nH\u0016R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;", "Landroidx/compose/foundation/IndicationInstance;", "isPressed", "Landroidx/compose/runtime/State;", "", "isHovered", "isFocused", "(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V", "drawIndication", "", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class DefaultDebugIndicationInstance implements IndicationInstance {
        private final State<Boolean> isFocused;
        private final State<Boolean> isHovered;
        private final State<Boolean> isPressed;

        public DefaultDebugIndicationInstance(State<Boolean> isPressed, State<Boolean> isHovered, State<Boolean> isFocused) {
            Intrinsics.checkNotNullParameter(isPressed, "isPressed");
            Intrinsics.checkNotNullParameter(isHovered, "isHovered");
            Intrinsics.checkNotNullParameter(isFocused, "isFocused");
            this.isPressed = isPressed;
            this.isHovered = isHovered;
            this.isFocused = isFocused;
        }

        @Override // androidx.compose.foundation.IndicationInstance
        public void drawIndication(ContentDrawScope contentDrawScope) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
            contentDrawScope.drawContent();
            if (this.isPressed.getValue().booleanValue()) {
                DrawScope.m3177drawRectnJ9OG0$default(contentDrawScope, Color.m2638copywmQWz5c$default(Color.INSTANCE.m2665getBlack0d7_KjU(), 0.3f, 0.0f, 0.0f, 0.0f, 14, null), 0L, contentDrawScope.mo3182getSizeNHjbRc(), 0.0f, null, null, 0, 122, null);
            } else if (this.isHovered.getValue().booleanValue() || this.isFocused.getValue().booleanValue()) {
                DrawScope.m3177drawRectnJ9OG0$default(contentDrawScope, Color.m2638copywmQWz5c$default(Color.INSTANCE.m2665getBlack0d7_KjU(), 0.1f, 0.0f, 0.0f, 0.0f, 14, null), 0L, contentDrawScope.mo3182getSizeNHjbRc(), 0.0f, null, null, 0, 122, null);
            }
        }
    }

    @Override // androidx.compose.foundation.Indication
    public IndicationInstance rememberUpdatedInstance(InteractionSource interactionSource, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        composer.startReplaceableGroup(1683566979);
        ComposerKt.sourceInformation(composer, "C(rememberUpdatedInstance)167@6771L25,168@6839L25,169@6907L25,170@6948L115:Indication.kt#71ulvw");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1683566979, i, -1, "androidx.compose.foundation.DefaultDebugIndication.rememberUpdatedInstance (Indication.kt:166)");
        }
        int i2 = i & 14;
        State<Boolean> collectIsPressedAsState = PressInteractionKt.collectIsPressedAsState(interactionSource, composer, i2);
        State<Boolean> collectIsHoveredAsState = HoverInteractionKt.collectIsHoveredAsState(interactionSource, composer, i2);
        State<Boolean> collectIsFocusedAsState = FocusInteractionKt.collectIsFocusedAsState(interactionSource, composer, i2);
        composer.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = composer.changed(interactionSource);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = new DefaultDebugIndicationInstance(collectIsPressedAsState, collectIsHoveredAsState, collectIsFocusedAsState);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        DefaultDebugIndicationInstance defaultDebugIndicationInstance = (DefaultDebugIndicationInstance) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return defaultDebugIndicationInstance;
    }
}
