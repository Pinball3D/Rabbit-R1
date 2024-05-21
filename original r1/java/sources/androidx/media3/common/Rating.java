package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.Bundleable;
import androidx.media3.common.util.Util;

/* loaded from: classes2.dex */
public abstract class Rating implements Bundleable {
    static final int RATING_TYPE_HEART = 0;
    static final int RATING_TYPE_PERCENTAGE = 1;
    static final int RATING_TYPE_STAR = 2;
    static final int RATING_TYPE_THUMB = 3;
    static final int RATING_TYPE_UNSET = -1;
    static final float RATING_UNSET = -1.0f;
    static final String FIELD_RATING_TYPE = Util.intToStringMaxRadix(0);
    public static final Bundleable.Creator<Rating> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.Rating$$ExternalSyntheticLambda0
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            Rating fromBundle;
            fromBundle = Rating.fromBundle(bundle);
            return fromBundle;
        }
    };

    public abstract boolean isRated();

    /* JADX INFO: Access modifiers changed from: private */
    public static Rating fromBundle(Bundle bundle) {
        int i = bundle.getInt(FIELD_RATING_TYPE, -1);
        if (i == 0) {
            return HeartRating.CREATOR.fromBundle(bundle);
        }
        if (i == 1) {
            return PercentageRating.CREATOR.fromBundle(bundle);
        }
        if (i == 2) {
            return StarRating.CREATOR.fromBundle(bundle);
        }
        if (i == 3) {
            return ThumbRating.CREATOR.fromBundle(bundle);
        }
        throw new IllegalArgumentException("Unknown RatingType: " + i);
    }
}
