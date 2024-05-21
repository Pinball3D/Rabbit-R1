package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Objects;

/* loaded from: classes2.dex */
public final class PercentageRating extends Rating {
    private static final int TYPE = 1;
    private final float percent;
    private static final String FIELD_PERCENT = Util.intToStringMaxRadix(1);
    public static final Bundleable.Creator<PercentageRating> CREATOR = new Bundleable.Creator() { // from class: com.google.android.exoplayer2.PercentageRating$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            PercentageRating fromBundle;
            fromBundle = PercentageRating.fromBundle(bundle);
            return fromBundle;
        }
    };

    public float getPercent() {
        return this.percent;
    }

    @Override // com.google.android.exoplayer2.Rating
    public boolean isRated() {
        return this.percent != -1.0f;
    }

    public PercentageRating() {
        this.percent = -1.0f;
    }

    public PercentageRating(float f) {
        Assertions.checkArgument(f >= 0.0f && f <= 100.0f, "percent must be in the range of [0, 100]");
        this.percent = f;
    }

    public int hashCode() {
        return Objects.hashCode(Float.valueOf(this.percent));
    }

    public boolean equals(Object obj) {
        return (obj instanceof PercentageRating) && this.percent == ((PercentageRating) obj).percent;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_RATING_TYPE, 1);
        bundle.putFloat(FIELD_PERCENT, this.percent);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static PercentageRating fromBundle(Bundle bundle) {
        Assertions.checkArgument(bundle.getInt(FIELD_RATING_TYPE, -1) == 1);
        float f = bundle.getFloat(FIELD_PERCENT, -1.0f);
        return f == -1.0f ? new PercentageRating() : new PercentageRating(f);
    }
}
