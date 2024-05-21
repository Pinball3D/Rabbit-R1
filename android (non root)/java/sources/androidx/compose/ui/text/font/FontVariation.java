package androidx.compose.ui.text.font;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;

/* compiled from: FontVariation.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\bÇ\u0002\u0018\u00002\u00020\u0001:\u0005\u0003\u001d\u001e\u001f\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ7\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0010\"\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bJ\u001b\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0018ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0014J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006 "}, d2 = {"Landroidx/compose/ui/text/font/FontVariation;", "", "()V", "Setting", "Landroidx/compose/ui/text/font/FontVariation$Setting;", "name", "", "value", "", "Settings", "Landroidx/compose/ui/text/font/FontVariation$Settings;", "weight", "Landroidx/compose/ui/text/font/FontWeight;", "style", "Landroidx/compose/ui/text/font/FontStyle;", "settings", "", "Settings-6EWAqTQ", "(Landroidx/compose/ui/text/font/FontWeight;I[Landroidx/compose/ui/text/font/FontVariation$Setting;)Landroidx/compose/ui/text/font/FontVariation$Settings;", "grade", "", "italic", "opticalSizing", "textSize", "Landroidx/compose/ui/unit/TextUnit;", "opticalSizing--R2X_6o", "(J)Landroidx/compose/ui/text/font/FontVariation$Setting;", "slant", ViewHierarchyNode.JsonKeys.WIDTH, "SettingFloat", "SettingInt", "SettingTextUnit", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FontVariation {
    public static final int $stable = 0;
    public static final FontVariation INSTANCE = new FontVariation();

    /* compiled from: FontVariation.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bw\u0018\u00002\u00020\u0001J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0001\u0003\u000e\u000f\u0010ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0011À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/font/FontVariation$Setting;", "", "axisName", "", "getAxisName", "()Ljava/lang/String;", "needsDensity", "", "getNeedsDensity", "()Z", "toVariationValue", "", "density", "Landroidx/compose/ui/unit/Density;", "Landroidx/compose/ui/text/font/FontVariation$SettingFloat;", "Landroidx/compose/ui/text/font/FontVariation$SettingInt;", "Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface Setting {
        String getAxisName();

        boolean getNeedsDensity();

        float toVariationValue(Density density);
    }

    private FontVariation() {
    }

    /* compiled from: FontVariation.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0013\u0010\r\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/text/font/FontVariation$Settings;", "", "settings", "", "Landroidx/compose/ui/text/font/FontVariation$Setting;", "([Landroidx/compose/ui/text/font/FontVariation$Setting;)V", "needsDensity", "", "getNeedsDensity$ui_text_release", "()Z", "", "getSettings", "()Ljava/util/List;", "equals", "other", "hashCode", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Settings {
        public static final int $stable = 0;
        private final boolean needsDensity;
        private final List<Setting> settings;

        /* renamed from: getNeedsDensity$ui_text_release, reason: from getter */
        public final boolean getNeedsDensity() {
            return this.needsDensity;
        }

        public final List<Setting> getSettings() {
            return this.settings;
        }

        public Settings(Setting... settings) {
            Intrinsics.checkNotNullParameter(settings, "settings");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            boolean z = false;
            for (Setting setting : settings) {
                String axisName = setting.getAxisName();
                Object obj = linkedHashMap.get(axisName);
                if (obj == null) {
                    obj = (List) new ArrayList();
                    linkedHashMap.put(axisName, obj);
                }
                ((List) obj).add(setting);
            }
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                String str = (String) entry.getKey();
                List list = (List) entry.getValue();
                if (list.size() != 1) {
                    throw new IllegalArgumentException(("'" + str + "' must be unique. Actual [ [" + CollectionsKt.joinToString$default(list, null, null, null, 0, null, null, 63, null) + ']').toString());
                }
                CollectionsKt.addAll(arrayList, list);
            }
            ArrayList arrayList2 = new ArrayList(arrayList);
            this.settings = arrayList2;
            int size = arrayList2.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                if (((Setting) arrayList2.get(i)).getNeedsDensity()) {
                    z = true;
                    break;
                }
                i++;
            }
            this.needsDensity = z;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Settings) && Intrinsics.areEqual(this.settings, ((Settings) other).settings);
        }

        public int hashCode() {
            return this.settings.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FontVariation.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000f\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0003H\u0016J\u0012\u0010\u0015\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Landroidx/compose/ui/text/font/FontVariation$SettingFloat;", "Landroidx/compose/ui/text/font/FontVariation$Setting;", "axisName", "", "value", "", "(Ljava/lang/String;F)V", "getAxisName", "()Ljava/lang/String;", "needsDensity", "", "getNeedsDensity", "()Z", "getValue", "()F", "equals", "other", "", "hashCode", "", "toString", "toVariationValue", "density", "Landroidx/compose/ui/unit/Density;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SettingFloat implements Setting {
        private final String axisName;
        private final boolean needsDensity;
        private final float value;

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public String getAxisName() {
            return this.axisName;
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public boolean getNeedsDensity() {
            return this.needsDensity;
        }

        public final float getValue() {
            return this.value;
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public float toVariationValue(Density density) {
            return this.value;
        }

        public SettingFloat(String axisName, float f) {
            Intrinsics.checkNotNullParameter(axisName, "axisName");
            this.axisName = axisName;
            this.value = f;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SettingFloat)) {
                return false;
            }
            SettingFloat settingFloat = (SettingFloat) other;
            return Intrinsics.areEqual(getAxisName(), settingFloat.getAxisName()) && this.value == settingFloat.value;
        }

        public int hashCode() {
            return (getAxisName().hashCode() * 31) + Float.hashCode(this.value);
        }

        public String toString() {
            return "FontVariation.Setting(axisName='" + getAxisName() + "', value=" + this.value + ')';
        }
    }

    /* compiled from: FontVariation.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0003\u0018\u00002\u00020\u0001B\u0018\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\u0013\u0010\u0010\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0003H\u0016J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000e\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001a"}, d2 = {"Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;", "Landroidx/compose/ui/text/font/FontVariation$Setting;", "axisName", "", "value", "Landroidx/compose/ui/unit/TextUnit;", "(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getAxisName", "()Ljava/lang/String;", "needsDensity", "", "getNeedsDensity", "()Z", "getValue-XSAIIZE", "()J", "J", "equals", "other", "", "hashCode", "", "toString", "toVariationValue", "", "density", "Landroidx/compose/ui/unit/Density;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class SettingTextUnit implements Setting {
        private final String axisName;
        private final boolean needsDensity;
        private final long value;

        public /* synthetic */ SettingTextUnit(String str, long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, j);
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public String getAxisName() {
            return this.axisName;
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public boolean getNeedsDensity() {
            return this.needsDensity;
        }

        /* renamed from: getValue-XSAIIZE, reason: not valid java name and from getter */
        public final long getValue() {
            return this.value;
        }

        private SettingTextUnit(String axisName, long j) {
            Intrinsics.checkNotNullParameter(axisName, "axisName");
            this.axisName = axisName;
            this.value = j;
            this.needsDensity = true;
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public float toVariationValue(Density density) {
            if (density == null) {
                throw new IllegalArgumentException("density must not be null".toString());
            }
            return TextUnit.m5064getValueimpl(this.value) * density.getFontScale();
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SettingTextUnit)) {
                return false;
            }
            SettingTextUnit settingTextUnit = (SettingTextUnit) other;
            return Intrinsics.areEqual(getAxisName(), settingTextUnit.getAxisName()) && TextUnit.m5061equalsimpl0(this.value, settingTextUnit.value);
        }

        public int hashCode() {
            return (getAxisName().hashCode() * 31) + TextUnit.m5065hashCodeimpl(this.value);
        }

        public String toString() {
            return "FontVariation.Setting(axisName='" + getAxisName() + "', value=" + ((Object) TextUnit.m5071toStringimpl(this.value)) + ')';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FontVariation.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000f\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0005H\u0016J\b\u0010\u0013\u001a\u00020\u0003H\u0016J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Landroidx/compose/ui/text/font/FontVariation$SettingInt;", "Landroidx/compose/ui/text/font/FontVariation$Setting;", "axisName", "", "value", "", "(Ljava/lang/String;I)V", "getAxisName", "()Ljava/lang/String;", "needsDensity", "", "getNeedsDensity", "()Z", "getValue", "()I", "equals", "other", "", "hashCode", "toString", "toVariationValue", "", "density", "Landroidx/compose/ui/unit/Density;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SettingInt implements Setting {
        private final String axisName;
        private final boolean needsDensity;
        private final int value;

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public String getAxisName() {
            return this.axisName;
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public boolean getNeedsDensity() {
            return this.needsDensity;
        }

        public final int getValue() {
            return this.value;
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public float toVariationValue(Density density) {
            return this.value;
        }

        public SettingInt(String axisName, int i) {
            Intrinsics.checkNotNullParameter(axisName, "axisName");
            this.axisName = axisName;
            this.value = i;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SettingInt)) {
                return false;
            }
            SettingInt settingInt = (SettingInt) other;
            return Intrinsics.areEqual(getAxisName(), settingInt.getAxisName()) && this.value == settingInt.value;
        }

        public int hashCode() {
            return (getAxisName().hashCode() * 31) + this.value;
        }

        public String toString() {
            return "FontVariation.Setting(axisName='" + getAxisName() + "', value=" + this.value + ')';
        }
    }

    public final Setting Setting(String name, float value) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (name.length() != 4) {
            throw new IllegalArgumentException(("Name must be exactly four characters. Actual: '" + name + '\'').toString());
        }
        return new SettingFloat(name, value);
    }

    public final Setting italic(float value) {
        if (0.0f > value || value > 1.0f) {
            throw new IllegalArgumentException(("'ital' must be in 0.0f..1.0f. Actual: " + value).toString());
        }
        return new SettingFloat("ital", value);
    }

    /* renamed from: opticalSizing--R2X_6o, reason: not valid java name */
    public final Setting m4531opticalSizingR2X_6o(long textSize) {
        if (!TextUnit.m5067isSpimpl(textSize)) {
            throw new IllegalArgumentException("'opsz' must be provided in sp units".toString());
        }
        return new SettingTextUnit("opsz", textSize, null);
    }

    public final Setting slant(float value) {
        if (-90.0f > value || value > 90.0f) {
            throw new IllegalArgumentException(("'slnt' must be in -90f..90f. Actual: " + value).toString());
        }
        return new SettingFloat("slnt", value);
    }

    public final Setting width(float value) {
        if (value <= 0.0f) {
            throw new IllegalArgumentException(("'wdth' must be strictly > 0.0f. Actual: " + value).toString());
        }
        return new SettingFloat("wdth", value);
    }

    public final Setting weight(int value) {
        if (1 > value || value >= 1001) {
            throw new IllegalArgumentException(("'wght' value must be in [1, 1000]. Actual: " + value).toString());
        }
        return new SettingInt("wght", value);
    }

    public final Setting grade(int value) {
        if (-1000 > value || value >= 1001) {
            throw new IllegalArgumentException("'GRAD' must be in -1000..1000".toString());
        }
        return new SettingInt("GRAD", value);
    }

    /* renamed from: Settings-6EWAqTQ, reason: not valid java name */
    public final Settings m4530Settings6EWAqTQ(FontWeight weight, int style, Setting... settings) {
        Intrinsics.checkNotNullParameter(weight, "weight");
        Intrinsics.checkNotNullParameter(settings, "settings");
        SpreadBuilder spreadBuilder = new SpreadBuilder(3);
        spreadBuilder.add(weight(weight.getWeight()));
        spreadBuilder.add(italic(style));
        spreadBuilder.addSpread(settings);
        return new Settings((Setting[]) spreadBuilder.toArray(new Setting[spreadBuilder.size()]));
    }
}
