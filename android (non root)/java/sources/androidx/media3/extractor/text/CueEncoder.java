package androidx.media3.extractor.text;

import android.os.Bundle;
import android.os.Parcel;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.BundleableUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class CueEncoder {
    public byte[] encode(List<Cue> list) {
        ArrayList<Bundle> bundleArrayList = BundleableUtil.toBundleArrayList(list);
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", bundleArrayList);
        Parcel obtain = Parcel.obtain();
        obtain.writeBundle(bundle);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }
}
