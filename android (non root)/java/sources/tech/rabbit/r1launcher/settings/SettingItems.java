package tech.rabbit.r1launcher.settings;

import android.app.Activity;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.settings.about.AboutActivity;
import tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothListActivity;
import tech.rabbit.r1launcher.settings.compliance.ComplianceActivity;
import tech.rabbit.r1launcher.settings.disclaimer.DisclaimerActivity;
import tech.rabbit.r1launcher.settings.holder.BaseHolder;
import tech.rabbit.r1launcher.settings.holder.BrightnessSettingHolder;
import tech.rabbit.r1launcher.settings.holder.CommonSettingHolder;
import tech.rabbit.r1launcher.settings.holder.EnableTerminalSettingHolder;
import tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity;
import tech.rabbit.r1launcher.settings.power_off.PowerOffActivity;
import tech.rabbit.r1launcher.settings.security.SecurityActivity;
import tech.rabbit.r1launcher.settings.volume.VolumeListActivity;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: SettingItems.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\fH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001b¨\u0006\u001c"}, d2 = {"Ltech/rabbit/r1launcher/settings/SettingItems;", "", "labelResId", "", "(Ljava/lang/String;II)V", "getLabelResId", "()I", "doAction", "", "activity", "Landroid/app/Activity;", "getHolderClass", "Ljava/lang/Class;", "Ltech/rabbit/r1launcher/settings/holder/BaseHolder;", "getItemView", "Landroid/view/View;", "parent", "Landroid/view/ViewGroup;", "Brightness", "Volume", "Bluetooth", "Network", "Security", "PowerOff", "EnableTerminal", "About", "Compliance", "Disclaimer", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class SettingItems {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SettingItems[] $VALUES;
    private final int labelResId;
    public static final SettingItems Brightness = new SettingItems("Brightness", 0) { // from class: tech.rabbit.r1launcher.settings.SettingItems.Brightness
        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public void doAction(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public Class<? extends BaseHolder> getHolderClass() {
            return BrightnessSettingHolder.class;
        }

        {
            int i = R.string.settings_page_brightness;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public View getItemView(ViewGroup parent) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            View inflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_setting_brightness, parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
            return inflate;
        }
    };
    public static final SettingItems Volume = new SettingItems("Volume", 1) { // from class: tech.rabbit.r1launcher.settings.SettingItems.Volume
        {
            int i = R.string.settings_page_volume;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public void doAction(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            activity.startActivity(new Intent(activity, (Class<?>) VolumeListActivity.class));
        }
    };
    public static final SettingItems Bluetooth = new SettingItems("Bluetooth", 2) { // from class: tech.rabbit.r1launcher.settings.SettingItems.Bluetooth
        {
            int i = R.string.settings_page_bluetooth;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public void doAction(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            activity.startActivity(new Intent(activity, (Class<?>) BluetoothListActivity.class));
        }
    };
    public static final SettingItems Network = new SettingItems("Network", 3) { // from class: tech.rabbit.r1launcher.settings.SettingItems.Network
        {
            int i = R.string.settings_page_network;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public void doAction(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            SettingsNetwork2Activity.INSTANCE.launch(activity);
        }
    };
    public static final SettingItems Security = new SettingItems("Security", 4) { // from class: tech.rabbit.r1launcher.settings.SettingItems.Security
        {
            int i = R.string.settings_page_security;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public void doAction(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            activity.startActivity(new Intent(activity, (Class<?>) SecurityActivity.class));
        }
    };
    public static final SettingItems PowerOff = new SettingItems("PowerOff", 5) { // from class: tech.rabbit.r1launcher.settings.SettingItems.PowerOff
        {
            int i = R.string.settings_page_power_off;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public void doAction(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            activity.startActivity(new Intent(activity, (Class<?>) PowerOffActivity.class));
        }
    };
    public static final SettingItems EnableTerminal = new SettingItems("EnableTerminal", 6) { // from class: tech.rabbit.r1launcher.settings.SettingItems.EnableTerminal
        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public void doAction(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public Class<? extends BaseHolder> getHolderClass() {
            return EnableTerminalSettingHolder.class;
        }

        {
            int i = R.string.settings_page_system_enable_terminal;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public View getItemView(ViewGroup parent) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            View inflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_setting_enable_terminal, parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
            return inflate;
        }
    };
    public static final SettingItems About = new SettingItems("About", 7) { // from class: tech.rabbit.r1launcher.settings.SettingItems.About
        {
            int i = R.string.settings_page_system_about;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public void doAction(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            AboutActivity.INSTANCE.launch(activity);
        }
    };
    public static final SettingItems Compliance = new SettingItems("Compliance", 8) { // from class: tech.rabbit.r1launcher.settings.SettingItems.Compliance
        {
            int i = R.string.settings_page_compliance;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public void doAction(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            ComplianceActivity.INSTANCE.launch(activity);
        }
    };
    public static final SettingItems Disclaimer = new SettingItems("Disclaimer", 9) { // from class: tech.rabbit.r1launcher.settings.SettingItems.Disclaimer
        {
            int i = R.string.settings_page_disclaimer;
            DefaultConstructorMarker defaultConstructorMarker = null;
        }

        @Override // tech.rabbit.r1launcher.settings.SettingItems
        public void doAction(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            DisclaimerActivity.INSTANCE.launch(activity);
        }
    };

    private static final /* synthetic */ SettingItems[] $values() {
        return new SettingItems[]{Brightness, Volume, Bluetooth, Network, Security, PowerOff, EnableTerminal, About, Compliance, Disclaimer};
    }

    public /* synthetic */ SettingItems(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, i2);
    }

    public static EnumEntries<SettingItems> getEntries() {
        return $ENTRIES;
    }

    public static SettingItems valueOf(String str) {
        return (SettingItems) Enum.valueOf(SettingItems.class, str);
    }

    public static SettingItems[] values() {
        return (SettingItems[]) $VALUES.clone();
    }

    public abstract void doAction(Activity activity);

    public Class<? extends BaseHolder> getHolderClass() {
        return CommonSettingHolder.class;
    }

    public final int getLabelResId() {
        return this.labelResId;
    }

    private SettingItems(String str, int i, int i2) {
        this.labelResId = i2;
    }

    static {
        SettingItems[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    public View getItemView(ViewGroup parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_setting_common, parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return inflate;
    }
}
