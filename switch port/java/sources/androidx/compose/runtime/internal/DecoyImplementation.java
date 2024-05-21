package androidx.compose.runtime.internal;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.annotation.AnnotationTarget;

/* compiled from: Decoy.kt */
@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005R\u000f\u0010\u0004\u001a\u00020\u0005¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0006R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/internal/DecoyImplementation;", "", "name", "", "id", "", "()J", "()Ljava/lang/String;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@kotlin.annotation.Target(allowedTargets = {AnnotationTarget.FUNCTION, AnnotationTarget.CONSTRUCTOR})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface DecoyImplementation {
    long id();

    String name();
}
