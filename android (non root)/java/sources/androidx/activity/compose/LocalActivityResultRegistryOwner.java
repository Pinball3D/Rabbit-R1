package androidx.activity.compose;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* compiled from: ActivityResultRegistry.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0019\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0086\u0004R\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u00058G¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Landroidx/activity/compose/LocalActivityResultRegistryOwner;", "", "()V", "LocalComposition", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Landroidx/activity/result/ActivityResultRegistryOwner;", SentryThread.JsonKeys.CURRENT, "getCurrent", "(Landroidx/compose/runtime/Composer;I)Landroidx/activity/result/ActivityResultRegistryOwner;", "provides", "Landroidx/compose/runtime/ProvidedValue;", "registryOwner", "activity-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LocalActivityResultRegistryOwner {
    public static final int $stable = 0;
    public static final LocalActivityResultRegistryOwner INSTANCE = new LocalActivityResultRegistryOwner();
    private static final ProvidableCompositionLocal<ActivityResultRegistryOwner> LocalComposition = CompositionLocalKt.compositionLocalOf$default(null, new Function0<ActivityResultRegistryOwner>() { // from class: androidx.activity.compose.LocalActivityResultRegistryOwner$LocalComposition$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ActivityResultRegistryOwner invoke() {
            return null;
        }
    }, 1, null);

    private LocalActivityResultRegistryOwner() {
    }

    public final ActivityResultRegistryOwner getCurrent(Composer composer, int i) {
        composer.startReplaceableGroup(1418020823);
        ComposerKt.sourceInformation(composer, "C47@1947L7,*48@2022L7:ActivityResultRegistry.kt#q1dkbc");
        ProvidableCompositionLocal<ActivityResultRegistryOwner> providableCompositionLocal = LocalComposition;
        ComposerKt.sourceInformationMarkerStart(composer, 103361330, "C:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(providableCompositionLocal);
        ComposerKt.sourceInformationMarkerEnd(composer);
        ActivityResultRegistryOwner activityResultRegistryOwner = (ActivityResultRegistryOwner) consume;
        if (activityResultRegistryOwner == null) {
            ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
            ComposerKt.sourceInformationMarkerStart(composer, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume2 = composer.consume(localContext);
            ComposerKt.sourceInformationMarkerEnd(composer);
            Object obj = (Context) consume2;
            while (true) {
                if (!(obj instanceof ContextWrapper)) {
                    obj = null;
                    break;
                }
                if (obj instanceof ActivityResultRegistryOwner) {
                    break;
                }
                obj = ((ContextWrapper) obj).getBaseContext();
            }
            activityResultRegistryOwner = (ActivityResultRegistryOwner) obj;
        }
        composer.endReplaceableGroup();
        return activityResultRegistryOwner;
    }

    public final ProvidedValue<ActivityResultRegistryOwner> provides(ActivityResultRegistryOwner registryOwner) {
        return LocalComposition.provides(registryOwner);
    }
}
