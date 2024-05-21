package org.webrtc;

/* loaded from: classes3.dex */
public class StatsReport {
    public final String id;
    public final double timestamp;
    public final String type;
    public final Value[] values;

    /* loaded from: classes3.dex */
    public static class Value {
        public final String name;
        public final String value;

        public Value(String str, String str2) {
            this.name = str;
            this.value = str2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("[");
            sb.append(this.name).append(": ").append(this.value).append("]");
            return sb.toString();
        }
    }

    public StatsReport(String str, String str2, double d, Value[] valueArr) {
        this.id = str;
        this.type = str2;
        this.timestamp = d;
        this.values = valueArr;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("id: ");
        sb.append(this.id).append(", type: ").append(this.type).append(", timestamp: ").append(this.timestamp).append(", values: ");
        int i = 0;
        while (true) {
            Value[] valueArr = this.values;
            if (i < valueArr.length) {
                sb.append(valueArr[i].toString()).append(", ");
                i++;
            } else {
                return sb.toString();
            }
        }
    }
}
