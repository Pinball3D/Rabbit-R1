package io.flutter.plugin.common;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class JSONUtil {
    private JSONUtil() {
    }

    public static Object unwrap(Object obj) {
        if (JSONObject.NULL.equals(obj) || obj == null) {
            return null;
        }
        if ((obj instanceof Boolean) || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Double) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof String)) {
            return obj;
        }
        if (obj instanceof JSONArray) {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = (JSONArray) obj;
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(unwrap(jSONArray.get(i)));
            }
            return arrayList;
        }
        if (obj instanceof JSONObject) {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = (JSONObject) obj;
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, unwrap(jSONObject.get(next)));
            }
            return hashMap;
        }
        return null;
    }

    public static Object wrap(Object obj) {
        if (obj == null) {
            return JSONObject.NULL;
        }
        if ((obj instanceof JSONArray) || (obj instanceof JSONObject) || obj.equals(JSONObject.NULL)) {
            return obj;
        }
        if (obj instanceof Collection) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                jSONArray.put(wrap(it.next()));
            }
            return jSONArray;
        }
        if (obj.getClass().isArray()) {
            JSONArray jSONArray2 = new JSONArray();
            int length = Array.getLength(obj);
            for (int i = 0; i < length; i++) {
                jSONArray2.put(wrap(Array.get(obj, i)));
            }
            return jSONArray2;
        }
        if (obj instanceof Map) {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                jSONObject.put((String) entry.getKey(), wrap(entry.getValue()));
            }
            return jSONObject;
        }
        if (!(obj instanceof Boolean) && !(obj instanceof Byte) && !(obj instanceof Character) && !(obj instanceof Double) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Short) && !(obj instanceof String)) {
            if (obj.getClass().getPackage().getName().startsWith("java.")) {
                return obj.toString();
            }
            return null;
        }
        return obj;
    }
}
