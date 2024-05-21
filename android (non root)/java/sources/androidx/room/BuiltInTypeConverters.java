package androidx.room;

import io.sentry.protocol.DebugImage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;

/* compiled from: BuiltInTypeConverters.kt */
@Target({})
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0014\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0005R\u000f\u0010\u0004\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/room/BuiltInTypeConverters;", "", "enums", "Landroidx/room/BuiltInTypeConverters$State;", DebugImage.JsonKeys.UUID, "()Landroidx/room/BuiltInTypeConverters$State;", "State", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
@kotlin.annotation.Target(allowedTargets = {})
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention(AnnotationRetention.BINARY)
/* loaded from: classes2.dex */
public @interface BuiltInTypeConverters {

    /* compiled from: BuiltInTypeConverters.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/BuiltInTypeConverters$State;", "", "(Ljava/lang/String;I)V", "ENABLED", "DISABLED", "INHERITED", "room-common"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum State {
        ENABLED,
        DISABLED,
        INHERITED
    }

    State enums() default State.INHERITED;

    State uuid() default State.INHERITED;
}
