package androidx.media3.exoplayer.drm;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class ClearKeyUtil {
    private static final String TAG = "ClearKeyUtil";

    private ClearKeyUtil() {
    }

    public static byte[] adjustRequestData(byte[] bArr) {
        return Util.SDK_INT >= 27 ? bArr : Util.getUtf8Bytes(base64ToBase64Url(Util.fromUtf8Bytes(bArr)));
    }

    public static byte[] adjustResponseData(byte[] bArr) {
        if (Util.SDK_INT >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(Util.fromUtf8Bytes(bArr));
            StringBuilder sb = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i = 0; i < jSONArray.length(); i++) {
                if (i != 0) {
                    sb.append(",");
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                sb.append("{\"k\":\"");
                sb.append(base64UrlToBase64(jSONObject2.getString("k")));
                sb.append("\",\"kid\":\"");
                sb.append(base64UrlToBase64(jSONObject2.getString("kid")));
                sb.append("\",\"kty\":\"");
                sb.append(jSONObject2.getString("kty"));
                sb.append("\"}");
            }
            sb.append("]}");
            return Util.getUtf8Bytes(sb.toString());
        } catch (JSONException e) {
            Log.e(TAG, "Failed to adjust response data: " + Util.fromUtf8Bytes(bArr), e);
            return bArr;
        }
    }

    private static String base64ToBase64Url(String str) {
        return str.replace('+', '-').replace('/', '_');
    }

    private static String base64UrlToBase64(String str) {
        return str.replace('-', '+').replace('_', '/');
    }
}
