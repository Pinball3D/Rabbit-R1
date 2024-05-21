package io.flutter.plugin.common;

import java.nio.ByteBuffer;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes3.dex */
public final class JSONMessageCodec implements MessageCodec<Object> {
    public static final JSONMessageCodec INSTANCE = new JSONMessageCodec();

    private JSONMessageCodec() {
    }

    @Override // io.flutter.plugin.common.MessageCodec
    public ByteBuffer encodeMessage(Object obj) {
        if (obj == null) {
            return null;
        }
        Object wrap = JSONUtil.wrap(obj);
        if (wrap instanceof String) {
            return StringCodec.INSTANCE.encodeMessage(JSONObject.quote((String) wrap));
        }
        return StringCodec.INSTANCE.encodeMessage(wrap.toString());
    }

    @Override // io.flutter.plugin.common.MessageCodec
    public Object decodeMessage(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        try {
            JSONTokener jSONTokener = new JSONTokener(StringCodec.INSTANCE.decodeMessage(byteBuffer));
            Object nextValue = jSONTokener.nextValue();
            if (jSONTokener.more()) {
                throw new IllegalArgumentException("Invalid JSON");
            }
            return nextValue;
        } catch (JSONException e) {
            throw new IllegalArgumentException("Invalid JSON", e);
        }
    }
}
