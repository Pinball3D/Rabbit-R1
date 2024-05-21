package tech.rabbit.r1launcher.extensions;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;

/* compiled from: CoroutinesExtensions.kt */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u001aG\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00052\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007¢\u0006\u0002\u0010\u000b\u001aG\u0010\f\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00052\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007¢\u0006\u0002\u0010\u000b¨\u0006\r"}, d2 = {"collect", "Lkotlinx/coroutines/Job;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/LifecycleOwner;", "flow", "Lkotlinx/coroutines/flow/Flow;", "action", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;", "collectLast", "app_productionEnvRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CoroutinesExtensionsKt {
    public static final <T> Job collect(LifecycleOwner lifecycleOwner, Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> action) {
        Job launch$default;
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<this>");
        Intrinsics.checkNotNullParameter(flow, "flow");
        Intrinsics.checkNotNullParameter(action, "action");
        launch$default = BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(lifecycleOwner), null, null, new CoroutinesExtensionsKt$collect$1(flow, lifecycleOwner, action, null), 3, null);
        return launch$default;
    }

    public static final <T> Job collectLast(LifecycleOwner lifecycleOwner, Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> action) {
        Job launch$default;
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<this>");
        Intrinsics.checkNotNullParameter(flow, "flow");
        Intrinsics.checkNotNullParameter(action, "action");
        launch$default = BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(lifecycleOwner), null, null, new CoroutinesExtensionsKt$collectLast$1(flow, lifecycleOwner, action, null), 3, null);
        return launch$default;
    }
}
