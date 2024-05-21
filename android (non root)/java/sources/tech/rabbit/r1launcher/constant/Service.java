package tech.rabbit.r1launcher.constant;

import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: Service.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Ltech/rabbit/r1launcher/constant/Service;", "", ViewHierarchyNode.JsonKeys.TAG, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getTag", "()Ljava/lang/String;", "UBER", "DOORDASH", "FOOD_DELIVERY", "SPOTIFY", "VISION", "GLOBAL", "KERNEL", "MEETING_ASSISTANT", "DEVICE_STATE", "MIDJOURNEY", "TRANSLATOR", "SPEECH", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Service {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Service[] $VALUES;
    private final String tag;
    public static final Service UBER = new Service("UBER", 0, "uber");
    public static final Service DOORDASH = new Service("DOORDASH", 1, "doorDash");
    public static final Service FOOD_DELIVERY = new Service("FOOD_DELIVERY", 2, "foodDelivery");
    public static final Service SPOTIFY = new Service("SPOTIFY", 3, "spotify");
    public static final Service VISION = new Service("VISION", 4, "vision");
    public static final Service GLOBAL = new Service("GLOBAL", 5, "global");
    public static final Service KERNEL = new Service("KERNEL", 6, "kernel");
    public static final Service MEETING_ASSISTANT = new Service("MEETING_ASSISTANT", 7, "meetingAssistant");
    public static final Service DEVICE_STATE = new Service("DEVICE_STATE", 8, "deviceState");
    public static final Service MIDJOURNEY = new Service("MIDJOURNEY", 9, "midjourney");
    public static final Service TRANSLATOR = new Service("TRANSLATOR", 10, "translator");
    public static final Service SPEECH = new Service("SPEECH", 11, "speechRecognized");

    private static final /* synthetic */ Service[] $values() {
        return new Service[]{UBER, DOORDASH, FOOD_DELIVERY, SPOTIFY, VISION, GLOBAL, KERNEL, MEETING_ASSISTANT, DEVICE_STATE, MIDJOURNEY, TRANSLATOR, SPEECH};
    }

    public static EnumEntries<Service> getEntries() {
        return $ENTRIES;
    }

    public static Service valueOf(String str) {
        return (Service) Enum.valueOf(Service.class, str);
    }

    public static Service[] values() {
        return (Service[]) $VALUES.clone();
    }

    public final String getTag() {
        return this.tag;
    }

    private Service(String str, int i, String str2) {
        this.tag = str2;
    }

    static {
        Service[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
