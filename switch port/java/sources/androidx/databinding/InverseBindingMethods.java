package androidx.databinding;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
/* loaded from: classes.dex */
public @interface InverseBindingMethods {
    InverseBindingMethod[] value();
}
