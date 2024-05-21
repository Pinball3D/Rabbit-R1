package androidx.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.MustBeDocumented;

/* compiled from: VisibleForTesting.kt */
@MustBeDocumented
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0087\u0002\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\n\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/annotation/VisibleForTesting;", "", "otherwise", "", "()I", "Companion", "annotation"}, k = 1, mv = {1, 7, 0}, xi = 48)
@Documented
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention(AnnotationRetention.BINARY)
/* loaded from: classes.dex */
public @interface VisibleForTesting {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final int NONE = 5;
    public static final int PACKAGE_PRIVATE = 3;
    public static final int PRIVATE = 2;
    public static final int PROTECTED = 4;

    int otherwise() default 2;

    /* compiled from: VisibleForTesting.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/annotation/VisibleForTesting$Companion;", "", "()V", "NONE", "", "PACKAGE_PRIVATE", "PRIVATE", "PROTECTED", "annotation"}, k = 1, mv = {1, 7, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int NONE = 5;
        public static final int PACKAGE_PRIVATE = 3;
        public static final int PRIVATE = 2;
        public static final int PROTECTED = 4;

        private Companion() {
        }
    }
}
