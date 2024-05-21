package androidx.room;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;

/* compiled from: Junction.kt */
@Target({})
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\u0002\u0018\u00002\u00020\u0001B \u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005R\u000f\u0010\u0006\u001a\u00020\u0005¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u000f\u0010\u0004\u001a\u00020\u0005¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0007R\u0013\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\b¨\u0006\t"}, d2 = {"Landroidx/room/Junction;", "", "value", "Lkotlin/reflect/KClass;", "parentColumn", "", "entityColumn", "()Ljava/lang/String;", "()Ljava/lang/Class;", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
@kotlin.annotation.Target(allowedTargets = {})
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention(AnnotationRetention.BINARY)
/* loaded from: classes2.dex */
public @interface Junction {
    String entityColumn() default "";

    String parentColumn() default "";

    Class<?> value();
}
