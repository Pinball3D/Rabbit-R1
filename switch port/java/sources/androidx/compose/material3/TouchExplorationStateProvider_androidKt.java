package androidx.compose.material3;

import android.content.Context;
import android.view.accessibility.AccessibilityManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TouchExplorationStateProvider.android.kt */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0013\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0001¢\u0006\u0002\u0010\u0003\u001a7\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\b2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bH\u0003¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"touchExplorationState", "Landroidx/compose/runtime/State;", "", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "ObserveState", "", "Landroidx/lifecycle/Lifecycle;", "handleEvent", "Lkotlin/Function1;", "Landroidx/lifecycle/Lifecycle$Event;", "onDispose", "Lkotlin/Function0;", "(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TouchExplorationStateProvider_androidKt {
    public static final State<Boolean> touchExplorationState(Composer composer, int i) {
        composer.startReplaceableGroup(-906157724);
        ComposerKt.sourceInformation(composer, "C(touchExplorationState)41@1687L7,42@1726L104,46@1851L23,48@1900L7,48@1918L273,59@2204L52:TouchExplorationStateProvider.android.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-906157724, i, -1, "androidx.compose.material3.touchExplorationState (TouchExplorationStateProvider.android.kt:40)");
        }
        ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localContext);
        ComposerKt.sourceInformationMarkerEnd(composer);
        Context context = (Context) consume;
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
            Object systemService = context.getSystemService("accessibility");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
            rememberedValue = (AccessibilityManager) systemService;
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final AccessibilityManager accessibilityManager = (AccessibilityManager) rememberedValue;
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == Composer.INSTANCE.getEmpty()) {
            rememberedValue2 = new Listener();
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        final Listener listener = (Listener) rememberedValue2;
        ProvidableCompositionLocal<LifecycleOwner> localLifecycleOwner = AndroidCompositionLocals_androidKt.getLocalLifecycleOwner();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume2 = composer.consume(localLifecycleOwner);
        ComposerKt.sourceInformationMarkerEnd(composer);
        ObserveState(((LifecycleOwner) consume2).getLifecycle(), new Function1<Lifecycle.Event, Unit>() { // from class: androidx.compose.material3.TouchExplorationStateProvider_androidKt$touchExplorationState$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Lifecycle.Event event) {
                invoke2(event);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Lifecycle.Event event) {
                Intrinsics.checkNotNullParameter(event, "event");
                if (event == Lifecycle.Event.ON_RESUME) {
                    Listener.this.register(accessibilityManager);
                }
            }
        }, new Function0<Unit>() { // from class: androidx.compose.material3.TouchExplorationStateProvider_androidKt$touchExplorationState$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                Listener.this.unregister(accessibilityManager);
            }
        }, composer, 8, 0);
        composer.startReplaceableGroup(-492369756);
        ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
        Object rememberedValue3 = composer.rememberedValue();
        if (rememberedValue3 == Composer.INSTANCE.getEmpty()) {
            rememberedValue3 = SnapshotStateKt.derivedStateOf(new Function0<Boolean>() { // from class: androidx.compose.material3.TouchExplorationStateProvider_androidKt$touchExplorationState$3$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return Boolean.valueOf(Listener.this.isEnabled());
                }
            });
            composer.updateRememberedValue(rememberedValue3);
        }
        composer.endReplaceableGroup();
        State<Boolean> state = (State) rememberedValue3;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ObserveState(final Lifecycle lifecycle, Function1<? super Lifecycle.Event, Unit> function1, Function0<Unit> function0, Composer composer, final int i, final int i2) {
        Composer startRestartGroup = composer.startRestartGroup(-1703772404);
        ComposerKt.sourceInformation(startRestartGroup, "C(ObserveState)67@2396L288:TouchExplorationStateProvider.android.kt#uh7d8r");
        if ((i2 & 1) != 0) {
            function1 = new Function1<Lifecycle.Event, Unit>() { // from class: androidx.compose.material3.TouchExplorationStateProvider_androidKt$ObserveState$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Lifecycle.Event it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Lifecycle.Event event) {
                    invoke2(event);
                    return Unit.INSTANCE;
                }
            };
        }
        final Function1<? super Lifecycle.Event, Unit> function12 = function1;
        if ((i2 & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: androidx.compose.material3.TouchExplorationStateProvider_androidKt$ObserveState$2
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
        final Function0<Unit> function02 = function0;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1703772404, i, -1, "androidx.compose.material3.ObserveState (TouchExplorationStateProvider.android.kt:63)");
        }
        EffectsKt.DisposableEffect(lifecycle, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.material3.TouchExplorationStateProvider_androidKt$ObserveState$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final DisposableEffectResult invoke(DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                final Function1<Lifecycle.Event, Unit> function13 = function12;
                final LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.compose.material3.TouchExplorationStateProvider_androidKt$ObserveState$3$observer$1
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                        Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
                        Intrinsics.checkNotNullParameter(event, "event");
                        function13.invoke(event);
                    }
                };
                Lifecycle.this.addObserver(lifecycleEventObserver);
                final Function0<Unit> function03 = function02;
                final Lifecycle lifecycle2 = Lifecycle.this;
                return new DisposableEffectResult() { // from class: androidx.compose.material3.TouchExplorationStateProvider_androidKt$ObserveState$3$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        Function0.this.invoke();
                        lifecycle2.removeObserver(lifecycleEventObserver);
                    }
                };
            }
        }, startRestartGroup, 8);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.TouchExplorationStateProvider_androidKt$ObserveState$4
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

            public final void invoke(Composer composer2, int i3) {
                TouchExplorationStateProvider_androidKt.ObserveState(Lifecycle.this, function12, function02, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
            }
        });
    }
}
