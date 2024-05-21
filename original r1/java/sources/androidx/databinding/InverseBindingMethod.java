package androidx.databinding;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE})
/* loaded from: classes.dex */
public @interface InverseBindingMethod {
    String attribute();

    String event() default "";

    String method() default "";

    Class type();
}
