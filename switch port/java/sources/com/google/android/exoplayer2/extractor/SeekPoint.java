package com.google.android.exoplayer2.extractor;

/* loaded from: classes2.dex */
public final class SeekPoint {
    public static final SeekPoint START = new SeekPoint(0, 0);
    public final long position;
    public final long timeUs;

    public int hashCode() {
        return (((int) this.timeUs) * 31) + ((int) this.position);
    }

    public SeekPoint(long j, long j2) {
        this.timeUs = j;
        this.position = j2;
    }

    public String toString() {
        return "[timeUs=" + this.timeUs + ", position=" + this.position + "]";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SeekPoint seekPoint = (SeekPoint) obj;
        return this.timeUs == seekPoint.timeUs && this.position == seekPoint.position;
    }
}
