package androidx.room;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;

/* compiled from: TypeConverters.kt */
@Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0002\u0018\u00002\u00020\u0001B(\u0012\u001c\b\u0002\u0010\u0002\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00040\u0003\"\u0006\u0012\u0002\b\u00030\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006R\u000f\u0010\u0005\u001a\u00020\u0006¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007R\u001b\u0010\u0002\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00040\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\b¨\u0006\t"}, d2 = {"Landroidx/room/TypeConverters;", "", "value", "", "Lkotlin/reflect/KClass;", "builtInTypeConverters", "Landroidx/room/BuiltInTypeConverters;", "()Landroidx/room/BuiltInTypeConverters;", "()[Ljava/lang/Class;", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
@kotlin.annotation.Target(allowedTargets = {AnnotationTarget.FUNCTION, AnnotationTarget.VALUE_PARAMETER, AnnotationTarget.FIELD, AnnotationTarget.CLASS})
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention(AnnotationRetention.BINARY)
/* loaded from: classes2.dex */
public @interface TypeConverters {
    BuiltInTypeConverters builtInTypeConverters() default @BuiltInTypeConverters;

    Class<?>[] value() default {};
}
