package tech.rabbit.r1launcher.widget;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: SimpleFocusLinearLayoutManager.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Ltech/rabbit/r1launcher/widget/StopPoint;", "", "(Ljava/lang/String;I)V", "NONE", "TOP", "BOTTOM", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class StopPoint {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StopPoint[] $VALUES;
    public static final StopPoint NONE = new StopPoint("NONE", 0);
    public static final StopPoint TOP = new StopPoint("TOP", 1);
    public static final StopPoint BOTTOM = new StopPoint("BOTTOM", 2);

    private static final /* synthetic */ StopPoint[] $values() {
        return new StopPoint[]{NONE, TOP, BOTTOM};
    }

    public static EnumEntries<StopPoint> getEntries() {
        return $ENTRIES;
    }

    public static StopPoint valueOf(String str) {
        return (StopPoint) Enum.valueOf(StopPoint.class, str);
    }

    public static StopPoint[] values() {
        return (StopPoint[]) $VALUES.clone();
    }

    private StopPoint(String str, int i) {
    }

    static {
        StopPoint[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
