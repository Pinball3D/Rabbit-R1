package androidx.media3.extractor.text;

import android.os.Bundle;
import android.os.Parcel;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleableUtil;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class CueDecoder {
    static final String BUNDLED_CUES = "c";

    public ImmutableList<Cue> decode(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        Bundle readBundle = obtain.readBundle(Bundle.class.getClassLoader());
        obtain.recycle();
        return BundleableUtil.fromBundleList(Cue.CREATOR, (ArrayList) Assertions.checkNotNull(readBundle.getParcelableArrayList(BUNDLED_CUES)));
    }
}
