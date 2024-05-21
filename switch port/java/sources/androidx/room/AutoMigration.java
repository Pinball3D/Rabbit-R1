package androidx.room;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;

/* compiled from: AutoMigration.kt */
@Target({ElementType.TYPE})
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0002\u0018\u00002\u00020\u0001B\u001e\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\b\u0002\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0007R\u0013\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006¢\u0006\u0006\u001a\u0004\b\u0005\u0010\bR\u000f\u0010\u0004\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/room/AutoMigration;", "", "from", "", "to", "spec", "Lkotlin/reflect/KClass;", "()I", "()Ljava/lang/Class;", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
@kotlin.annotation.Target(allowedTargets = {AnnotationTarget.CLASS})
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention(AnnotationRetention.BINARY)
/* loaded from: classes2.dex */
public @interface AutoMigration {
    int from();

    Class<?> spec() default Object.class;

    int to();
}
