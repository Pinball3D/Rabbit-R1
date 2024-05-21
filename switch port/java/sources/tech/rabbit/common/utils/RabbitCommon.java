package tech.rabbit.common.utils;

import android.app.Activity;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: RabbitCommon.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR/\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\t\u001a\u0004\u0018\u00010\n8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Ltech/rabbit/common/utils/RabbitCommon;", "", "()V", "sContext", "Landroid/content/Context;", "getSContext", "()Landroid/content/Context;", "setSContext", "(Landroid/content/Context;)V", "<set-?>", "Landroid/app/Activity;", "sWeakActivity", "getSWeakActivity", "()Landroid/app/Activity;", "setSWeakActivity", "(Landroid/app/Activity;)V", "sWeakActivity$delegate", "Ltech/rabbit/common/utils/Weak;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RabbitCommon {
    public static Context sContext;
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(RabbitCommon.class, "sWeakActivity", "getSWeakActivity()Landroid/app/Activity;", 0))};
    public static final RabbitCommon INSTANCE = new RabbitCommon();

    /* renamed from: sWeakActivity$delegate, reason: from kotlin metadata */
    private static final Weak sWeakActivity = new Weak(new Function0<Activity>() { // from class: tech.rabbit.common.utils.RabbitCommon$sWeakActivity$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Activity invoke() {
            return null;
        }
    });

    public final void setSContext(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        sContext = context;
    }

    private RabbitCommon() {
    }

    public final Context getSContext() {
        Context context = sContext;
        if (context != null) {
            return context;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sContext");
        return null;
    }

    public final Activity getSWeakActivity() {
        return (Activity) sWeakActivity.getValue(this, $$delegatedProperties[0]);
    }

    public final void setSWeakActivity(Activity activity) {
        sWeakActivity.setValue(this, $$delegatedProperties[0], activity);
    }
}
