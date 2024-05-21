package tech.rabbit.r1systemupdater;

import androidx.lifecycle.MutableLiveData;
import kotlin.Metadata;
import tech.rabbit.r1systemupdater.model.UpdateConfig;

/* compiled from: OtaStateHelper.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Ltech/rabbit/r1systemupdater/OtaStateHelper;", "", "()V", "liveState", "Landroidx/lifecycle/MutableLiveData;", "Ltech/rabbit/r1systemupdater/OtaState;", "getLiveState", "()Landroidx/lifecycle/MutableLiveData;", "updateConfig", "Ltech/rabbit/r1systemupdater/model/UpdateConfig;", "getUpdateConfig", "()Ltech/rabbit/r1systemupdater/model/UpdateConfig;", "setUpdateConfig", "(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V", "ota_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class OtaStateHelper {
    public static final OtaStateHelper INSTANCE = new OtaStateHelper();
    private static final MutableLiveData<OtaState> liveState = new MutableLiveData<>();
    private static UpdateConfig updateConfig;

    public final MutableLiveData<OtaState> getLiveState() {
        return liveState;
    }

    public final UpdateConfig getUpdateConfig() {
        return updateConfig;
    }

    public final void setUpdateConfig(UpdateConfig updateConfig2) {
        updateConfig = updateConfig2;
    }

    private OtaStateHelper() {
    }
}
