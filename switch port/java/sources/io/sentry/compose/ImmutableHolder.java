package io.sentry.compose;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;

/* compiled from: SentryComposeTracing.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\b\u0003\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0003\u001a\u00028\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\b\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\t"}, d2 = {"Lio/sentry/compose/ImmutableHolder;", ExifInterface.GPS_DIRECTION_TRUE, "", "item", "(Ljava/lang/Object;)V", "getItem", "()Ljava/lang/Object;", "setItem", "Ljava/lang/Object;", "sentry-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
final class ImmutableHolder<T> {
    private T item;

    public final T getItem() {
        return this.item;
    }

    public final void setItem(T t) {
        this.item = t;
    }

    public ImmutableHolder(T t) {
        this.item = t;
    }
}
