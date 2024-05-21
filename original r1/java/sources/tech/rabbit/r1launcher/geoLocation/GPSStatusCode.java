package tech.rabbit.r1launcher.geoLocation;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: GeoLocationManager.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;", "", "code", "", "(Ljava/lang/String;II)V", "getCode", "()I", "SUCCESS", "FAIL", "base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class GPSStatusCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ GPSStatusCode[] $VALUES;
    private final int code;
    public static final GPSStatusCode SUCCESS = new GPSStatusCode("SUCCESS", 0, 0);
    public static final GPSStatusCode FAIL = new GPSStatusCode("FAIL", 1, 1);

    private static final /* synthetic */ GPSStatusCode[] $values() {
        return new GPSStatusCode[]{SUCCESS, FAIL};
    }

    public static EnumEntries<GPSStatusCode> getEntries() {
        return $ENTRIES;
    }

    public static GPSStatusCode valueOf(String str) {
        return (GPSStatusCode) Enum.valueOf(GPSStatusCode.class, str);
    }

    public static GPSStatusCode[] values() {
        return (GPSStatusCode[]) $VALUES.clone();
    }

    public final int getCode() {
        return this.code;
    }

    private GPSStatusCode(String str, int i, int i2) {
        this.code = i2;
    }

    static {
        GPSStatusCode[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
