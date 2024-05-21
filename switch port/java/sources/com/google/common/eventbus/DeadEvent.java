package com.google.common.eventbus;

import androidx.core.app.NotificationCompat;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import io.sentry.protocol.TransactionInfo;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class DeadEvent {
    private final Object event;
    private final Object source;

    public Object getEvent() {
        return this.event;
    }

    public Object getSource() {
        return this.source;
    }

    public DeadEvent(Object obj, Object obj2) {
        this.source = Preconditions.checkNotNull(obj);
        this.event = Preconditions.checkNotNull(obj2);
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add(TransactionInfo.JsonKeys.SOURCE, this.source).add(NotificationCompat.CATEGORY_EVENT, this.event).toString();
    }
}
