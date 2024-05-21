package org.webrtc;

import java.util.Map;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
public class RTCStats {
    private final String id;
    private final Map<String, Object> members;
    private final long timestampUs;
    private final String type;

    public String getId() {
        return this.id;
    }

    public Map<String, Object> getMembers() {
        return this.members;
    }

    public double getTimestampUs() {
        return this.timestampUs;
    }

    public String getType() {
        return this.type;
    }

    public RTCStats(long j, String str, String str2, Map<String, Object> map) {
        this.timestampUs = j;
        this.type = str;
        this.id = str2;
        this.members = map;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{ timestampUs: ").append(this.timestampUs).append(", type: ").append(this.type).append(", id: ").append(this.id);
        for (Map.Entry<String, Object> entry : this.members.entrySet()) {
            sb.append(", ").append(entry.getKey()).append(": ");
            appendValue(sb, entry.getValue());
        }
        sb.append(" }");
        return sb.toString();
    }

    private static void appendValue(StringBuilder sb, Object obj) {
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            sb.append('[');
            for (int i = 0; i < objArr.length; i++) {
                if (i != 0) {
                    sb.append(", ");
                }
                appendValue(sb, objArr[i]);
            }
            sb.append(']');
            return;
        }
        if (obj instanceof String) {
            sb.append(Typography.quote).append(obj).append(Typography.quote);
        } else {
            sb.append(obj);
        }
    }

    static RTCStats create(long j, String str, String str2, Map map) {
        return new RTCStats(j, str, str2, map);
    }
}
