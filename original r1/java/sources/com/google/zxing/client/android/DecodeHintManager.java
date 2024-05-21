package com.google.zxing.client.android;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.google.zxing.DecodeHintType;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class DecodeHintManager {
    private static final Pattern COMMA = Pattern.compile(",");
    private static final String TAG = "DecodeHintManager";

    private DecodeHintManager() {
    }

    private static Map<String, String> splitQuery(String str) {
        String str2;
        HashMap hashMap = new HashMap();
        int i = 0;
        while (true) {
            if (i >= str.length()) {
                break;
            }
            if (str.charAt(i) == '&') {
                i++;
            } else {
                int indexOf = str.indexOf(38, i);
                int indexOf2 = str.indexOf(61, i);
                String str3 = "";
                if (indexOf < 0) {
                    if (indexOf2 < 0) {
                        str2 = Uri.decode(str.substring(i).replace('+', ' '));
                    } else {
                        String decode = Uri.decode(str.substring(i, indexOf2).replace('+', ' '));
                        str3 = Uri.decode(str.substring(indexOf2 + 1).replace('+', ' '));
                        str2 = decode;
                    }
                    if (!hashMap.containsKey(str2)) {
                        hashMap.put(str2, str3);
                    }
                } else {
                    if (indexOf2 < 0 || indexOf2 > indexOf) {
                        String decode2 = Uri.decode(str.substring(i, indexOf).replace('+', ' '));
                        if (!hashMap.containsKey(decode2)) {
                            hashMap.put(decode2, "");
                        }
                    } else {
                        String decode3 = Uri.decode(str.substring(i, indexOf2).replace('+', ' '));
                        String decode4 = Uri.decode(str.substring(indexOf2 + 1, indexOf).replace('+', ' '));
                        if (!hashMap.containsKey(decode3)) {
                            hashMap.put(decode3, decode4);
                        }
                    }
                    i = indexOf + 1;
                }
            }
        }
        return hashMap;
    }

    static Map<DecodeHintType, ?> parseDecodeHints(Uri uri) {
        String str;
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery == null || encodedQuery.isEmpty()) {
            return null;
        }
        Map<String, String> splitQuery = splitQuery(encodedQuery);
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        for (DecodeHintType decodeHintType : DecodeHintType.values()) {
            if (decodeHintType != DecodeHintType.CHARACTER_SET && decodeHintType != DecodeHintType.NEED_RESULT_POINT_CALLBACK && decodeHintType != DecodeHintType.POSSIBLE_FORMATS && (str = splitQuery.get(decodeHintType.name())) != null) {
                if (decodeHintType.getValueType().equals(Object.class)) {
                    enumMap.put((EnumMap) decodeHintType, (DecodeHintType) str);
                } else if (decodeHintType.getValueType().equals(Void.class)) {
                    enumMap.put((EnumMap) decodeHintType, (DecodeHintType) Boolean.TRUE);
                } else if (decodeHintType.getValueType().equals(String.class)) {
                    enumMap.put((EnumMap) decodeHintType, (DecodeHintType) str);
                } else if (decodeHintType.getValueType().equals(Boolean.class)) {
                    if (str.isEmpty()) {
                        enumMap.put((EnumMap) decodeHintType, (DecodeHintType) Boolean.TRUE);
                    } else if ("0".equals(str) || "false".equalsIgnoreCase(str) || "no".equalsIgnoreCase(str)) {
                        enumMap.put((EnumMap) decodeHintType, (DecodeHintType) Boolean.FALSE);
                    } else {
                        enumMap.put((EnumMap) decodeHintType, (DecodeHintType) Boolean.TRUE);
                    }
                } else if (decodeHintType.getValueType().equals(int[].class)) {
                    if (!str.isEmpty() && str.charAt(str.length() - 1) == ',') {
                        str = str.substring(0, str.length() - 1);
                    }
                    String[] split = COMMA.split(str);
                    int[] iArr = new int[split.length];
                    for (int i = 0; i < split.length; i++) {
                        try {
                            iArr[i] = Integer.parseInt(split[i]);
                        } catch (NumberFormatException unused) {
                            Log.w(TAG, "Skipping array of integers hint " + decodeHintType + " due to invalid numeric value: '" + split[i] + '\'');
                            iArr = null;
                        }
                    }
                    if (iArr != null) {
                        enumMap.put((EnumMap) decodeHintType, (DecodeHintType) iArr);
                    }
                } else {
                    Log.w(TAG, "Unsupported hint type '" + decodeHintType + "' of type " + decodeHintType.getValueType());
                }
            }
        }
        Log.i(TAG, "Hints from the URI: " + enumMap);
        return enumMap;
    }

    public static Map<DecodeHintType, Object> parseDecodeHints(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null || extras.isEmpty()) {
            return null;
        }
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        for (DecodeHintType decodeHintType : DecodeHintType.values()) {
            if (decodeHintType != DecodeHintType.CHARACTER_SET && decodeHintType != DecodeHintType.NEED_RESULT_POINT_CALLBACK && decodeHintType != DecodeHintType.POSSIBLE_FORMATS) {
                String name = decodeHintType.name();
                if (extras.containsKey(name)) {
                    if (decodeHintType.getValueType().equals(Void.class)) {
                        enumMap.put((EnumMap) decodeHintType, (DecodeHintType) Boolean.TRUE);
                    } else {
                        Object obj = extras.get(name);
                        if (decodeHintType.getValueType().isInstance(obj)) {
                            enumMap.put((EnumMap) decodeHintType, (DecodeHintType) obj);
                        } else {
                            Log.w(TAG, "Ignoring hint " + decodeHintType + " because it is not assignable from " + obj);
                        }
                    }
                }
            }
        }
        Log.i(TAG, "Hints from the Intent: " + enumMap);
        return enumMap;
    }
}
