package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.google.zxing.client.android.Intents;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class ScanOptions {
    public static final String CODE_128 = "CODE_128";
    public static final String CODE_39 = "CODE_39";
    public static final String CODE_93 = "CODE_93";
    public static final String DATA_MATRIX = "DATA_MATRIX";
    public static final String EAN_13 = "EAN_13";
    public static final String EAN_8 = "EAN_8";
    public static final String ITF = "ITF";
    public static final String PDF_417 = "PDF_417";
    public static final String QR_CODE = "QR_CODE";
    public static final String RSS_14 = "RSS_14";
    public static final String RSS_EXPANDED = "RSS_EXPANDED";
    public static final String UPC_A = "UPC_A";
    public static final String UPC_E = "UPC_E";
    private Class<?> captureActivity;
    private Collection<String> desiredBarcodeFormats;
    private final Map<String, Object> moreExtras = new HashMap(3);
    public static final Collection<String> PRODUCT_CODE_TYPES = list("UPC_A", "UPC_E", "EAN_8", "EAN_13", "RSS_14");
    public static final Collection<String> ONE_D_CODE_TYPES = list("UPC_A", "UPC_E", "EAN_8", "EAN_13", "RSS_14", "CODE_39", "CODE_93", "CODE_128", "ITF", "RSS_14", "RSS_EXPANDED");
    public static final Collection<String> ALL_CODE_TYPES = null;

    public Map<String, ?> getMoreExtras() {
        return this.moreExtras;
    }

    public ScanOptions setCaptureActivity(Class<?> cls) {
        this.captureActivity = cls;
        return this;
    }

    public ScanOptions setDesiredBarcodeFormats(Collection<String> collection) {
        this.desiredBarcodeFormats = collection;
        return this;
    }

    protected Class<?> getDefaultCaptureActivity() {
        return CaptureActivity.class;
    }

    public Class<?> getCaptureActivity() {
        if (this.captureActivity == null) {
            this.captureActivity = getDefaultCaptureActivity();
        }
        return this.captureActivity;
    }

    public final ScanOptions addExtra(String str, Object obj) {
        this.moreExtras.put(str, obj);
        return this;
    }

    public final ScanOptions setPrompt(String str) {
        if (str != null) {
            addExtra(Intents.Scan.PROMPT_MESSAGE, str);
        }
        return this;
    }

    public ScanOptions setOrientationLocked(boolean z) {
        addExtra(Intents.Scan.ORIENTATION_LOCKED, Boolean.valueOf(z));
        return this;
    }

    public ScanOptions setCameraId(int i) {
        if (i >= 0) {
            addExtra(Intents.Scan.CAMERA_ID, Integer.valueOf(i));
        }
        return this;
    }

    public ScanOptions setTorchEnabled(boolean z) {
        addExtra(Intents.Scan.TORCH_ENABLED, Boolean.valueOf(z));
        return this;
    }

    public ScanOptions setBeepEnabled(boolean z) {
        addExtra(Intents.Scan.BEEP_ENABLED, Boolean.valueOf(z));
        return this;
    }

    public ScanOptions setBarcodeImageEnabled(boolean z) {
        addExtra(Intents.Scan.BARCODE_IMAGE_ENABLED, Boolean.valueOf(z));
        return this;
    }

    public ScanOptions setDesiredBarcodeFormats(String... strArr) {
        this.desiredBarcodeFormats = Arrays.asList(strArr);
        return this;
    }

    public ScanOptions setTimeout(long j) {
        addExtra(Intents.Scan.TIMEOUT, Long.valueOf(j));
        return this;
    }

    public Intent createScanIntent(Context context) {
        Intent intent = new Intent(context, getCaptureActivity());
        intent.setAction(Intents.Scan.ACTION);
        if (this.desiredBarcodeFormats != null) {
            StringBuilder sb = new StringBuilder();
            for (String str : this.desiredBarcodeFormats) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append(str);
            }
            intent.putExtra(Intents.Scan.FORMATS, sb.toString());
        }
        intent.addFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
        intent.addFlags(524288);
        attachMoreExtras(intent);
        return intent;
    }

    private static List<String> list(String... strArr) {
        return Collections.unmodifiableList(Arrays.asList(strArr));
    }

    private void attachMoreExtras(Intent intent) {
        for (Map.Entry<String, Object> entry : this.moreExtras.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Integer) {
                intent.putExtra(key, (Integer) value);
            } else if (value instanceof Long) {
                intent.putExtra(key, (Long) value);
            } else if (value instanceof Boolean) {
                intent.putExtra(key, (Boolean) value);
            } else if (value instanceof Double) {
                intent.putExtra(key, (Double) value);
            } else if (value instanceof Float) {
                intent.putExtra(key, (Float) value);
            } else if (value instanceof Bundle) {
                intent.putExtra(key, (Bundle) value);
            } else if (value instanceof int[]) {
                intent.putExtra(key, (int[]) value);
            } else if (value instanceof long[]) {
                intent.putExtra(key, (long[]) value);
            } else if (value instanceof boolean[]) {
                intent.putExtra(key, (boolean[]) value);
            } else if (value instanceof double[]) {
                intent.putExtra(key, (double[]) value);
            } else if (value instanceof float[]) {
                intent.putExtra(key, (float[]) value);
            } else if (value instanceof String[]) {
                intent.putExtra(key, (String[]) value);
            } else {
                intent.putExtra(key, value.toString());
            }
        }
    }
}
