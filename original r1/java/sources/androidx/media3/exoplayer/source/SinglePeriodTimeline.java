package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;

/* loaded from: classes2.dex */
public final class SinglePeriodTimeline extends Timeline {
    private final long elapsedRealtimeEpochOffsetMs;
    private final boolean isDynamic;
    private final boolean isSeekable;
    private final MediaItem.LiveConfiguration liveConfiguration;
    private final Object manifest;
    private final MediaItem mediaItem;
    private final long periodDurationUs;
    private final long presentationStartTimeMs;
    private final boolean suppressPositionProjection;
    private final long windowDefaultStartPositionUs;
    private final long windowDurationUs;
    private final long windowPositionInPeriodUs;
    private final long windowStartTimeMs;
    private static final Object UID = new Object();
    private static final MediaItem MEDIA_ITEM = new MediaItem.Builder().setMediaId("SinglePeriodTimeline").setUri(Uri.EMPTY).build();

    @Override // androidx.media3.common.Timeline
    public int getPeriodCount() {
        return 1;
    }

    @Override // androidx.media3.common.Timeline
    public int getWindowCount() {
        return 1;
    }

    @Deprecated
    public SinglePeriodTimeline(long j, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this(j, j, 0L, 0L, z, z2, z3, obj, obj2);
    }

    public SinglePeriodTimeline(long j, boolean z, boolean z2, boolean z3, Object obj, MediaItem mediaItem) {
        this(j, j, 0L, 0L, z, z2, z3, obj, mediaItem);
    }

    @Deprecated
    public SinglePeriodTimeline(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, z3, obj, obj2);
    }

    public SinglePeriodTimeline(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, Object obj, MediaItem mediaItem) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, false, obj, mediaItem, z3 ? mediaItem.liveConfiguration : null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SinglePeriodTimeline(long r22, long r24, long r26, long r28, long r30, long r32, long r34, boolean r36, boolean r37, boolean r38, java.lang.Object r39, java.lang.Object r40) {
        /*
            r21 = this;
            r17 = 0
            androidx.media3.common.MediaItem r0 = androidx.media3.exoplayer.source.SinglePeriodTimeline.MEDIA_ITEM
            androidx.media3.common.MediaItem$Builder r1 = r0.buildUpon()
            r2 = r40
            androidx.media3.common.MediaItem$Builder r1 = r1.setTag(r2)
            androidx.media3.common.MediaItem r19 = r1.build()
            if (r38 == 0) goto L17
            androidx.media3.common.MediaItem$LiveConfiguration r0 = r0.liveConfiguration
            goto L18
        L17:
            r0 = 0
        L18:
            r20 = r0
            r0 = r21
            r1 = r22
            r3 = r24
            r5 = r26
            r7 = r28
            r9 = r30
            r11 = r32
            r13 = r34
            r15 = r36
            r16 = r37
            r18 = r39
            r0.<init>(r1, r3, r5, r7, r9, r11, r13, r15, r16, r17, r18, r19, r20)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.source.SinglePeriodTimeline.<init>(long, long, long, long, long, long, long, boolean, boolean, boolean, java.lang.Object, java.lang.Object):void");
    }

    @Deprecated
    public SinglePeriodTimeline(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, Object obj, MediaItem mediaItem, MediaItem.LiveConfiguration liveConfiguration) {
        this(j, j2, j3, j4, j5, j6, j7, z, z2, false, obj, mediaItem, liveConfiguration);
    }

    public SinglePeriodTimeline(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, Object obj, MediaItem mediaItem, MediaItem.LiveConfiguration liveConfiguration) {
        this.presentationStartTimeMs = j;
        this.windowStartTimeMs = j2;
        this.elapsedRealtimeEpochOffsetMs = j3;
        this.periodDurationUs = j4;
        this.windowDurationUs = j5;
        this.windowPositionInPeriodUs = j6;
        this.windowDefaultStartPositionUs = j7;
        this.isSeekable = z;
        this.isDynamic = z2;
        this.suppressPositionProjection = z3;
        this.manifest = obj;
        this.mediaItem = (MediaItem) Assertions.checkNotNull(mediaItem);
        this.liveConfiguration = liveConfiguration;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        if (r1 > r3) goto L10;
     */
    @Override // androidx.media3.common.Timeline
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.media3.common.Timeline.Window getWindow(int r29, androidx.media3.common.Timeline.Window r30, long r31) {
        /*
            r28 = this;
            r0 = r28
            r1 = 0
            r2 = 1
            r3 = r29
            androidx.media3.common.util.Assertions.checkIndex(r3, r1, r2)
            long r1 = r0.windowDefaultStartPositionUs
            boolean r3 = r0.isDynamic
            if (r3 == 0) goto L2e
            boolean r3 = r0.suppressPositionProjection
            if (r3 != 0) goto L2e
            r3 = 0
            int r3 = (r31 > r3 ? 1 : (r31 == r3 ? 0 : -1))
            if (r3 == 0) goto L2e
            long r3 = r0.windowDurationUs
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L27
        L24:
            r20 = r5
            goto L30
        L27:
            long r1 = r1 + r31
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 <= 0) goto L2e
            goto L24
        L2e:
            r20 = r1
        L30:
            java.lang.Object r8 = androidx.media3.common.Timeline.Window.SINGLE_WINDOW_UID
            androidx.media3.common.MediaItem r9 = r0.mediaItem
            java.lang.Object r10 = r0.manifest
            long r11 = r0.presentationStartTimeMs
            long r13 = r0.windowStartTimeMs
            long r1 = r0.elapsedRealtimeEpochOffsetMs
            r15 = r1
            boolean r1 = r0.isSeekable
            r17 = r1
            boolean r1 = r0.isDynamic
            r18 = r1
            androidx.media3.common.MediaItem$LiveConfiguration r1 = r0.liveConfiguration
            r19 = r1
            long r1 = r0.windowDurationUs
            r22 = r1
            r24 = 0
            r25 = 0
            long r0 = r0.windowPositionInPeriodUs
            r26 = r0
            r7 = r30
            androidx.media3.common.Timeline$Window r0 = r7.set(r8, r9, r10, r11, r13, r15, r17, r18, r19, r20, r22, r24, r25, r26)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.source.SinglePeriodTimeline.getWindow(int, androidx.media3.common.Timeline$Window, long):androidx.media3.common.Timeline$Window");
    }

    @Override // androidx.media3.common.Timeline
    public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
        Assertions.checkIndex(i, 0, 1);
        return period.set(null, z ? UID : null, 0, this.periodDurationUs, -this.windowPositionInPeriodUs);
    }

    @Override // androidx.media3.common.Timeline
    public int getIndexOfPeriod(Object obj) {
        return UID.equals(obj) ? 0 : -1;
    }

    @Override // androidx.media3.common.Timeline
    public Object getUidOfPeriod(int i) {
        Assertions.checkIndex(i, 0, 1);
        return UID;
    }
}
