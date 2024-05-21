package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PointerInteropFilter.android.kt */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00012!\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003\u001a,\u0010\t\u001a\u00020\u0001*\u00020\u00012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r0\u0003H\u0007\u001a\u0014\u0010\t\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0001¨\u0006\u0010"}, d2 = {"motionEventSpy", "Landroidx/compose/ui/Modifier;", "watcher", "Lkotlin/Function1;", "Landroid/view/MotionEvent;", "Lkotlin/ParameterName;", "name", "motionEvent", "", "pointerInteropFilter", "requestDisallowInterceptTouchEvent", "Landroidx/compose/ui/input/pointer/RequestDisallowInterceptTouchEvent;", "onTouchEvent", "", "view", "Landroidx/compose/ui/viewinterop/AndroidViewHolder;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PointerInteropFilter_androidKt {
    public static /* synthetic */ Modifier pointerInteropFilter$default(Modifier modifier, RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            requestDisallowInterceptTouchEvent = null;
        }
        return pointerInteropFilter(modifier, requestDisallowInterceptTouchEvent, function1);
    }

    public static final Modifier pointerInteropFilter(Modifier modifier, final AndroidViewHolder view) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        PointerInteropFilter pointerInteropFilter = new PointerInteropFilter();
        pointerInteropFilter.setOnTouchEvent(new Function1<MotionEvent, Boolean>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt$pointerInteropFilter$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(MotionEvent motionEvent) {
                boolean dispatchTouchEvent;
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                switch (motionEvent.getActionMasked()) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        dispatchTouchEvent = AndroidViewHolder.this.dispatchTouchEvent(motionEvent);
                        break;
                    default:
                        dispatchTouchEvent = AndroidViewHolder.this.dispatchGenericMotionEvent(motionEvent);
                        break;
                }
                return Boolean.valueOf(dispatchTouchEvent);
            }
        });
        RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent = new RequestDisallowInterceptTouchEvent();
        pointerInteropFilter.setRequestDisallowInterceptTouchEvent(requestDisallowInterceptTouchEvent);
        view.setOnRequestDisallowInterceptTouchEvent$ui_release(requestDisallowInterceptTouchEvent);
        return modifier.then(pointerInteropFilter);
    }

    public static final Modifier motionEventSpy(Modifier modifier, Function1<? super MotionEvent, Unit> watcher) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(watcher, "watcher");
        return SuspendingPointerInputFilterKt.pointerInput(modifier, watcher, new PointerInteropFilter_androidKt$motionEventSpy$1(watcher, null));
    }

    public static final Modifier pointerInteropFilter(Modifier modifier, final RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent, final Function1<? super MotionEvent, Boolean> onTouchEvent) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(onTouchEvent, "onTouchEvent");
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt$pointerInteropFilter$$inlined$debugInspectorInfo$1
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
                inspectorInfo.setName("pointerInteropFilter");
                inspectorInfo.getProperties().set("requestDisallowInterceptTouchEvent", RequestDisallowInterceptTouchEvent.this);
                inspectorInfo.getProperties().set("onTouchEvent", onTouchEvent);
            }
        } : InspectableValueKt.getNoInspectorInfo(), new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt$pointerInteropFilter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            public final Modifier invoke(Modifier composed, Composer composer, int i) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(374375707);
                ComposerKt.sourceInformation(composer, "C78@3403L35:PointerInteropFilter.android.kt#a556rk");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(374375707, i, -1, "androidx.compose.ui.input.pointer.pointerInteropFilter.<anonymous> (PointerInteropFilter.android.kt:77)");
                }
                composer.startReplaceableGroup(-492369756);
                ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                    rememberedValue = new PointerInteropFilter();
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                PointerInteropFilter pointerInteropFilter = (PointerInteropFilter) rememberedValue;
                pointerInteropFilter.setOnTouchEvent(onTouchEvent);
                pointerInteropFilter.setRequestDisallowInterceptTouchEvent(requestDisallowInterceptTouchEvent);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                return pointerInteropFilter;
            }
        });
    }
}
