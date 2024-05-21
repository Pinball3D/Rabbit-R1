package androidx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;

/* compiled from: IntDef.kt */
@Target({ElementType.ANNOTATION_TYPE})
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\u0002\u0018\u00002\u00020\u0001B\"\u0012\f\b\u0002\u0010\u0002\u001a\u00020\u0003\"\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006R\u000f\u0010\u0005\u001a\u00020\u0006¢\u0006\u0006\u001a\u0004\b\u0005\u0010\bR\u000f\u0010\u0007\u001a\u00020\u0006¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\t¨\u0006\n"}, d2 = {"Landroidx/annotation/IntDef;", "", "value", "", "", "flag", "", "open", "()Z", "()[I", "annotation"}, k = 1, mv = {1, 7, 0}, xi = 48)
@kotlin.annotation.Target(allowedTargets = {AnnotationTarget.ANNOTATION_CLASS})
@Retention(RetentionPolicy.SOURCE)
@kotlin.annotation.Retention(AnnotationRetention.SOURCE)
/* loaded from: classes.dex */
public @interface IntDef {
    boolean flag() default false;

    boolean open() default false;

    int[] value() default {};
}
