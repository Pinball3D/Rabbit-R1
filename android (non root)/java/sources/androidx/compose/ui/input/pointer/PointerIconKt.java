package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PointerIcon.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u001e\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0007\"\u0016\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"ModifierLocalPointerIcon", "Landroidx/compose/ui/modifier/ProvidableModifierLocal;", "Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;", "pointerHoverIcon", "Landroidx/compose/ui/Modifier;", "icon", "Landroidx/compose/ui/input/pointer/PointerIcon;", "overrideDescendants", "", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PointerIconKt {
    private static final ProvidableModifierLocal<PointerIconModifierLocal> ModifierLocalPointerIcon = ModifierLocalKt.modifierLocalOf(new Function0<PointerIconModifierLocal>() { // from class: androidx.compose.ui.input.pointer.PointerIconKt$ModifierLocalPointerIcon$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final PointerIconModifierLocal invoke() {
            return null;
        }
    });

    public static /* synthetic */ Modifier pointerHoverIcon$default(Modifier modifier, PointerIcon pointerIcon, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return pointerHoverIcon(modifier, pointerIcon, z);
    }

    public static final Modifier pointerHoverIcon(Modifier modifier, final PointerIcon icon, final boolean z) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(icon, "icon");
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$$inlined$debugInspectorInfo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                inspectorInfo.setName("pointerHoverIcon");
                inspectorInfo.getProperties().set("icon", PointerIcon.this);
                inspectorInfo.getProperties().set("overrideDescendants", Boolean.valueOf(z));
            }
        } : InspectableValueKt.getNoInspectorInfo(), new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            public final Modifier invoke(Modifier composed, Composer composer, int i) {
                Modifier.Companion companion;
                Modifier.Companion then;
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(811087536);
                ComposerKt.sourceInformation(composer, "C90@3499L7,97@3759L103,100@3886L226,100@3875L237,108@4265L525:PointerIcon.kt#a556rk");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(811087536, i, -1, "androidx.compose.ui.input.pointer.pointerHoverIcon.<anonymous> (PointerIcon.kt:89)");
                }
                ProvidableCompositionLocal<PointerIconService> localPointerIconService = CompositionLocalsKt.getLocalPointerIconService();
                ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object consume = composer.consume(localPointerIconService);
                ComposerKt.sourceInformationMarkerEnd(composer);
                final PointerIconService pointerIconService = (PointerIconService) consume;
                if (pointerIconService == null) {
                    then = Modifier.INSTANCE;
                } else {
                    final Function1<PointerIcon, Unit> function1 = new Function1<PointerIcon, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2$onSetIcon$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(PointerIcon pointerIcon) {
                            invoke2(pointerIcon);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(PointerIcon pointerIcon) {
                            PointerIconService.this.setIcon(pointerIcon);
                        }
                    };
                    PointerIcon pointerIcon = PointerIcon.this;
                    boolean z2 = z;
                    composer.startReplaceableGroup(-492369756);
                    ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
                    Object rememberedValue = composer.rememberedValue();
                    if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                        rememberedValue = new PointerIconModifierLocal(pointerIcon, z2, function1);
                        composer.updateRememberedValue(rememberedValue);
                    }
                    composer.endReplaceableGroup();
                    final PointerIconModifierLocal pointerIconModifierLocal = (PointerIconModifierLocal) rememberedValue;
                    Object[] objArr = {pointerIconModifierLocal, PointerIcon.this, Boolean.valueOf(z), function1};
                    final PointerIcon pointerIcon2 = PointerIcon.this;
                    final boolean z3 = z;
                    composer.startReplaceableGroup(-568225417);
                    ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
                    boolean z4 = false;
                    for (int i2 = 0; i2 < 4; i2++) {
                        z4 |= composer.changed(objArr[i2]);
                    }
                    Object rememberedValue2 = composer.rememberedValue();
                    if (z4 || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        rememberedValue2 = (Function0) new Function0<Unit>() { // from class: androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2$1$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                PointerIconModifierLocal.this.updateValues(pointerIcon2, z3, function1);
                            }
                        };
                        composer.updateRememberedValue(rememberedValue2);
                    }
                    composer.endReplaceableGroup();
                    EffectsKt.SideEffect((Function0) rememberedValue2, composer, 0);
                    if (pointerIconModifierLocal.shouldUpdatePointerIcon()) {
                        composer.startReplaceableGroup(1157296644);
                        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
                        boolean changed = composer.changed(pointerIconModifierLocal);
                        Object rememberedValue3 = composer.rememberedValue();
                        if (changed || rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                            rememberedValue3 = (Function2) new PointerIconKt$pointerHoverIcon$2$pointerInputModifier$1$1(pointerIconModifierLocal, null);
                            composer.updateRememberedValue(rememberedValue3);
                        }
                        composer.endReplaceableGroup();
                        companion = SuspendingPointerInputFilterKt.pointerInput(composed, pointerIconModifierLocal, (Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object>) rememberedValue3);
                    } else {
                        companion = Modifier.INSTANCE;
                    }
                    then = pointerIconModifierLocal.then(companion);
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                return then;
            }
        });
    }
}
