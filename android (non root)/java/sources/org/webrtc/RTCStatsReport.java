package org.webrtc;

import java.util.Map;

/* loaded from: classes3.dex */
public class RTCStatsReport {
    private final Map<String, RTCStats> stats;
    private final long timestampUs;

    public Map<String, RTCStats> getStatsMap() {
        return this.stats;
    }

    public double getTimestampUs() {
        return this.timestampUs;
    }

    public RTCStatsReport(long j, Map<String, RTCStats> map) {
        this.timestampUs = j;
        this.stats = map;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{ timestampUs: ");
        sb.append(this.timestampUs).append(", stats: [\n");
        boolean z = true;
        for (RTCStats rTCStats : this.stats.values()) {
            if (!z) {
                sb.append(",\n");
            }
            sb.append(rTCStats);
            z = false;
        }
        sb.append(" ] }");
        return sb.toString();
    }

    private static RTCStatsReport create(long j, Map map) {
        return new RTCStatsReport(j, map);
    }
}
