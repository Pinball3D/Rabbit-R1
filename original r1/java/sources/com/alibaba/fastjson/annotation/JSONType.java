package com.alibaba.fastjson.annotation;

import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2.dex */
public @interface JSONType {
    boolean alphabetic() default true;

    boolean asm() default true;

    String[] ignores() default {};

    Class<?> mappingTo() default Void.class;

    PropertyNamingStrategy naming() default PropertyNamingStrategy.CamelCase;

    String[] orders() default {};

    Feature[] parseFeatures() default {};

    Class<?>[] seeAlso() default {};

    SerializerFeature[] serialzeFeatures() default {};

    String typeKey() default "";

    String typeName() default "";
}
