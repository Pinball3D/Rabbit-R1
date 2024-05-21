package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes2.dex */
public interface TrackSelection {
    public static final int TYPE_CUSTOM_BASE = 10000;
    public static final int TYPE_UNSET = 0;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface Type {
    }

    Format getFormat(int i);

    int getIndexInTrackGroup(int i);

    TrackGroup getTrackGroup();

    int getType();

    int indexOf(int i);

    int indexOf(Format format);

    int length();
}
