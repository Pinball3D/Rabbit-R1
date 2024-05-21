package androidx.activity.compose;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;

/* compiled from: ActivityComposeUtils.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0006\b\u0000\u0010\u0001\u0018\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0080\b¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"findOwner", ExifInterface.GPS_DIRECTION_TRUE, "context", "Landroid/content/Context;", "(Landroid/content/Context;)Ljava/lang/Object;", "activity-compose_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ActivityComposeUtilsKt {
    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r2 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ <T> T findOwner(android.content.Context r2) {
        /*
        L0:
            boolean r0 = r2 instanceof android.content.ContextWrapper
            if (r0 == 0) goto L16
            r0 = 3
            java.lang.String r1 = "T"
            kotlin.jvm.internal.Intrinsics.reifiedOperationMarker(r0, r1)
            boolean r0 = r2 instanceof java.lang.Object
            if (r0 == 0) goto Lf
            return r2
        Lf:
            android.content.ContextWrapper r2 = (android.content.ContextWrapper) r2
            android.content.Context r2 = r2.getBaseContext()
            goto L0
        L16:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.activity.compose.ActivityComposeUtilsKt.findOwner(android.content.Context):java.lang.Object");
    }
}
