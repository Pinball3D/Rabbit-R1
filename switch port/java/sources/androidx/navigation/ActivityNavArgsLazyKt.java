package androidx.navigation;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: ActivityNavArgsLazy.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001f\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u0004H\u0087\b¨\u0006\u0005"}, d2 = {"navArgs", "Landroidx/navigation/NavArgsLazy;", "Args", "Landroidx/navigation/NavArgs;", "Landroid/app/Activity;", "navigation-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ActivityNavArgsLazyKt {
    public static final /* synthetic */ <Args extends NavArgs> NavArgsLazy<Args> navArgs(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.reifiedOperationMarker(4, "Args");
        return new NavArgsLazy<>(Reflection.getOrCreateKotlinClass(NavArgs.class), new Function0<Bundle>() { // from class: androidx.navigation.ActivityNavArgsLazyKt$navArgs$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle bundle;
                Intent intent = activity.getIntent();
                if (intent != null) {
                    Activity activity2 = activity;
                    bundle = intent.getExtras();
                    if (bundle == null) {
                        throw new IllegalStateException("Activity " + activity2 + " has null extras in " + intent);
                    }
                } else {
                    bundle = null;
                }
                if (bundle != null) {
                    return bundle;
                }
                throw new IllegalStateException("Activity " + activity + " has a null Intent");
            }
        });
    }
}
