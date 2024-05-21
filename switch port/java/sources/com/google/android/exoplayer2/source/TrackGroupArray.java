package com.google.android.exoplayer2.source;

import android.os.Bundle;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.BundleableUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class TrackGroupArray implements Bundleable {
    private static final String TAG = "TrackGroupArray";
    private int hashCode;
    public final int length;
    private final ImmutableList<TrackGroup> trackGroups;
    public static final TrackGroupArray EMPTY = new TrackGroupArray(new TrackGroup[0]);
    private static final String FIELD_TRACK_GROUPS = Util.intToStringMaxRadix(0);
    public static final Bundleable.Creator<TrackGroupArray> CREATOR = new Bundleable.Creator() { // from class: com.google.android.exoplayer2.source.TrackGroupArray$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            return TrackGroupArray.lambda$static$0(bundle);
        }
    };

    public boolean isEmpty() {
        return this.length == 0;
    }

    public TrackGroupArray(TrackGroup... trackGroupArr) {
        this.trackGroups = ImmutableList.copyOf(trackGroupArr);
        this.length = trackGroupArr.length;
        verifyCorrectness();
    }

    public TrackGroup get(int i) {
        return this.trackGroups.get(i);
    }

    public int indexOf(TrackGroup trackGroup) {
        int indexOf = this.trackGroups.indexOf(trackGroup);
        if (indexOf >= 0) {
            return indexOf;
        }
        return -1;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = this.trackGroups.hashCode();
        }
        return this.hashCode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TrackGroupArray trackGroupArray = (TrackGroupArray) obj;
        return this.length == trackGroupArray.length && this.trackGroups.equals(trackGroupArray.trackGroups);
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(FIELD_TRACK_GROUPS, BundleableUtil.toBundleArrayList(this.trackGroups));
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ TrackGroupArray lambda$static$0(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_TRACK_GROUPS);
        if (parcelableArrayList == null) {
            return new TrackGroupArray(new TrackGroup[0]);
        }
        return new TrackGroupArray((TrackGroup[]) BundleableUtil.fromBundleList(TrackGroup.CREATOR, parcelableArrayList).toArray(new TrackGroup[0]));
    }

    private void verifyCorrectness() {
        int i = 0;
        while (i < this.trackGroups.size()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.trackGroups.size(); i3++) {
                if (this.trackGroups.get(i).equals(this.trackGroups.get(i3))) {
                    Log.e(TAG, "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i = i2;
        }
    }
}
