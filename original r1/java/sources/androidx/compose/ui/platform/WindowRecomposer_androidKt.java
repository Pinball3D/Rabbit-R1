package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import android.view.ViewParent;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.PausableMonotonicFrameClock;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.R;
import androidx.core.os.HandlerCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: WindowRecomposer.android.kt */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0017\u001a\u00020\u0002H\u0002\u001a\"\u0010\u0018\u001a\u00020\u0011*\u00020\b2\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007\u001a\f\u0010\u001d\u001a\u0004\u0018\u00010\u0006*\u00020\b\" \u0010\u0000\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\",\u0010\u0007\u001a\u0004\u0018\u00010\u0006*\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f\"\u0018\u0010\r\u001a\u00020\b*\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f\"\u001e\u0010\u0010\u001a\u00020\u0011*\u00020\b8@X\u0080\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001e"}, d2 = {"animationScale", "", "Landroid/content/Context;", "Lkotlinx/coroutines/flow/StateFlow;", "", "value", "Landroidx/compose/runtime/CompositionContext;", "compositionContext", "Landroid/view/View;", "getCompositionContext", "(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;", "setCompositionContext", "(Landroid/view/View;Landroidx/compose/runtime/CompositionContext;)V", "contentChild", "getContentChild", "(Landroid/view/View;)Landroid/view/View;", "windowRecomposer", "Landroidx/compose/runtime/Recomposer;", "getWindowRecomposer$annotations", "(Landroid/view/View;)V", "getWindowRecomposer", "(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;", "getAnimationScaleFlowFor", "applicationContext", "createLifecycleAwareWindowRecomposer", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "findViewTreeCompositionContext", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WindowRecomposer_androidKt {
    private static final Map<Context, StateFlow<Float>> animationScale = new LinkedHashMap();

    public static /* synthetic */ void getWindowRecomposer$annotations(View view) {
    }

    public static final CompositionContext getCompositionContext(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Object tag = view.getTag(R.id.androidx_compose_ui_view_composition_context);
        if (tag instanceof CompositionContext) {
            return (CompositionContext) tag;
        }
        return null;
    }

    public static final void setCompositionContext(View view, CompositionContext compositionContext) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setTag(R.id.androidx_compose_ui_view_composition_context, compositionContext);
    }

    public static final CompositionContext findViewTreeCompositionContext(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        CompositionContext compositionContext = getCompositionContext(view);
        if (compositionContext != null) {
            return compositionContext;
        }
        for (ViewParent parent = view.getParent(); compositionContext == null && (parent instanceof View); parent = parent.getParent()) {
            compositionContext = getCompositionContext((View) parent);
        }
        return compositionContext;
    }

    private static final View getContentChild(View view) {
        Object parent = view.getParent();
        while (parent instanceof View) {
            View view2 = (View) parent;
            if (view2.getId() == 16908290) {
                return view;
            }
            parent = view2.getParent();
            view = view2;
        }
        return view;
    }

    public static final Recomposer getWindowRecomposer(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (!view.isAttachedToWindow()) {
            throw new IllegalStateException(("Cannot locate windowRecomposer; View " + view + " is not attached to a window").toString());
        }
        View contentChild = getContentChild(view);
        CompositionContext compositionContext = getCompositionContext(contentChild);
        if (compositionContext == null) {
            return WindowRecomposerPolicy.INSTANCE.createAndInstallWindowRecomposer$ui_release(contentChild);
        }
        if (compositionContext instanceof Recomposer) {
            return (Recomposer) compositionContext;
        }
        throw new IllegalStateException("root viewTreeParentCompositionContext is not a Recomposer".toString());
    }

    public static /* synthetic */ Recomposer createLifecycleAwareWindowRecomposer$default(View view, CoroutineContext coroutineContext, Lifecycle lifecycle, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            lifecycle = null;
        }
        return createLifecycleAwareWindowRecomposer(view, coroutineContext, lifecycle);
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [T, androidx.compose.ui.platform.MotionDurationScaleImpl] */
    public static final Recomposer createLifecycleAwareWindowRecomposer(final View view, CoroutineContext coroutineContext, Lifecycle lifecycle) {
        final PausableMonotonicFrameClock pausableMonotonicFrameClock;
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        if (coroutineContext.get(ContinuationInterceptor.INSTANCE) == null || coroutineContext.get(MonotonicFrameClock.INSTANCE) == null) {
            coroutineContext = AndroidUiDispatcher.INSTANCE.getCurrentThread().plus(coroutineContext);
        }
        MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) coroutineContext.get(MonotonicFrameClock.INSTANCE);
        if (monotonicFrameClock != null) {
            PausableMonotonicFrameClock pausableMonotonicFrameClock2 = new PausableMonotonicFrameClock(monotonicFrameClock);
            pausableMonotonicFrameClock2.pause();
            pausableMonotonicFrameClock = pausableMonotonicFrameClock2;
        } else {
            pausableMonotonicFrameClock = null;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        MotionDurationScale motionDurationScale = (MotionDurationScale) coroutineContext.get(MotionDurationScale.INSTANCE);
        if (motionDurationScale == null) {
            ?? motionDurationScaleImpl = new MotionDurationScaleImpl();
            objectRef.element = motionDurationScaleImpl;
            motionDurationScale = (MotionDurationScale) motionDurationScaleImpl;
        }
        CoroutineContext plus = coroutineContext.plus(pausableMonotonicFrameClock != null ? pausableMonotonicFrameClock : EmptyCoroutineContext.INSTANCE).plus(motionDurationScale);
        final Recomposer recomposer = new Recomposer(plus);
        recomposer.pauseCompositionFrameClock();
        final CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(plus);
        if (lifecycle == null) {
            LifecycleOwner lifecycleOwner = ViewTreeLifecycleOwner.get(view);
            lifecycle = lifecycleOwner != null ? lifecycleOwner.getLifecycle() : null;
        }
        if (lifecycle == null) {
            throw new IllegalStateException(("ViewTreeLifecycleOwner not found from " + view).toString());
        }
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View v) {
                Intrinsics.checkNotNullParameter(v, "v");
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                view.removeOnAttachStateChangeListener(this);
                recomposer.cancel();
            }
        });
        lifecycle.addObserver(new LifecycleEventObserver() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2

            /* compiled from: WindowRecomposer.android.kt */
            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[Lifecycle.Event.values().length];
                    try {
                        iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_STOP.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 6;
                    } catch (NoSuchFieldError unused6) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_ANY.ordinal()] = 7;
                    } catch (NoSuchFieldError unused7) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                Intrinsics.checkNotNullParameter(source, "source");
                Intrinsics.checkNotNullParameter(event, "event");
                int i = WhenMappings.$EnumSwitchMapping$0[event.ordinal()];
                if (i == 1) {
                    BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, CoroutineStart.UNDISPATCHED, new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(objectRef, recomposer, source, this, view, null), 1, null);
                    return;
                }
                if (i == 2) {
                    PausableMonotonicFrameClock pausableMonotonicFrameClock3 = pausableMonotonicFrameClock;
                    if (pausableMonotonicFrameClock3 != null) {
                        pausableMonotonicFrameClock3.resume();
                    }
                    recomposer.resumeCompositionFrameClock();
                    return;
                }
                if (i == 3) {
                    recomposer.pauseCompositionFrameClock();
                } else {
                    if (i != 4) {
                        return;
                    }
                    recomposer.cancel();
                }
            }
        });
        return recomposer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1] */
    public static final StateFlow<Float> getAnimationScaleFlowFor(Context context) {
        StateFlow<Float> stateFlow;
        Map<Context, StateFlow<Float>> map = animationScale;
        synchronized (map) {
            StateFlow<Float> stateFlow2 = map.get(context);
            if (stateFlow2 == null) {
                ContentResolver contentResolver = context.getContentResolver();
                Uri uriFor = Settings.Global.getUriFor("animator_duration_scale");
                final Channel Channel$default = ChannelKt.Channel$default(-1, null, null, 6, null);
                final Handler createAsync = HandlerCompat.createAsync(Looper.getMainLooper());
                stateFlow2 = FlowKt.stateIn(FlowKt.flow(new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(contentResolver, uriFor, new ContentObserver(createAsync) { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1
                    @Override // android.database.ContentObserver
                    public void onChange(boolean selfChange, Uri uri) {
                        Channel$default.mo7202trySendJP2dKIU(Unit.INSTANCE);
                    }
                }, Channel$default, context, null)), CoroutineScopeKt.MainScope(), SharingStarted.Companion.WhileSubscribed$default(SharingStarted.INSTANCE, 0L, 0L, 3, null), Float.valueOf(Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f)));
                map.put(context, stateFlow2);
            }
            stateFlow = stateFlow2;
        }
        return stateFlow;
    }
}
