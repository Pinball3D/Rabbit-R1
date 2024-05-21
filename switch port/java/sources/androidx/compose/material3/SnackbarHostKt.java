package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AccessibilityManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.work.WorkRequest;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SnackbarHost.kt */
@Metadata(d1 = {"\u0000h\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a:\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000b¢\u0006\u0002\b\fH\u0003¢\u0006\u0002\u0010\r\u001a:\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\b\u001a\u00020\t2\u0019\b\u0002\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000b¢\u0006\u0002\b\fH\u0007¢\u0006\u0002\u0010\u0012\u001a9\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u001bH\u0003¢\u0006\u0002\u0010\u001c\u001a)\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0003¢\u0006\u0002\u0010\u001e\u001a\u001e\u0010\u001f\u001a\u00020 *\u00020!2\u0006\u0010\"\u001a\u00020\u00192\b\u0010#\u001a\u0004\u0018\u00010$H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000*b\b\u0002\u0010%\"-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00050\u001b¢\u0006\u0002\b\f¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00050\u000b¢\u0006\u0002\b\f2-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00050\u001b¢\u0006\u0002\b\f¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00050\u000b¢\u0006\u0002\b\f¨\u0006("}, d2 = {"SnackbarFadeInMillis", "", "SnackbarFadeOutMillis", "SnackbarInBetweenDelayMillis", "FadeInFadeOutWithScale", "", SentryThread.JsonKeys.CURRENT, "Landroidx/compose/material3/SnackbarData;", "modifier", "Landroidx/compose/ui/Modifier;", "content", "Lkotlin/Function1;", "Landroidx/compose/runtime/Composable;", "(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "SnackbarHost", "hostState", "Landroidx/compose/material3/SnackbarHostState;", "snackbar", "(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "animatedOpacity", "Landroidx/compose/runtime/State;", "", "animation", "Landroidx/compose/animation/core/AnimationSpec;", "visible", "", "onAnimationFinish", "Lkotlin/Function0;", "(Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;", "animatedScale", "(Landroidx/compose/animation/core/AnimationSpec;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "toMillis", "", "Landroidx/compose/material3/SnackbarDuration;", "hasAction", "accessibilityManager", "Landroidx/compose/ui/platform/AccessibilityManager;", "FadeInFadeOutTransition", "Lkotlin/ParameterName;", "name", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SnackbarHostKt {
    private static final int SnackbarFadeInMillis = 150;
    private static final int SnackbarFadeOutMillis = 75;
    private static final int SnackbarInBetweenDelayMillis = 0;

    /* compiled from: SnackbarHost.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SnackbarDuration.values().length];
            try {
                iArr[SnackbarDuration.Indefinite.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SnackbarDuration.Long.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SnackbarDuration.Short.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void SnackbarHost(final SnackbarHostState hostState, Modifier modifier, Function3<? super SnackbarData, ? super Composer, ? super Integer, Unit> function3, Composer composer, final int i, final int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(hostState, "hostState");
        Composer startRestartGroup = composer.startRestartGroup(464178177);
        ComposerKt.sourceInformation(startRestartGroup, "C(SnackbarHost)222@9266L7,223@9278L356,233@9639L134:SnackbarHost.kt#uh7d8r");
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 14) == 0) {
            i3 = (startRestartGroup.changed(hostState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i4 = i2 & 2;
        if (i4 != 0) {
            i3 |= 48;
        } else if ((i & 112) == 0) {
            i3 |= startRestartGroup.changed(modifier) ? 32 : 16;
        }
        int i5 = i2 & 4;
        if (i5 != 0) {
            i3 |= 384;
        } else if ((i & 896) == 0) {
            i3 |= startRestartGroup.changedInstance(function3) ? 256 : 128;
        }
        if ((i3 & 731) != 146 || !startRestartGroup.getSkipping()) {
            if (i4 != 0) {
                modifier = Modifier.INSTANCE;
            }
            if (i5 != 0) {
                function3 = ComposableSingletons$SnackbarHostKt.INSTANCE.m1135getLambda1$material3_release();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(464178177, i3, -1, "androidx.compose.material3.SnackbarHost (SnackbarHost.kt:216)");
            }
            SnackbarData currentSnackbarData = hostState.getCurrentSnackbarData();
            ProvidableCompositionLocal<AccessibilityManager> localAccessibilityManager = CompositionLocalsKt.getLocalAccessibilityManager();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localAccessibilityManager);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            EffectsKt.LaunchedEffect(currentSnackbarData, new SnackbarHostKt$SnackbarHost$1(currentSnackbarData, (AccessibilityManager) consume, null), startRestartGroup, 64);
            FadeInFadeOutWithScale(hostState.getCurrentSnackbarData(), modifier, function3, startRestartGroup, (i3 & 112) | (i3 & 896), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        final Modifier modifier2 = modifier;
        final Function3<? super SnackbarData, ? super Composer, ? super Integer, Unit> function32 = function3;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SnackbarHostKt$SnackbarHost$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i6) {
                SnackbarHostKt.SnackbarHost(SnackbarHostState.this, modifier2, function32, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
            }
        });
    }

    public static final long toMillis(SnackbarDuration snackbarDuration, boolean z, AccessibilityManager accessibilityManager) {
        long j;
        Intrinsics.checkNotNullParameter(snackbarDuration, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[snackbarDuration.ordinal()];
        if (i == 1) {
            j = Long.MAX_VALUE;
        } else if (i == 2) {
            j = WorkRequest.MIN_BACKOFF_MILLIS;
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            j = 4000;
        }
        long j2 = j;
        return accessibilityManager == null ? j2 : accessibilityManager.calculateRecommendedTimeoutMillis(j2, true, true, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0247 A[LOOP:2: B:52:0x0241->B:54:0x0247, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void FadeInFadeOutWithScale(final androidx.compose.material3.SnackbarData r17, androidx.compose.ui.Modifier r18, final kotlin.jvm.functions.Function3<? super androidx.compose.material3.SnackbarData, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r19, androidx.compose.runtime.Composer r20, final int r21, final int r22) {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SnackbarHostKt.FadeInFadeOutWithScale(androidx.compose.material3.SnackbarData, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final State<Float> animatedOpacity(AnimationSpec<Float> animationSpec, boolean z, Function0<Unit> function0, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(1431889134);
        ComposerKt.sourceInformation(composer, "C(animatedOpacity)P(!1,2)429@15701L49,430@15755L169:SnackbarHost.kt#uh7d8r");
        if ((i2 & 4) != 0) {
            function0 = new Function0<Unit>() { // from class: androidx.compose.material3.SnackbarHostKt$animatedOpacity$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        Function0<Unit> function02 = function0;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1431889134, i, -1, "androidx.compose.material3.animatedOpacity (SnackbarHost.kt:424)");
        }
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = AnimatableKt.Animatable$default(!z ? 1.0f : 0.0f, 0.0f, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Animatable animatable = (Animatable) rememberedValue;
        EffectsKt.LaunchedEffect(Boolean.valueOf(z), new SnackbarHostKt$animatedOpacity$2(animatable, z, animationSpec, function02, null), composer, ((i >> 3) & 14) | 64);
        State<Float> asState = animatable.asState();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return asState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final State<Float> animatedScale(AnimationSpec<Float> animationSpec, boolean z, Composer composer, int i) {
        composer.startReplaceableGroup(1966809761);
        ComposerKt.sourceInformation(composer, "C(animatedScale)442@16076L51,443@16132L143:SnackbarHost.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1966809761, i, -1, "androidx.compose.material3.animatedScale (SnackbarHost.kt:441)");
        }
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = AnimatableKt.Animatable$default(!z ? 1.0f : 0.8f, 0.0f, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Animatable animatable = (Animatable) rememberedValue;
        EffectsKt.LaunchedEffect(Boolean.valueOf(z), new SnackbarHostKt$animatedScale$1(animatable, z, animationSpec, null), composer, ((i >> 3) & 14) | 64);
        State<Float> asState = animatable.asState();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return asState;
    }
}
