package io.sentry.flutter;

import androidx.exifinterface.media.ExifInterface;
import defpackage.DeviceControl$Companion$$ExternalSyntheticLambda4;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: SentryFlutter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a:\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0006\u001a\u00020\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\bH\u0002¨\u0006\t"}, d2 = {"getIfNotNull", "", ExifInterface.GPS_DIRECTION_TRUE, "", "", "", "key", "callback", "Lkotlin/Function1;", "sentry_flutter_release"}, k = 2, mv = {1, 4, 3}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryFlutterKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> void getIfNotNull(Map<String, ? extends Object> map, String str, Function1<? super T, Unit> function1) {
        DeviceControl$Companion$$ExternalSyntheticLambda4 deviceControl$Companion$$ExternalSyntheticLambda4 = (Object) map.get(str);
        if (deviceControl$Companion$$ExternalSyntheticLambda4 == null) {
            deviceControl$Companion$$ExternalSyntheticLambda4 = null;
        }
        if (deviceControl$Companion$$ExternalSyntheticLambda4 != null) {
            function1.invoke(deviceControl$Companion$$ExternalSyntheticLambda4);
        }
    }
}
