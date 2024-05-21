package defpackage;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Device.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"LFlutterError;", "", "code", "", "message", "details", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "getCode", "()Ljava/lang/String;", "getDetails", "()Ljava/lang/Object;", "getMessage", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FlutterError extends Throwable {
    public static final int $stable = 8;
    private final String code;
    private final Object details;
    private final String message;

    public final String getCode() {
        return this.code;
    }

    public final Object getDetails() {
        return this.details;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    public /* synthetic */ FlutterError(String str, String str2, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : obj);
    }

    public FlutterError(String code, String str, Object obj) {
        Intrinsics.checkNotNullParameter(code, "code");
        this.code = code;
        this.message = str;
        this.details = obj;
    }
}
