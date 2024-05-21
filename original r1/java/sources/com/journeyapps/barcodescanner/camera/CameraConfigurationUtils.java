package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import com.journeyapps.barcodescanner.camera.CameraSettings;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kotlinx.coroutines.DebugKt;
import okhttp3.HttpUrl;

/* loaded from: classes3.dex */
public final class CameraConfigurationUtils {
    private static final int AREA_PER_1000 = 400;
    private static final float MAX_EXPOSURE_COMPENSATION = 1.5f;
    private static final int MAX_FPS = 20;
    private static final float MIN_EXPOSURE_COMPENSATION = 0.0f;
    private static final int MIN_FPS = 10;
    private static final Pattern SEMICOLON = Pattern.compile(";");
    private static final String TAG = "CameraConfiguration";

    private CameraConfigurationUtils() {
    }

    public static void setFocus(Camera.Parameters parameters, CameraSettings.FocusMode focusMode, boolean z) {
        String findSettableValue;
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        if (z || focusMode == CameraSettings.FocusMode.AUTO) {
            findSettableValue = findSettableValue("focus mode", supportedFocusModes, "auto");
        } else if (focusMode == CameraSettings.FocusMode.CONTINUOUS) {
            findSettableValue = findSettableValue("focus mode", supportedFocusModes, "continuous-picture", "continuous-video", "auto");
        } else if (focusMode == CameraSettings.FocusMode.INFINITY) {
            findSettableValue = findSettableValue("focus mode", supportedFocusModes, "infinity");
        } else {
            findSettableValue = focusMode == CameraSettings.FocusMode.MACRO ? findSettableValue("focus mode", supportedFocusModes, "macro") : null;
        }
        if (!z && findSettableValue == null) {
            findSettableValue = findSettableValue("focus mode", supportedFocusModes, "macro", "edof");
        }
        if (findSettableValue != null) {
            if (findSettableValue.equals(parameters.getFocusMode())) {
                Log.i(TAG, "Focus mode already set to " + findSettableValue);
            } else {
                parameters.setFocusMode(findSettableValue);
            }
        }
    }

    public static void setTorch(Camera.Parameters parameters, boolean z) {
        String findSettableValue;
        List<String> supportedFlashModes = parameters.getSupportedFlashModes();
        if (z) {
            findSettableValue = findSettableValue("flash mode", supportedFlashModes, "torch", DebugKt.DEBUG_PROPERTY_VALUE_ON);
        } else {
            findSettableValue = findSettableValue("flash mode", supportedFlashModes, DebugKt.DEBUG_PROPERTY_VALUE_OFF);
        }
        if (findSettableValue != null) {
            if (findSettableValue.equals(parameters.getFlashMode())) {
                Log.i(TAG, "Flash mode already set to " + findSettableValue);
            } else {
                Log.i(TAG, "Setting flash mode to " + findSettableValue);
                parameters.setFlashMode(findSettableValue);
            }
        }
    }

    public static void setBestExposure(Camera.Parameters parameters, boolean z) {
        int minExposureCompensation = parameters.getMinExposureCompensation();
        int maxExposureCompensation = parameters.getMaxExposureCompensation();
        float exposureCompensationStep = parameters.getExposureCompensationStep();
        if (minExposureCompensation != 0 || maxExposureCompensation != 0) {
            if (exposureCompensationStep > 0.0f) {
                int round = Math.round((z ? 0.0f : MAX_EXPOSURE_COMPENSATION) / exposureCompensationStep);
                float f = exposureCompensationStep * round;
                int max = Math.max(Math.min(round, maxExposureCompensation), minExposureCompensation);
                if (parameters.getExposureCompensation() == max) {
                    Log.i(TAG, "Exposure compensation already set to " + max + " / " + f);
                    return;
                } else {
                    Log.i(TAG, "Setting exposure compensation to " + max + " / " + f);
                    parameters.setExposureCompensation(max);
                    return;
                }
            }
        }
        Log.i(TAG, "Camera does not support exposure compensation");
    }

    public static void setBestPreviewFPS(Camera.Parameters parameters) {
        setBestPreviewFPS(parameters, 10, 20);
    }

