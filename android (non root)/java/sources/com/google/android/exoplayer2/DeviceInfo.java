package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes2.dex */
public final class DeviceInfo implements Bundleable {
    public static final int PLAYBACK_TYPE_LOCAL = 0;
    public static final int PLAYBACK_TYPE_REMOTE = 1;
    public final int maxVolume;
    public final int minVolume;
    public final int playbackType;
    public static final DeviceInfo UNKNOWN = new DeviceInfo(0, 0, 0);
    private static final String FIELD_PLAYBACK_TYPE = Util.intToStringMaxRadix(0);
    private static final String FIELD_MIN_VOLUME = Util.intToStringMaxRadix(1);
    private static final String FIELD_MAX_VOLUME = Util.intToStringMaxRadix(2);
    public static final Bundleable.Creator<DeviceInfo> CREATOR = new Bundleable.Creator() { // from class: com.google.android.exoplayer2.DeviceInfo$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            return DeviceInfo.lambda$static$0(bundle);
        }
    };

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface PlaybackType {
    }

    public int hashCode() {
        return ((((527 + this.playbackType) * 31) + this.minVolume) * 31) + this.maxVolume;
    }

    public DeviceInfo(int i, int i2, int i3) {
        this.playbackType = i;
        this.minVolume = i2;
        this.maxVolume = i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceInfo)) {
            return false;
        }
        DeviceInfo deviceInfo = (DeviceInfo) obj;
        return this.playbackType == deviceInfo.playbackType && this.minVolume == deviceInfo.minVolume && this.maxVolume == deviceInfo.maxVolume;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_PLAYBACK_TYPE, this.playbackType);
        bundle.putInt(FIELD_MIN_VOLUME, this.minVolume);
        bundle.putInt(FIELD_MAX_VOLUME, this.maxVolume);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ DeviceInfo lambda$static$0(Bundle bundle) {
        return new DeviceInfo(bundle.getInt(FIELD_PLAYBACK_TYPE, 0), bundle.getInt(FIELD_MIN_VOLUME, 0), bundle.getInt(FIELD_MAX_VOLUME, 0));
    }
}
