package com.google.android.exoplayer2.scheduler;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes2.dex */
public final class Requirements implements Parcelable {
    public static final Parcelable.Creator<Requirements> CREATOR = new Parcelable.Creator<Requirements>() { // from class: com.google.android.exoplayer2.scheduler.Requirements.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Requirements createFromParcel(Parcel parcel) {
            return new Requirements(parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Requirements[] newArray(int i) {
            return new Requirements[i];
        }
    };
    public static final int DEVICE_CHARGING = 8;
    public static final int DEVICE_IDLE = 4;
    public static final int DEVICE_STORAGE_NOT_LOW = 16;
    public static final int NETWORK = 1;
    public static final int NETWORK_UNMETERED = 2;
    private final int requirements;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface RequirementFlags {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getRequirements() {
        return this.requirements;
    }

    public int hashCode() {
        return this.requirements;
    }

    public boolean isChargingRequired() {
        return (this.requirements & 8) != 0;
    }

    public boolean isIdleRequired() {
        return (this.requirements & 4) != 0;
    }

    public boolean isNetworkRequired() {
        return (this.requirements & 1) != 0;
    }

    public boolean isStorageNotLowRequired() {
        return (this.requirements & 16) != 0;
    }

    public boolean isUnmeteredNetworkRequired() {
        return (this.requirements & 2) != 0;
    }

    public Requirements(int i) {
        this.requirements = (i & 2) != 0 ? i | 1 : i;
    }

    public Requirements filterRequirements(int i) {
        int i2 = this.requirements;
        int i3 = i & i2;
        return i3 == i2 ? this : new Requirements(i3);
    }

    public boolean checkRequirements(Context context) {
        return getNotMetRequirements(context) == 0;
    }

    public int getNotMetRequirements(Context context) {
        int notMetNetworkRequirements = getNotMetNetworkRequirements(context);
        if (isChargingRequired() && !isDeviceCharging(context)) {
            notMetNetworkRequirements |= 8;
        }
        if (isIdleRequired() && !isDeviceIdle(context)) {
            notMetNetworkRequirements |= 4;
        }
        return (!isStorageNotLowRequired() || isStorageNotLow(context)) ? notMetNetworkRequirements : notMetNetworkRequirements | 16;
    }

    private int getNotMetNetworkRequirements(Context context) {
        if (!isNetworkRequired()) {
            return 0;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) Assertions.checkNotNull(context.getSystemService("connectivity"));
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return (activeNetworkInfo != null && activeNetworkInfo.isConnected() && isInternetConnectivityValidated(connectivityManager)) ? (isUnmeteredNetworkRequired() && connectivityManager.isActiveNetworkMetered()) ? 2 : 0 : this.requirements & 3;
    }

    private boolean isDeviceCharging(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return false;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        return intExtra == 2 || intExtra == 5;
    }

    private boolean isDeviceIdle(Context context) {
        PowerManager powerManager = (PowerManager) Assertions.checkNotNull(context.getSystemService("power"));
        if (Util.SDK_INT >= 23) {
            return powerManager.isDeviceIdleMode();
        }
        return Util.SDK_INT < 20 ? !powerManager.isScreenOn() : !powerManager.isInteractive();
    }

    private boolean isStorageNotLow(Context context) {
        return context.registerReceiver(null, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW")) == null;
    }

    private static boolean isInternetConnectivityValidated(ConnectivityManager connectivityManager) {
        if (Util.SDK_INT < 24) {
            return true;
        }
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null) {
            return false;
        }
        try {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            if (networkCapabilities != null) {
                if (networkCapabilities.hasCapability(16)) {
                    return true;
                }
            }
            return false;
        } catch (SecurityException unused) {
            return true;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.requirements == ((Requirements) obj).requirements;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.requirements);
    }
}
