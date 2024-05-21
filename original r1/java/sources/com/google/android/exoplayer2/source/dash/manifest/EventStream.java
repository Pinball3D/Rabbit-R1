package com.google.android.exoplayer2.source.dash.manifest;

import com.google.android.exoplayer2.metadata.emsg.EventMessage;

/* loaded from: classes2.dex */
public final class EventStream {
    public final EventMessage[] events;
    public final long[] presentationTimesUs;
    public final String schemeIdUri;
    public final long timescale;
    public final String value;

    public EventStream(String str, String str2, long j, long[] jArr, EventMessage[] eventMessageArr) {
        this.schemeIdUri = str;
        this.value = str2;
        this.timescale = j;
        this.presentationTimesUs = jArr;
        this.events = eventMessageArr;
    }

    public String id() {
        return this.schemeIdUri + "/" + this.value;
    }
}