    public static void setBestPreviewFPS(Camera.Parameters parameters, int i, int i2) {
        int[] iArr;
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        Log.i(TAG, "Supported FPS ranges: " + toString((Collection<int[]>) supportedPreviewFpsRange));
        if (supportedPreviewFpsRange == null || supportedPreviewFpsRange.isEmpty()) {
            return;
        }
        Iterator<int[]> it = supportedPreviewFpsRange.iterator();
        while (true) {
            if (!it.hasNext()) {
                iArr = null;
                break;
            }
            iArr = it.next();
            int i3 = iArr[0];
            int i4 = iArr[1];
            if (i3 >= i * 1000 && i4 <= i2 * 1000) {
                break;
            }
        }
        if (iArr == null) {
            Log.i(TAG, "No suitable FPS range?");
            return;
        }
        int[] iArr2 = new int[2];
        parameters.getPreviewFpsRange(iArr2);
        if (Arrays.equals(iArr2, iArr)) {
            Log.i(TAG, "FPS range already set to " + Arrays.toString(iArr));
        } else {
            Log.i(TAG, "Setting FPS range to " + Arrays.toString(iArr));
            parameters.setPreviewFpsRange(iArr[0], iArr[1]);
        }
    }

    public static void setFocusArea(Camera.Parameters parameters) {
        if (parameters.getMaxNumFocusAreas() > 0) {
            Log.i(TAG, "Old focus areas: " + toString((Iterable<Camera.Area>) parameters.getFocusAreas()));
            List<Camera.Area> buildMiddleArea = buildMiddleArea(AREA_PER_1000);
            Log.i(TAG, "Setting focus area to : " + toString((Iterable<Camera.Area>) buildMiddleArea));
            parameters.setFocusAreas(buildMiddleArea);
            return;
        }
        Log.i(TAG, "Device does not support focus areas");
    }

    public static void setMetering(Camera.Parameters parameters) {
        if (parameters.getMaxNumMeteringAreas() > 0) {
            Log.i(TAG, "Old metering areas: " + parameters.getMeteringAreas());
            List<Camera.Area> buildMiddleArea = buildMiddleArea(AREA_PER_1000);
            Log.i(TAG, "Setting metering area to : " + toString((Iterable<Camera.Area>) buildMiddleArea));
            parameters.setMeteringAreas(buildMiddleArea);
            return;
        }
        Log.i(TAG, "Device does not support metering areas");
    }

    private static List<Camera.Area> buildMiddleArea(int i) {
        int i2 = -i;
        return Collections.singletonList(new Camera.Area(new Rect(i2, i2, i, i), 1));
    }

    public static void setVideoStabilization(Camera.Parameters parameters) {
        if (parameters.isVideoStabilizationSupported()) {
            if (parameters.getVideoStabilization()) {
                Log.i(TAG, "Video stabilization already enabled");
                return;
            } else {
                Log.i(TAG, "Enabling video stabilization...");
                parameters.setVideoStabilization(true);
                return;
            }
        }
        Log.i(TAG, "This device does not support video stabilization");
    }

    public static void setBarcodeSceneMode(Camera.Parameters parameters) {
        if ("barcode".equals(parameters.getSceneMode())) {
            Log.i(TAG, "Barcode scene mode already set");
            return;
        }
        String findSettableValue = findSettableValue("scene mode", parameters.getSupportedSceneModes(), "barcode");
        if (findSettableValue != null) {
            parameters.setSceneMode(findSettableValue);
        }
    }

    public static void setZoom(Camera.Parameters parameters, double d) {
        if (parameters.isZoomSupported()) {
            Integer indexOfClosestZoom = indexOfClosestZoom(parameters, d);
            if (indexOfClosestZoom == null) {
                return;
            }
            if (parameters.getZoom() == indexOfClosestZoom.intValue()) {
                Log.i(TAG, "Zoom is already set to " + indexOfClosestZoom);
                return;
            } else {
                Log.i(TAG, "Setting zoom to " + indexOfClosestZoom);
                parameters.setZoom(indexOfClosestZoom.intValue());
                return;
            }
        }
        Log.i(TAG, "Zoom is not supported");
    }

