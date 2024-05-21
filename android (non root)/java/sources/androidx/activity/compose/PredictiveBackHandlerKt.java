package androidx.activity.compose;

import androidx.activity.BackEventCompat;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.flow.Flow;

/* compiled from: PredictiveBackHandler.kt */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u001a]\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032A\u0010\u0004\u001a=\b\u0001\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u000f\u0012\r\u0012\t\u0012\u00070\u0001¢\u0006\u0002\b\b0\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0005H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f²\u0006E\u0010\u0010\u001a=\b\u0001\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u000f\u0012\r\u0012\t\u0012\u00070\u0001¢\u0006\u0002\b\b0\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0005X\u008a\u0084\u0002"}, d2 = {"PredictiveBackHandler", "", "enabled", "", "onBack", "Lkotlin/Function2;", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/activity/BackEventCompat;", "Lkotlin/jvm/JvmSuppressWildcards;", "Lkotlin/ParameterName;", "name", NotificationCompat.CATEGORY_PROGRESS, "Lkotlin/coroutines/Continuation;", "", "(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "activity-compose_release", "currentOnBack"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PredictiveBackHandlerKt {
    public static final void PredictiveBackHandler(final boolean z, final Function2<Flow<BackEventCompat>, ? super Continuation<Unit>, ? extends Object> function2, Composer composer, final int i, final int i2) {
        Composer startRestartGroup = composer.startRestartGroup(-642000585);
        ComposerKt.sourceInformation(startRestartGroup, "C(PredictiveBackHandler)77@3028L28,78@3079L24,80@3128L1954,126@5088L72,*130@5234L7,134@5422L7,136@5435L186:PredictiveBackHandler.kt#q1dkbc");
        if ((i2 & 1) != 0) {
            z = true;
        }
        final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(function2, startRestartGroup, 8);
        startRestartGroup.startReplaceableGroup(-723524056);
        ComposerKt.sourceInformation(startRestartGroup, "C(rememberCoroutineScope)475@19849L144:Effects.kt#9igjgp");
        startRestartGroup.startReplaceableGroup(-3687241);
        ComposerKt.sourceInformation(startRestartGroup, "C(remember):Composables.kt#9igjgp");
        Object rememberedValue = startRestartGroup.rememberedValue();
        if (rememberedValue == Composer.INSTANCE.getEmpty()) {
            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, startRestartGroup));
            startRestartGroup.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
            rememberedValue = compositionScopedCoroutineScopeCanceller;
        }
        startRestartGroup.endReplaceableGroup();
        final CoroutineScope coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.startReplaceableGroup(-3687241);
        ComposerKt.sourceInformation(startRestartGroup, "C(remember):Composables.kt#9igjgp");
        Object rememberedValue2 = startRestartGroup.rememberedValue();
        if (rememberedValue2 == Composer.INSTANCE.getEmpty()) {
            rememberedValue2 = new OnBackPressedCallback(z) { // from class: androidx.activity.compose.PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1
                private OnBackInstance onBackInstance;

                public final OnBackInstance getOnBackInstance() {
                    return this.onBackInstance;
                }

                public final void setOnBackInstance(OnBackInstance onBackInstance) {
                    this.onBackInstance = onBackInstance;
                }

                @Override // androidx.activity.OnBackPressedCallback
                public void handleOnBackStarted(BackEventCompat backEvent) {
                    Function2 PredictiveBackHandler$lambda$0;
                    super.handleOnBackStarted(backEvent);
                    OnBackInstance onBackInstance = this.onBackInstance;
                    if (onBackInstance != null) {
                        onBackInstance.cancel();
                    }
                    CoroutineScope coroutineScope2 = coroutineScope;
                    PredictiveBackHandler$lambda$0 = PredictiveBackHandlerKt.PredictiveBackHandler$lambda$0(rememberUpdatedState);
                    this.onBackInstance = new OnBackInstance(coroutineScope2, true, PredictiveBackHandler$lambda$0);
                }

                @Override // androidx.activity.OnBackPressedCallback
                public void handleOnBackProgressed(BackEventCompat backEvent) {
                    super.handleOnBackProgressed(backEvent);
                    OnBackInstance onBackInstance = this.onBackInstance;
                    if (onBackInstance != null) {
                        ChannelResult.m7212boximpl(onBackInstance.m13sendJP2dKIU(backEvent));
                    }
                }

                @Override // androidx.activity.OnBackPressedCallback
                public void handleOnBackPressed() {
                    Function2 PredictiveBackHandler$lambda$0;
                    OnBackInstance onBackInstance = this.onBackInstance;
                    if (onBackInstance != null && !onBackInstance.isPredictiveBack()) {
                        onBackInstance.cancel();
                        this.onBackInstance = null;
                    }
                    if (this.onBackInstance == null) {
                        CoroutineScope coroutineScope2 = coroutineScope;
                        PredictiveBackHandler$lambda$0 = PredictiveBackHandlerKt.PredictiveBackHandler$lambda$0(rememberUpdatedState);
                        this.onBackInstance = new OnBackInstance(coroutineScope2, false, PredictiveBackHandler$lambda$0);
                    }
                    OnBackInstance onBackInstance2 = this.onBackInstance;
                    if (onBackInstance2 != null) {
                        onBackInstance2.close();
                    }
                }

                @Override // androidx.activity.OnBackPressedCallback
                public void handleOnBackCancelled() {
                    super.handleOnBackCancelled();
                    OnBackInstance onBackInstance = this.onBackInstance;
                    if (onBackInstance != null) {
                        onBackInstance.cancel();
                    }
                }
            };
            startRestartGroup.updateRememberedValue(rememberedValue2);
        }
        startRestartGroup.endReplaceableGroup();
        final PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1 predictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1 = (PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1) rememberedValue2;
        EffectsKt.LaunchedEffect(Boolean.valueOf(z), new PredictiveBackHandlerKt$PredictiveBackHandler$1(predictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1, z, null), startRestartGroup, (i & 14) | 64);
        OnBackPressedDispatcherOwner current = LocalOnBackPressedDispatcherOwner.INSTANCE.getCurrent(startRestartGroup, 6);
        if (current == null) {
            throw new IllegalStateException("No OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner".toString());
        }
        final OnBackPressedDispatcher onBackPressedDispatcher = current.getOnBackPressedDispatcher();
        ProvidableCompositionLocal<LifecycleOwner> localLifecycleOwner = AndroidCompositionLocals_androidKt.getLocalLifecycleOwner();
        ComposerKt.sourceInformationMarkerStart(startRestartGroup, 103361330, "C:CompositionLocal.kt#9igjgp");
        Object consume = startRestartGroup.consume(localLifecycleOwner);
        ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
        final LifecycleOwner lifecycleOwner = (LifecycleOwner) consume;
        EffectsKt.DisposableEffect(lifecycleOwner, onBackPressedDispatcher, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$PredictiveBackHandler$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final DisposableEffectResult invoke(DisposableEffectScope disposableEffectScope) {
                OnBackPressedDispatcher.this.addCallback(lifecycleOwner, predictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1);
                final PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1 predictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$12 = predictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;
                return new DisposableEffectResult() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$PredictiveBackHandler$2$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        remove();
                    }
                };
            }
        }, startRestartGroup, 72);
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$PredictiveBackHandler$3
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
                PredictiveBackHandlerKt.PredictiveBackHandler(z, function2, composer2, i | 1, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function2<Flow<BackEventCompat>, Continuation<Unit>, Object> PredictiveBackHandler$lambda$0(State<? extends Function2<Flow<BackEventCompat>, ? super Continuation<Unit>, ? extends Object>> state) {
        return (Function2) state.getValue();
    }
}
