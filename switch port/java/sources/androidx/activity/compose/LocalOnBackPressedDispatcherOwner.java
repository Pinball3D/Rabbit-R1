package androidx.activity.compose;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.ViewTreeOnBackPressedDispatcherOwner;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* compiled from: BackHandler.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0019\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0086\u0004R\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u00058G¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;", "", "()V", "LocalOnBackPressedDispatcherOwner", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Landroidx/activity/OnBackPressedDispatcherOwner;", SentryThread.JsonKeys.CURRENT, "getCurrent", "(Landroidx/compose/runtime/Composer;I)Landroidx/activity/OnBackPressedDispatcherOwner;", "provides", "Landroidx/compose/runtime/ProvidedValue;", "dispatcherOwner", "activity-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LocalOnBackPressedDispatcherOwner {
    public static final int $stable = 0;
    public static final LocalOnBackPressedDispatcherOwner INSTANCE = new LocalOnBackPressedDispatcherOwner();
    private static final ProvidableCompositionLocal<OnBackPressedDispatcherOwner> LocalOnBackPressedDispatcherOwner = CompositionLocalKt.compositionLocalOf$default(null, new Function0<OnBackPressedDispatcherOwner>() { // from class: androidx.activity.compose.LocalOnBackPressedDispatcherOwner$LocalOnBackPressedDispatcherOwner$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final OnBackPressedDispatcherOwner invoke() {
            return null;
        }
    }, 1, null);

    private LocalOnBackPressedDispatcherOwner() {
    }

    public final OnBackPressedDispatcherOwner getCurrent(Composer composer, int i) {
        composer.startReplaceableGroup(-2068013981);
        ComposerKt.sourceInformation(composer, "C50@2094L7,*52@2246L7:BackHandler.kt#q1dkbc");
        ProvidableCompositionLocal<OnBackPressedDispatcherOwner> providableCompositionLocal = LocalOnBackPressedDispatcherOwner;
        ComposerKt.sourceInformationMarkerStart(composer, 103361330, "C:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(providableCompositionLocal);
        ComposerKt.sourceInformationMarkerEnd(composer);
        OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) consume;
        composer.startReplaceableGroup(1680121597);
        ComposerKt.sourceInformation(composer, "51@2127L7");
        if (onBackPressedDispatcherOwner == null) {
            ProvidableCompositionLocal<View> localView = AndroidCompositionLocals_androidKt.getLocalView();
            ComposerKt.sourceInformationMarkerStart(composer, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume2 = composer.consume(localView);
            ComposerKt.sourceInformationMarkerEnd(composer);
            onBackPressedDispatcherOwner = ViewTreeOnBackPressedDispatcherOwner.get((View) consume2);
        }
        composer.endReplaceableGroup();
        if (onBackPressedDispatcherOwner == null) {
            ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
            ComposerKt.sourceInformationMarkerStart(composer, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume3 = composer.consume(localContext);
            ComposerKt.sourceInformationMarkerEnd(composer);
            Object obj = (Context) consume3;
            while (true) {
                if (!(obj instanceof ContextWrapper)) {
                    obj = null;
                    break;
                }
                if (obj instanceof OnBackPressedDispatcherOwner) {
                    break;
                }
                obj = ((ContextWrapper) obj).getBaseContext();
            }
            onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) obj;
        }
        composer.endReplaceableGroup();
        return onBackPressedDispatcherOwner;
    }

    public final ProvidedValue<OnBackPressedDispatcherOwner> provides(OnBackPressedDispatcherOwner dispatcherOwner) {
        return LocalOnBackPressedDispatcherOwner.provides(dispatcherOwner);
    }
}
