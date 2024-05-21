package io.sentry.compose;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.IScope;
import io.sentry.ISpan;
import io.sentry.ScopeCallback;
import io.sentry.Sentry;
import io.sentry.SpanOptions;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: SentryComposeTracing.kt */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aG\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u001c\u0010\u0013\u001a\u0018\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\r0\u0014¢\u0006\u0002\b\u0016¢\u0006\u0002\b\u0017H\u0007¢\u0006\u0002\u0010\u0018\u001a\n\u0010\u0019\u001a\u0004\u0018\u00010\tH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"!\u0010\u0006\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0018\u00010\t¢\u0006\u0002\b\n0\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\"!\u0010\u000b\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u000b\u0012\t\u0018\u00010\t¢\u0006\u0002\b\n0\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"OP_COMPOSE", "", "OP_PARENT_COMPOSITION", "OP_PARENT_RENDER", "OP_RENDER", "OP_TRACE_ORIGIN", "localSentryCompositionParentSpan", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Lio/sentry/compose/ImmutableHolder;", "Lio/sentry/ISpan;", "Lorg/jetbrains/annotations/NotNull;", "localSentryRenderingParentSpan", "SentryTraced", "", ViewHierarchyNode.JsonKeys.TAG, "modifier", "Landroidx/compose/ui/Modifier;", "enableUserInteractionTracing", "", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/BoxScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "getRootSpan", "sentry-compose_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryComposeTracingKt {
    private static final String OP_COMPOSE = "ui.compose";
    private static final String OP_PARENT_COMPOSITION = "ui.compose.composition";
    private static final String OP_PARENT_RENDER = "ui.compose.rendering";
    private static final String OP_RENDER = "ui.render";
    private static final String OP_TRACE_ORIGIN = "auto.ui.jetpack_compose";
    private static final ProvidableCompositionLocal<ImmutableHolder<ISpan>> localSentryCompositionParentSpan = CompositionLocalKt.compositionLocalOf$default(null, new Function0<ImmutableHolder<ISpan>>() { // from class: io.sentry.compose.SentryComposeTracingKt$localSentryCompositionParentSpan$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ImmutableHolder<ISpan> invoke() {
            ISpan rootSpan;
            ISpan iSpan;
            rootSpan = SentryComposeTracingKt.getRootSpan();
            if (rootSpan != null) {
                SpanOptions spanOptions = new SpanOptions();
                spanOptions.setTrimStart(true);
                spanOptions.setTrimEnd(true);
                spanOptions.setIdle(true);
                Unit unit = Unit.INSTANCE;
                iSpan = rootSpan.startChild("ui.compose.composition", "Jetpack Compose Initial Composition", spanOptions);
                if (iSpan != null) {
                    iSpan.getSpanContext().setOrigin("auto.ui.jetpack_compose");
                    return new ImmutableHolder<>(iSpan);
                }
            }
            iSpan = null;
            return new ImmutableHolder<>(iSpan);
        }
    }, 1, null);
    private static final ProvidableCompositionLocal<ImmutableHolder<ISpan>> localSentryRenderingParentSpan = CompositionLocalKt.compositionLocalOf$default(null, new Function0<ImmutableHolder<ISpan>>() { // from class: io.sentry.compose.SentryComposeTracingKt$localSentryRenderingParentSpan$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ImmutableHolder<ISpan> invoke() {
            ISpan rootSpan;
            ISpan iSpan;
            rootSpan = SentryComposeTracingKt.getRootSpan();
            if (rootSpan != null) {
                SpanOptions spanOptions = new SpanOptions();
                spanOptions.setTrimStart(true);
                spanOptions.setTrimEnd(true);
                spanOptions.setIdle(true);
                Unit unit = Unit.INSTANCE;
                iSpan = rootSpan.startChild("ui.compose.rendering", "Jetpack Compose Initial Render", spanOptions);
                if (iSpan != null) {
                    iSpan.getSpanContext().setOrigin("auto.ui.jetpack_compose");
                    return new ImmutableHolder<>(iSpan);
                }
            }
            iSpan = null;
            return new ImmutableHolder<>(iSpan);
        }
    }, 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final ISpan getRootSpan() {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Sentry.configureScope(new ScopeCallback() { // from class: io.sentry.compose.SentryComposeTracingKt$$ExternalSyntheticLambda0
            @Override // io.sentry.ScopeCallback
            public final void run(IScope iScope) {
                SentryComposeTracingKt.getRootSpan$lambda$0(Ref.ObjectRef.this, iScope);
            }
        });
        return (ISpan) objectRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, io.sentry.ITransaction] */
    public static final void getRootSpan$lambda$0(Ref.ObjectRef rootSpan, IScope it) {
        Intrinsics.checkNotNullParameter(rootSpan, "$rootSpan");
        Intrinsics.checkNotNullParameter(it, "it");
        rootSpan.element = it.getTransaction();
    }

    public static final void SentryTraced(final String tag, Modifier modifier, boolean z, final Function3<? super BoxScope, ? super Composer, ? super Integer, Unit> content, Composer composer, final int i, final int i2) {
        int i3;
        ISpan iSpan;
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(16925597);
        ComposerKt.sourceInformation(startRestartGroup, "C(SentryTraced)P(3,2,1)");
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 14) == 0) {
            i3 = (startRestartGroup.changed(tag) ? 4 : 2) | i;
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
            i3 |= startRestartGroup.changed(z) ? 256 : 128;
        }
        if ((i2 & 8) != 0) {
            i3 |= 3072;
        } else if ((i & 7168) == 0) {
            i3 |= startRestartGroup.changedInstance(content) ? 2048 : 1024;
        }
        if ((i3 & 5851) != 1170 || !startRestartGroup.getSkipping()) {
            if (i4 != 0) {
                modifier = Modifier.INSTANCE;
            }
            if (i5 != 0) {
                z = true;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(16925597, i3, -1, "io.sentry.compose.SentryTraced (SentryComposeTracing.kt:71)");
            }
            ProvidableCompositionLocal<ImmutableHolder<ISpan>> providableCompositionLocal = localSentryCompositionParentSpan;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(providableCompositionLocal);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ProvidableCompositionLocal<ImmutableHolder<ISpan>> providableCompositionLocal2 = localSentryRenderingParentSpan;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume2 = startRestartGroup.consume(providableCompositionLocal2);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            final ImmutableHolder immutableHolder = (ImmutableHolder) consume2;
            ISpan iSpan2 = (ISpan) ((ImmutableHolder) consume).getItem();
            if (iSpan2 == null || (iSpan = iSpan2.startChild(OP_COMPOSE, tag)) == null) {
                iSpan = null;
            } else {
                iSpan.getSpanContext().setOrigin(OP_TRACE_ORIGIN);
            }
            startRestartGroup.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = new ImmutableHolder(false);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            final ImmutableHolder immutableHolder2 = (ImmutableHolder) rememberedValue;
            Modifier sentryTag = z ? SentryModifier.sentryTag(Modifier.INSTANCE, tag) : modifier;
            startRestartGroup.startReplaceableGroup(1618982084);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1,2,3):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(immutableHolder2) | startRestartGroup.changed(immutableHolder) | startRestartGroup.changed(tag);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                rememberedValue2 = (Function1) new Function1<ContentDrawScope, Unit>() { // from class: io.sentry.compose.SentryComposeTracingKt$SentryTraced$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(ContentDrawScope contentDrawScope) {
                        invoke2(contentDrawScope);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(ContentDrawScope drawWithContent) {
                        ISpan item;
                        Intrinsics.checkNotNullParameter(drawWithContent, "$this$drawWithContent");
                        ISpan iSpan3 = null;
                        if (!immutableHolder2.getItem().booleanValue() && (item = immutableHolder.getItem()) != null) {
                            iSpan3 = item.startChild("ui.render", tag);
                        }
                        drawWithContent.drawContent();
                        immutableHolder2.setItem(true);
                        if (iSpan3 != null) {
                            iSpan3.finish();
                        }
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            Modifier drawWithContent = DrawModifierKt.drawWithContent(sentryTag, (Function1) rememberedValue2);
            startRestartGroup.startReplaceableGroup(-1990474327);
            ComposerKt.sourceInformation(startRestartGroup, "C(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), true, startRestartGroup, 48);
            startRestartGroup.startReplaceableGroup(1376089335);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)71@2788L7,72@2843L7,73@2855L389:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume3 = startRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density = (Density) consume3;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume4 = startRestartGroup.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection = (LayoutDirection) consume4;
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(drawWithContent);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m2273constructorimpl = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-1253629305);
            ComposerKt.sourceInformation(startRestartGroup, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            startRestartGroup.startReplaceableGroup(1295561559);
            content.invoke(boxScopeInstance, startRestartGroup, Integer.valueOf(((i3 >> 6) & 112) | 6));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            if (iSpan != null) {
                iSpan.finish();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        final Modifier modifier2 = modifier;
        final boolean z2 = z;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: io.sentry.compose.SentryComposeTracingKt$SentryTraced$3
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
                SentryComposeTracingKt.SentryTraced(tag, modifier2, z2, content, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
            }
        });
    }
}
