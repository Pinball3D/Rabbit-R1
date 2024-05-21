package com.google.android.exoplayer2.text;

import android.os.Bundle;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.BundleableUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes2.dex */
public final class CueGroup implements Bundleable {
    public final ImmutableList<Cue> cues;
    public final long presentationTimeUs;
    public static final CueGroup EMPTY_TIME_ZERO = new CueGroup(ImmutableList.of(), 0);
    private static final String FIELD_CUES = Util.intToStringMaxRadix(0);
    private static final String FIELD_PRESENTATION_TIME_US = Util.intToStringMaxRadix(1);
    public static final Bundleable.Creator<CueGroup> CREATOR = new Bundleable.Creator() { // from class: com.google.android.exoplayer2.text.CueGroup$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            CueGroup fromBundle;
            fromBundle = CueGroup.fromBundle(bundle);
            return fromBundle;
        }
    };

    public CueGroup(List<Cue> list, long j) {
        this.cues = ImmutableList.copyOf((Collection) list);
        this.presentationTimeUs = j;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(FIELD_CUES, BundleableUtil.toBundleArrayList(filterOutBitmapCues(this.cues)));
        bundle.putLong(FIELD_PRESENTATION_TIME_US, this.presentationTimeUs);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CueGroup fromBundle(Bundle bundle) {
        ImmutableList fromBundleList;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_CUES);
        if (parcelableArrayList == null) {
            fromBundleList = ImmutableList.of();
        } else {
            fromBundleList = BundleableUtil.fromBundleList(Cue.CREATOR, parcelableArrayList);
        }
        return new CueGroup(fromBundleList, bundle.getLong(FIELD_PRESENTATION_TIME_US));
    }

    private static ImmutableList<Cue> filterOutBitmapCues(List<Cue> list) {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).bitmap == null) {
                builder.add((ImmutableList.Builder) list.get(i));
            }
        }
        return builder.build();
    }
}
