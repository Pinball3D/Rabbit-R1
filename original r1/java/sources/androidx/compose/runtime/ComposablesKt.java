package androidx.compose.runtime;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Composables.kt */
@Metadata(d1 = {"\u0000v\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\u001ab\u0010\u0012\u001a\u00020\u0013\"\b\b\u0000\u0010\u0014*\u00020\u0015\"\u000e\b\u0001\u0010\u0016\u0018\u0001*\u0006\u0012\u0002\b\u00030\u00172\u000e\b\b\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00140\u00192\"\u0010\u001a\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00140\u001c\u0012\u0004\u0012\u00020\u00130\u001b¢\u0006\u0002\b\u001d¢\u0006\u0002\b\u001eH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010\u001f\u001aq\u0010\u0012\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0014\"\u000e\b\u0001\u0010\u0016\u0018\u0001*\u0006\u0012\u0002\b\u00030\u00172\u000e\b\b\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00140\u00192\"\u0010\u001a\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00140\u001c\u0012\u0004\u0012\u00020\u00130\u001b¢\u0006\u0002\b\u001d¢\u0006\u0002\b\u001e2\u0011\u0010 \u001a\r\u0012\u0004\u0012\u00020\u00130\u0019¢\u0006\u0002\b!H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010\"\u001a\u0097\u0001\u0010\u0012\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0014\"\u000e\b\u0001\u0010\u0016\u0018\u0001*\u0006\u0012\u0002\b\u00030\u00172\u000e\b\b\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00140\u00192\"\u0010\u001a\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00140\u001c\u0012\u0004\u0012\u00020\u00130\u001b¢\u0006\u0002\b\u001d¢\u0006\u0002\b\u001e2$\b\b\u0010#\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00140$\u0012\u0004\u0012\u00020\u00130\u001b¢\u0006\u0002\b!¢\u0006\u0002\b\u001e2\u0011\u0010 \u001a\r\u0012\u0004\u0012\u00020\u00130\u0019¢\u0006\u0002\b!H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010%\u001ab\u0010&\u001a\u00020\u0013\"\b\b\u0000\u0010\u0014*\u00020\u0015\"\u000e\b\u0001\u0010\u0016\u0018\u0001*\u0006\u0012\u0002\b\u00030\u00172\u000e\b\b\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00140\u00192\"\u0010\u001a\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00140\u001c\u0012\u0004\u0012\u00020\u00130\u001b¢\u0006\u0002\b\u001d¢\u0006\u0002\b\u001eH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010\u001f\u001aq\u0010&\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0014\"\u000e\b\u0001\u0010\u0016\u0018\u0001*\u0006\u0012\u0002\b\u00030\u00172\u000e\b\b\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00140\u00192\"\u0010\u001a\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00140\u001c\u0012\u0004\u0012\u00020\u00130\u001b¢\u0006\u0002\b\u001d¢\u0006\u0002\b\u001e2\u0011\u0010 \u001a\r\u0012\u0004\u0012\u00020\u00130\u0019¢\u0006\u0002\b!H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010\"\u001a\u0097\u0001\u0010&\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0014\"\u000e\b\u0001\u0010\u0016\u0018\u0001*\u0006\u0012\u0002\b\u00030\u00172\u000e\b\b\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00140\u00192\"\u0010\u001a\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00140\u001c\u0012\u0004\u0012\u00020\u00130\u001b¢\u0006\u0002\b\u001d¢\u0006\u0002\b\u001e2$\b\b\u0010#\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00140$\u0012\u0004\u0012\u00020\u00130\u001b¢\u0006\u0002\b!¢\u0006\u0002\b\u001e2\u0011\u0010 \u001a\r\u0012\u0004\u0012\u00020\u00130\u0019¢\u0006\u0002\b!H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010%\u001a.\u0010'\u001a\u00020\u00132\b\u0010(\u001a\u0004\u0018\u00010\u00152\u0011\u0010 \u001a\r\u0012\u0004\u0012\u00020\u00130\u0019¢\u0006\u0002\b!H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010)\u001a.\u0010*\u001a\u00020\u00132\u0006\u0010+\u001a\u00020,2\u0013\b\u0004\u0010 \u001a\r\u0012\u0004\u0012\u00020\u00130\u0019¢\u0006\u0002\b!H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010-\u001a\b\u0010.\u001a\u00020\u0013H\u0001\u001aB\u0010(\u001a\u0002H\u0014\"\u0004\b\u0000\u0010\u00142\u0016\u0010/\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u001500\"\u0004\u0018\u00010\u00152\u0011\u00101\u001a\r\u0012\u0004\u0012\u0002H\u00140\u0019¢\u0006\u0002\b!H\u0087\bø\u0001\u0000¢\u0006\u0002\u00102\u001a,\u00103\u001a\u0002H\u0014\"\u0004\b\u0000\u0010\u00142\u0013\b\u0004\u00104\u001a\r\u0012\u0004\u0012\u0002H\u00140\u0019¢\u0006\u0002\b\u001dH\u0087\bø\u0001\u0000¢\u0006\u0002\u00105\u001a6\u00103\u001a\u0002H\u0014\"\u0004\b\u0000\u0010\u00142\b\u00106\u001a\u0004\u0018\u00010\u00152\u0013\b\u0004\u00104\u001a\r\u0012\u0004\u0012\u0002H\u00140\u0019¢\u0006\u0002\b\u001dH\u0087\bø\u0001\u0000¢\u0006\u0002\u00107\u001a@\u00103\u001a\u0002H\u0014\"\u0004\b\u0000\u0010\u00142\b\u00106\u001a\u0004\u0018\u00010\u00152\b\u00108\u001a\u0004\u0018\u00010\u00152\u0013\b\u0004\u00104\u001a\r\u0012\u0004\u0012\u0002H\u00140\u0019¢\u0006\u0002\b\u001dH\u0087\bø\u0001\u0000¢\u0006\u0002\u00109\u001aJ\u00103\u001a\u0002H\u0014\"\u0004\b\u0000\u0010\u00142\b\u00106\u001a\u0004\u0018\u00010\u00152\b\u00108\u001a\u0004\u0018\u00010\u00152\b\u0010:\u001a\u0004\u0018\u00010\u00152\u0013\b\u0004\u00104\u001a\r\u0012\u0004\u0012\u0002H\u00140\u0019¢\u0006\u0002\b\u001dH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010;\u001aD\u00103\u001a\u0002H\u0014\"\u0004\b\u0000\u0010\u00142\u0016\u0010/\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u001500\"\u0004\u0018\u00010\u00152\u0013\b\u0004\u00104\u001a\r\u0012\u0004\u0012\u0002H\u00140\u0019¢\u0006\u0002\b\u001dH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010<\u001a\r\u0010=\u001a\u00020>H\u0007¢\u0006\u0002\u0010?\"\u0011\u0010\u0000\u001a\u00020\u00018G¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u00058G¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007\"\u0017\u0010\b\u001a\u00020\t8G¢\u0006\f\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0011\u0010\u000e\u001a\u00020\u000f8G¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011\u0082\u0002\u000b\n\u0005\b\u009920\u0001\n\u0002\b\u0019¨\u0006@"}, d2 = {"currentComposer", "Landroidx/compose/runtime/Composer;", "getCurrentComposer", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/Composer;", "currentCompositeKeyHash", "", "getCurrentCompositeKeyHash", "(Landroidx/compose/runtime/Composer;I)I", "currentCompositionLocalContext", "Landroidx/compose/runtime/CompositionLocalContext;", "getCurrentCompositionLocalContext$annotations", "()V", "getCurrentCompositionLocalContext", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionLocalContext;", "currentRecomposeScope", "Landroidx/compose/runtime/RecomposeScope;", "getCurrentRecomposeScope", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/RecomposeScope;", "ComposeNode", "", ExifInterface.GPS_DIRECTION_TRUE, "", ExifInterface.LONGITUDE_EAST, "Landroidx/compose/runtime/Applier;", "factory", "Lkotlin/Function0;", "update", "Lkotlin/Function1;", "Landroidx/compose/runtime/Updater;", "Landroidx/compose/runtime/DisallowComposableCalls;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "content", "Landroidx/compose/runtime/Composable;", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "skippableUpdate", "Landroidx/compose/runtime/SkippableUpdater;", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "ReusableComposeNode", "ReusableContent", "key", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "ReusableContentHost", "active", "", "(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "invalidApplier", "keys", "", "block", "([Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;", "remember", "calculation", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;", "key1", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;", "key2", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;", "key3", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;", "([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;", "rememberCompositionContext", "Landroidx/compose/runtime/CompositionContext;", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;", "runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposablesKt {
    public static /* synthetic */ void getCurrentCompositionLocalContext$annotations() {
    }

    public static final <T> T remember(Object obj, Function0<? extends T> calculation, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(calculation, "calculation");
        composer.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = composer.changed(obj);
        T t = (T) composer.rememberedValue();
        if (changed || t == Composer.INSTANCE.getEmpty()) {
            t = calculation.invoke();
            composer.updateRememberedValue(t);
        }
        composer.endReplaceableGroup();
        return t;
    }

    public static final <T> T remember(Object obj, Object obj2, Function0<? extends T> calculation, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(calculation, "calculation");
        composer.startReplaceableGroup(511388516);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
        boolean changed = composer.changed(obj) | composer.changed(obj2);
        T t = (T) composer.rememberedValue();
        if (changed || t == Composer.INSTANCE.getEmpty()) {
            t = calculation.invoke();
            composer.updateRememberedValue(t);
        }
        composer.endReplaceableGroup();
        return t;
    }

    public static final <T> T remember(Object obj, Object obj2, Object obj3, Function0<? extends T> calculation, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(calculation, "calculation");
        composer.startReplaceableGroup(1618982084);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2,3):Composables.kt#9igjgp");
        boolean changed = composer.changed(obj) | composer.changed(obj2) | composer.changed(obj3);
        T t = (T) composer.rememberedValue();
        if (changed || t == Composer.INSTANCE.getEmpty()) {
            t = calculation.invoke();
            composer.updateRememberedValue(t);
        }
        composer.endReplaceableGroup();
        return t;
    }

    public static final <T> T remember(Object[] keys, Function0<? extends T> calculation, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Intrinsics.checkNotNullParameter(calculation, "calculation");
        composer.startReplaceableGroup(-568225417);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean z = false;
        for (Object obj : keys) {
            z |= composer.changed(obj);
        }
        T t = (T) composer.rememberedValue();
        if (z || t == Composer.INSTANCE.getEmpty()) {
            t = calculation.invoke();
            composer.updateRememberedValue(t);
        }
        composer.endReplaceableGroup();
        return t;
    }

    public static final <T> T key(Object[] keys, Function2<? super Composer, ? super Integer, ? extends T> block, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Intrinsics.checkNotNullParameter(block, "block");
        composer.startReplaceableGroup(-11941951);
        ComposerKt.sourceInformation(composer, "CC(key)P(1)128@4658L7:Composables.kt#9igjgp");
        T invoke = block.invoke(composer, Integer.valueOf((i >> 3) & 14));
        composer.endReplaceableGroup();
        return invoke;
    }

    public static final void ReusableContent(Object obj, Function2<? super Composer, ? super Integer, Unit> content, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(444418301);
        ComposerKt.sourceInformation(composer, "CC(ReusableContent)P(1)145@5313L9:Composables.kt#9igjgp");
        composer.startReusableGroup(ComposerKt.reuseKey, obj);
        content.invoke(composer, Integer.valueOf((i >> 3) & 14));
        composer.endReusableGroup();
        composer.endReplaceableGroup();
    }

    public static final void ReusableContentHost(boolean z, Function2<? super Composer, ? super Integer, Unit> content, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReusableGroup(ComposerKt.reuseKey, Boolean.valueOf(z));
        boolean changed = composer.changed(z);
        if (z) {
            content.invoke(composer, Integer.valueOf((i >> 3) & 14));
        } else {
            composer.deactivateToEndGroup(changed);
        }
        composer.endReusableGroup();
    }

    public static final Composer getCurrentComposer(Composer composer, int i) {
        ComposerKt.sourceInformationMarkerStart(composer, -554250212, "C:Composables.kt#9igjgp");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-554250212, i, -1, "androidx.compose.runtime.<get-currentComposer> (Composables.kt:183)");
        }
        throw new NotImplementedError("Implemented as an intrinsic");
    }

    public static final RecomposeScope getCurrentRecomposeScope(Composer composer, int i) {
        ComposerKt.sourceInformationMarkerStart(composer, 394957799, "C:Composables.kt#9igjgp");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(394957799, i, -1, "androidx.compose.runtime.<get-currentRecomposeScope> (Composables.kt:192)");
        }
        RecomposeScope recomposeScope = composer.getRecomposeScope();
        if (recomposeScope == null) {
            throw new IllegalStateException("no recompose scope found".toString());
        }
        composer.recordUsed(recomposeScope);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return recomposeScope;
    }

    public static final CompositionLocalContext getCurrentCompositionLocalContext(Composer composer, int i) {
        composer.startReplaceableGroup(-43352356);
        ComposerKt.sourceInformation(composer, "C:Composables.kt#9igjgp");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-43352356, i, -1, "androidx.compose.runtime.<get-currentCompositionLocalContext> (Composables.kt:207)");
        }
        CompositionLocalContext compositionLocalContext = new CompositionLocalContext(composer.buildContext().getCompositionLocalScope$runtime_release());
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return compositionLocalContext;
    }

    public static final int getCurrentCompositeKeyHash(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(524444915, i, -1, "androidx.compose.runtime.<get-currentCompositeKeyHash> (Composables.kt:224)");
        }
        int compoundKeyHash = composer.getCompoundKeyHash();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return compoundKeyHash;
    }

    public static final /* synthetic */ <T, E extends Applier<?>> void ComposeNode(final Function0<? extends T> factory, Function1<? super Updater<T>, Unit> update, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(update, "update");
        composer.startReplaceableGroup(1886828752);
        ComposerKt.sourceInformation(composer, "CC(ComposeNode):Composables.kt#9igjgp");
        Applier<?> applier = composer.getApplier();
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (!(applier instanceof Applier)) {
            invalidApplier();
        }
        composer.startNode();
        if (composer.getInserting()) {
            composer.createNode(new Function0<T>() { // from class: androidx.compose.runtime.ComposablesKt$ComposeNode$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final T invoke() {
                    return factory.invoke();
                }
            });
        } else {
            composer.useNode();
        }
        update.invoke(Updater.m2272boximpl(Updater.m2273constructorimpl(composer)));
        composer.endNode();
        composer.endReplaceableGroup();
    }

    public static final /* synthetic */ <T, E extends Applier<?>> void ReusableComposeNode(final Function0<? extends T> factory, Function1<? super Updater<T>, Unit> update, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(update, "update");
        composer.startReplaceableGroup(1405779621);
        ComposerKt.sourceInformation(composer, "CC(ReusableComposeNode):Composables.kt#9igjgp");
        Applier<?> applier = composer.getApplier();
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (!(applier instanceof Applier)) {
            invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(new Function0<T>() { // from class: androidx.compose.runtime.ComposablesKt$ReusableComposeNode$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final T invoke() {
                    return factory.invoke();
                }
            });
        } else {
            composer.useNode();
        }
        update.invoke(Updater.m2272boximpl(Updater.m2273constructorimpl(composer)));
        composer.endNode();
        composer.endReplaceableGroup();
    }

    public static final /* synthetic */ <T, E extends Applier<?>> void ComposeNode(Function0<? extends T> factory, Function1<? super Updater<T>, Unit> update, Function2<? super Composer, ? super Integer, Unit> content, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(update, "update");
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(-548224868);
        ComposerKt.sourceInformation(composer, "CC(ComposeNode)P(1,2)332@12475L9:Composables.kt#9igjgp");
        Applier<?> applier = composer.getApplier();
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (!(applier instanceof Applier)) {
            invalidApplier();
        }
        composer.startNode();
        if (composer.getInserting()) {
            composer.createNode(factory);
        } else {
            composer.useNode();
        }
        update.invoke(Updater.m2272boximpl(Updater.m2273constructorimpl(composer)));
        content.invoke(composer, Integer.valueOf((i >> 6) & 14));
        composer.endNode();
        composer.endReplaceableGroup();
    }

    public static final /* synthetic */ <T, E extends Applier<?>> void ReusableComposeNode(Function0<? extends T> factory, Function1<? super Updater<T>, Unit> update, Function2<? super Composer, ? super Integer, Unit> content, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(update, "update");
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(-692256719);
        ComposerKt.sourceInformation(composer, "CC(ReusableComposeNode)P(1,2)372@13941L9:Composables.kt#9igjgp");
        Applier<?> applier = composer.getApplier();
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (!(applier instanceof Applier)) {
            invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(factory);
        } else {
            composer.useNode();
        }
        update.invoke(Updater.m2272boximpl(Updater.m2273constructorimpl(composer)));
        content.invoke(composer, Integer.valueOf((i >> 6) & 14));
        composer.endNode();
        composer.endReplaceableGroup();
    }

    public static final /* synthetic */ <T, E extends Applier<?>> void ComposeNode(Function0<? extends T> factory, Function1<? super Updater<T>, Unit> update, Function3<? super SkippableUpdater<T>, ? super Composer, ? super Integer, Unit> skippableUpdate, Function2<? super Composer, ? super Integer, Unit> content, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(update, "update");
        Intrinsics.checkNotNullParameter(skippableUpdate, "skippableUpdate");
        Intrinsics.checkNotNullParameter(content, "content");
        Applier<?> applier = composer.getApplier();
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (!(applier instanceof Applier)) {
            invalidApplier();
        }
        composer.startNode();
        if (composer.getInserting()) {
            composer.createNode(factory);
        } else {
            composer.useNode();
        }
        update.invoke(Updater.m2272boximpl(Updater.m2273constructorimpl(composer)));
        skippableUpdate.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer)), composer, Integer.valueOf((i >> 3) & 112));
        composer.startReplaceableGroup(2058660585);
        content.invoke(composer, Integer.valueOf((i >> 9) & 14));
        composer.endReplaceableGroup();
        composer.endNode();
    }

    public static final /* synthetic */ <T, E extends Applier<?>> void ReusableComposeNode(Function0<? extends T> factory, Function1<? super Updater<T>, Unit> update, Function3<? super SkippableUpdater<T>, ? super Composer, ? super Integer, Unit> skippableUpdate, Function2<? super Composer, ? super Integer, Unit> content, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(update, "update");
        Intrinsics.checkNotNullParameter(skippableUpdate, "skippableUpdate");
        Intrinsics.checkNotNullParameter(content, "content");
        Applier<?> applier = composer.getApplier();
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (!(applier instanceof Applier)) {
            invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(factory);
        } else {
            composer.useNode();
        }
        update.invoke(Updater.m2272boximpl(Updater.m2273constructorimpl(composer)));
        skippableUpdate.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer)), composer, Integer.valueOf((i >> 3) & 112));
        composer.startReplaceableGroup(2058660585);
        content.invoke(composer, Integer.valueOf((i >> 9) & 14));
        composer.endReplaceableGroup();
        composer.endNode();
    }

    public static final void invalidApplier() {
        throw new IllegalStateException("Invalid applier".toString());
    }

    public static final CompositionContext rememberCompositionContext(Composer composer, int i) {
        composer.startReplaceableGroup(-1165786124);
        ComposerKt.sourceInformation(composer, "C(rememberCompositionContext):Composables.kt#9igjgp");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1165786124, i, -1, "androidx.compose.runtime.rememberCompositionContext (Composables.kt:480)");
        }
        CompositionContext buildContext = composer.buildContext();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return buildContext;
    }

    public static final <T> T remember(Function0<? extends T> calculation, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(calculation, "calculation");
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        T t = (T) composer.rememberedValue();
        if (t == Composer.INSTANCE.getEmpty()) {
            t = calculation.invoke();
            composer.updateRememberedValue(t);
        }
        composer.endReplaceableGroup();
        return t;
    }
}
