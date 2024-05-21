package tech.rabbit.r1launcher.settings.network2;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.viewbinding.ViewBinding;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;

/* compiled from: Utils.kt */
@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0005\u001a\u0006\u0010\u0007\u001a\u00020\u0001\u001a\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0001\u001a\u000e\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\r\u001a\u0010\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u001a\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a\u001e\u0010\u0014\u001a\u0002H\u0015\"\n\b\u0000\u0010\u0015\u0018\u0001*\u00020\u0016*\u00020\u0017H\u0086\b¢\u0006\u0002\u0010\u0018\u001a\n\u0010\u0019\u001a\u00020\u001a*\u00020\u001b\u001a\n\u0010\u001c\u001a\u00020\u001a*\u00020\u001b\u001a\n\u0010\u001d\u001a\u00020\u001a*\u00020\u001b\u001a\n\u0010\u001e\u001a\u00020\u001a*\u00020\u001b¨\u0006\u001f"}, d2 = {"convertSecurityTypesToDpmWifiSecurity", "", "securityType", "getAllViews", "", "Landroid/view/View;", "view", "getDpmSecurityTypeUnknownConstant", "getDpmWifiSecurityText", "", "dpmWifiSecurity", "getSecurityTypeFromScanResult", "scanResult", "Landroid/net/wifi/ScanResult;", "getSecurityTypeFromWifiConfiguration", "configuration", "Landroid/net/wifi/WifiConfiguration;", "hasWepKeys", "", "isWpa3EnterpriseConfiguration", "toBinding", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/viewbinding/ViewBinding;", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;", "toFocusedRadioButtonStyle", "", "Landroidx/appcompat/widget/AppCompatTextView;", "toFocusedToggleButtonStyle", "toUnfocusedRadioButtonStyle", "toUnfocusedToggleButtonStyle", "app_productionEnvRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UtilsKt {
    public static final String getDpmWifiSecurityText(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "DPM_SECURITY_TYPE_UNKNOWN" : "WIFI_SECURITY_ENTERPRISE_192" : "WIFI_SECURITY_ENTERPRISE_EAP" : "WIFI_SECURITY_PERSONAL" : "WIFI_SECURITY_OPEN";
    }

    public static final void toFocusedToggleButtonStyle(AppCompatTextView appCompatTextView) {
        Intrinsics.checkNotNullParameter(appCompatTextView, "<this>");
        AppCompatTextView appCompatTextView2 = appCompatTextView;
        ViewGroup.LayoutParams layoutParams = appCompatTextView2.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = UiExtensionsKt.getDp(36);
            appCompatTextView2.setLayoutParams(layoutParams);
            appCompatTextView.setPadding(UiExtensionsKt.getDp(6), 0, UiExtensionsKt.getDp(6), 0);
            appCompatTextView.setTextSize(30.0f);
            appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.selector_focused_toggle_button, 0);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    public static final void toUnfocusedToggleButtonStyle(AppCompatTextView appCompatTextView) {
        Intrinsics.checkNotNullParameter(appCompatTextView, "<this>");
        AppCompatTextView appCompatTextView2 = appCompatTextView;
        ViewGroup.LayoutParams layoutParams = appCompatTextView2.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = UiExtensionsKt.getDp(29);
            appCompatTextView2.setLayoutParams(layoutParams);
            appCompatTextView2.setPadding(0, 0, 0, 0);
            appCompatTextView.setTextSize(24.0f);
            appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.selector_unfocused_toggle_button, 0);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    public static final void toFocusedRadioButtonStyle(AppCompatTextView appCompatTextView) {
        Intrinsics.checkNotNullParameter(appCompatTextView, "<this>");
        AppCompatTextView appCompatTextView2 = appCompatTextView;
        ViewGroup.LayoutParams layoutParams = appCompatTextView2.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = UiExtensionsKt.getDp(36);
            appCompatTextView2.setLayoutParams(layoutParams);
            appCompatTextView.setPadding(UiExtensionsKt.getDp(6), 0, UiExtensionsKt.getDp(6), 0);
            appCompatTextView.setTextSize(30.0f);
            appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.selector_focused_radio_button, 0);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    public static final void toUnfocusedRadioButtonStyle(AppCompatTextView appCompatTextView) {
        Intrinsics.checkNotNullParameter(appCompatTextView, "<this>");
        AppCompatTextView appCompatTextView2 = appCompatTextView;
        ViewGroup.LayoutParams layoutParams = appCompatTextView2.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = UiExtensionsKt.getDp(29);
            appCompatTextView2.setLayoutParams(layoutParams);
            appCompatTextView2.setPadding(0, 0, 0, 0);
            appCompatTextView.setTextSize(24.0f);
            appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.selector_unfocused_radio_button, 0);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    public static final /* synthetic */ <V extends ViewBinding> V toBinding(ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        Object invoke = ViewBinding.class.getMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE).invoke(null, LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        Intrinsics.reifiedOperationMarker(1, ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        return (V) invoke;
    }

    public static final List<View> getAllViews(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ArrayList arrayList = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                Intrinsics.checkNotNull(childAt);
                arrayList.add(childAt);
                arrayList.addAll(getAllViews(childAt));
            }
        } else {
            arrayList.add(view);
        }
        return arrayList;
    }

    public static final int getSecurityTypeFromWifiConfiguration(WifiConfiguration configuration) {
        Object m5698constructorimpl;
        Object m5698constructorimpl2;
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        int i = 8;
        if (!configuration.allowedKeyManagement.get(14)) {
            int i2 = 13;
            if (configuration.allowedKeyManagement.get(13)) {
                i = 7;
            } else if (configuration.allowedKeyManagement.get(10)) {
                i = 5;
            } else {
                if (!configuration.allowedKeyManagement.get(17)) {
                    i2 = 9;
                    if (configuration.allowedKeyManagement.get(9)) {
                        i = 6;
                    } else {
                        i = 4;
                        if (!configuration.allowedKeyManagement.get(8)) {
                            if (configuration.allowedKeyManagement.get(5)) {
                                try {
                                    Result.Companion companion = Result.INSTANCE;
                                    Field declaredField = WifiConfiguration.class.getDeclaredField("SECURITY_TYPE_OSEN");
                                    declaredField.setAccessible(true);
                                    Object obj = declaredField.get(configuration);
                                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
                                    m5698constructorimpl2 = Result.m5698constructorimpl(Integer.valueOf(((Integer) obj).intValue()));
                                } catch (Throwable th) {
                                    Result.Companion companion2 = Result.INSTANCE;
                                    m5698constructorimpl2 = Result.m5698constructorimpl(ResultKt.createFailure(th));
                                }
                                if (Result.m5701exceptionOrNullimpl(m5698constructorimpl2) != null) {
                                    m5698constructorimpl2 = 10;
                                }
                                i = ((Number) m5698constructorimpl2).intValue();
                            } else {
                                i = 2;
                                if (!configuration.allowedKeyManagement.get(4) && !configuration.allowedKeyManagement.get(11)) {
                                    if (configuration.allowedKeyManagement.get(2) || configuration.allowedKeyManagement.get(12)) {
                                        if (!isWpa3EnterpriseConfiguration(configuration)) {
                                            i = 3;
                                        }
                                    } else if (!configuration.allowedKeyManagement.get(1)) {
                                        i = (configuration.allowedKeyManagement.get(0) && hasWepKeys(configuration)) ? 1 : 0;
                                    }
                                }
                            }
                        }
                    }
                }
                i = i2;
            }
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            Method declaredMethod = WifiInfo.class.getDeclaredMethod("convertWifiConfigurationSecurityType", Integer.TYPE);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(WifiInfo.class, Integer.valueOf(i));
            Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.Int");
            m5698constructorimpl = Result.m5698constructorimpl(Integer.valueOf(((Integer) invoke).intValue()));
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m5701exceptionOrNullimpl(m5698constructorimpl) != null) {
            m5698constructorimpl = -1;
        }
        return ((Number) m5698constructorimpl).intValue();
    }

    private static final boolean isWpa3EnterpriseConfiguration(WifiConfiguration wifiConfiguration) {
        Object m5698constructorimpl;
        if (!wifiConfiguration.allowedKeyManagement.get(12) && !wifiConfiguration.allowedKeyManagement.get(2) && !wifiConfiguration.allowedKeyManagement.get(3)) {
            return false;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Field declaredField = wifiConfiguration.getClass().getDeclaredField("requirePmf");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(wifiConfiguration);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            m5698constructorimpl = Result.m5698constructorimpl(Boolean.valueOf(((Boolean) obj).booleanValue()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5701exceptionOrNullimpl(m5698constructorimpl) != null) {
            m5698constructorimpl = false;
        }
        if (!((Boolean) m5698constructorimpl).booleanValue() && wifiConfiguration.allowedProtocols.cardinality() <= 1 && wifiConfiguration.allowedProtocols.get(1) && !wifiConfiguration.allowedPairwiseCiphers.get(1)) {
            return !wifiConfiguration.allowedGroupCiphers.get(2);
        }
        return false;
    }

    private static final boolean hasWepKeys(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration.wepKeys == null) {
            return false;
        }
        int length = wifiConfiguration.wepKeys.length;
        for (int i = 0; i < length; i++) {
            if (wifiConfiguration.wepKeys[i] != null) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [kotlin.collections.IntIterator] */
    public static final int getSecurityTypeFromScanResult(ScanResult scanResult) {
        Intrinsics.checkNotNullParameter(scanResult, "scanResult");
        if (Build.VERSION.SDK_INT < 33) {
            return -1;
        }
        int[] securityTypes = scanResult.getSecurityTypes();
        Intrinsics.checkNotNullExpressionValue(securityTypes, "getSecurityTypes(...)");
        if (securityTypes.length == 0) {
            throw new NoSuchElementException();
        }
        int i = securityTypes[0];
        ?? it = new IntRange(1, ArraysKt.getLastIndex(securityTypes)).iterator();
        while (it.hasNext()) {
            int i2 = securityTypes[it.nextInt()];
            if (i < i2) {
                i = i2;
            }
        }
        return i;
    }

    public static final int convertSecurityTypesToDpmWifiSecurity(int i) {
        Object m5698constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Method declaredMethod = WifiInfo.class.getDeclaredMethod("convertSecurityTypeToDpmWifiSecurity", Integer.TYPE);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(WifiInfo.class, Integer.valueOf(i));
            Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.Int");
            m5698constructorimpl = Result.m5698constructorimpl(Integer.valueOf(((Integer) invoke).intValue()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5701exceptionOrNullimpl(m5698constructorimpl) != null) {
            m5698constructorimpl = Integer.valueOf(getDpmSecurityTypeUnknownConstant());
        }
        return ((Number) m5698constructorimpl).intValue();
    }

    public static final int getDpmSecurityTypeUnknownConstant() {
        Object m5698constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Field declaredField = WifiInfo.class.getDeclaredField("DPM_SECURITY_TYPE_UNKNOWN");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(WifiInfo.class);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
            m5698constructorimpl = Result.m5698constructorimpl(Integer.valueOf(((Integer) obj).intValue()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5701exceptionOrNullimpl(m5698constructorimpl) != null) {
            m5698constructorimpl = -1;
        }
        return ((Number) m5698constructorimpl).intValue();
    }
}
