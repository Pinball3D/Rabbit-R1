package io.sentry;

import io.sentry.protocol.SdkVersion;
import java.util.Map;

/* loaded from: classes3.dex */
public interface IOptionsObserver {
    void setDist(String str);

    void setEnvironment(String str);

    void setProguardUuid(String str);

    void setRelease(String str);

    void setSdkVersion(SdkVersion sdkVersion);

    void setTags(Map<String, String> map);
}