    private static Integer indexOfClosestZoom(Camera.Parameters parameters, double d) {
        List<Integer> zoomRatios = parameters.getZoomRatios();
        Log.i(TAG, "Zoom ratios: " + zoomRatios);
        int maxZoom = parameters.getMaxZoom();
        if (zoomRatios == null || zoomRatios.isEmpty() || zoomRatios.size() != maxZoom + 1) {
            Log.w(TAG, "Invalid zoom ratios!");
            return null;
        }
        double d2 = d * 100.0d;
        double d3 = Double.POSITIVE_INFINITY;
        int i = 0;
        for (int i2 = 0; i2 < zoomRatios.size(); i2++) {
            double abs = Math.abs(zoomRatios.get(i2).intValue() - d2);
            if (abs < d3) {
                i = i2;
                d3 = abs;
            }
        }
        Log.i(TAG, "Chose zoom ratio of " + (zoomRatios.get(i).intValue() / 100.0d));
        return Integer.valueOf(i);
    }

    public static void setInvertColor(Camera.Parameters parameters) {
        if ("negative".equals(parameters.getColorEffect())) {
            Log.i(TAG, "Negative effect already set");
            return;
        }
        String findSettableValue = findSettableValue("color effect", parameters.getSupportedColorEffects(), "negative");
        if (findSettableValue != null) {
            parameters.setColorEffect(findSettableValue);
        }
    }

    private static String findSettableValue(String str, Collection<String> collection, String... strArr) {
        Log.i(TAG, "Requesting " + str + " value from among: " + Arrays.toString(strArr));
        Log.i(TAG, "Supported " + str + " values: " + collection);
        if (collection != null) {
            for (String str2 : strArr) {
                if (collection.contains(str2)) {
                    Log.i(TAG, "Can set " + str + " to: " + str2);
                    return str2;
                }
            }
        }
        Log.i(TAG, "No supported values match");
        return null;
    }

    private static String toString(Collection<int[]> collection) {
        if (collection == null || collection.isEmpty()) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder("[");
        Iterator<int[]> it = collection.iterator();
        while (it.hasNext()) {
            sb.append(Arrays.toString(it.next()));
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(']');
        return sb.toString();
    }

    private static String toString(Iterable<Camera.Area> iterable) {
        if (iterable == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Camera.Area area : iterable) {
            sb.append(area.rect).append(':').append(area.weight).append(' ');
        }
        return sb.toString();
    }

    public static String collectStats(Camera.Parameters parameters) {
        return collectStats(parameters.flatten());
    }

    public static String collectStats(CharSequence charSequence) {
        StringBuilder sb = new StringBuilder(1000);
        sb.append("BOARD=").append(Build.BOARD).append("\nBRAND=");
        sb.append(Build.BRAND).append("\nCPU_ABI=");
        sb.append(Build.CPU_ABI).append("\nDEVICE=");
        sb.append(Build.DEVICE).append("\nDISPLAY=");
        sb.append(Build.DISPLAY).append("\nFINGERPRINT=");
        sb.append(Build.FINGERPRINT).append("\nHOST=");
        sb.append(Build.HOST).append("\nID=");
        sb.append(Build.ID).append("\nMANUFACTURER=");
        sb.append(Build.MANUFACTURER).append("\nMODEL=");
        sb.append(Build.MODEL).append("\nPRODUCT=");
        sb.append(Build.PRODUCT).append("\nTAGS=");
        sb.append(Build.TAGS).append("\nTIME=");
        sb.append(Build.TIME).append("\nTYPE=");
        sb.append(Build.TYPE).append("\nUSER=");
        sb.append(Build.USER).append("\nVERSION.CODENAME=");
        sb.append(Build.VERSION.CODENAME).append("\nVERSION.INCREMENTAL=");
        sb.append(Build.VERSION.INCREMENTAL).append("\nVERSION.RELEASE=");
        sb.append(Build.VERSION.RELEASE).append("\nVERSION.SDK_INT=");
        sb.append(Build.VERSION.SDK_INT).append('\n');
        if (charSequence != null) {
            String[] split = SEMICOLON.split(charSequence);
            Arrays.sort(split);
            for (String str : split) {
                sb.append(str).append('\n');
            }
        }
        return sb.toString();
    }
}
