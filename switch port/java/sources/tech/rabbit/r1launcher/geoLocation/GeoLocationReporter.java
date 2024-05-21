package tech.rabbit.r1launcher.geoLocation;

import android.location.Location;
import io.sentry.clientreport.DiscardedEvent;
import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import tech.rabbit.r1launcher.wss.WebSocketManager;

/* compiled from: GeoLocationManager.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;", "", "retryCount", "", "(I)V", MetricSummary.JsonKeys.COUNT, "isFinished", "", "()Z", "setFinished", "(Z)V", "onResult", "", "statusCode", DiscardedEvent.JsonKeys.REASON, "", "base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class GeoLocationReporter {
    private int count;
    private boolean isFinished;
    private final int retryCount;

    /* renamed from: isFinished, reason: from getter */
    public final boolean getIsFinished() {
        return this.isFinished;
    }

    public final void setFinished(boolean z) {
        this.isFinished = z;
    }

    public GeoLocationReporter(int i) {
        this.retryCount = i;
    }

    public final void onResult(int statusCode, String reason) {
        this.count++;
        if (statusCode == GPSStatusCode.SUCCESS.getCode()) {
            this.isFinished = true;
            WebSocketManager webSocketManager = WebSocketManager.INSTANCE;
            StringBuilder sb = new StringBuilder("{\"kernel\": {\"gps\": {\"location\": { \"latitude\":");
            Location lastLocation = GeoLocationManager.INSTANCE.getLastLocation();
            StringBuilder append = sb.append(lastLocation != null ? Double.valueOf(lastLocation.getLatitude()) : null).append(", \"longitude\":");
            Location lastLocation2 = GeoLocationManager.INSTANCE.getLastLocation();
            webSocketManager.send(append.append(lastLocation2 != null ? Double.valueOf(lastLocation2.getLongitude()) : null).append("}}}}").toString());
            return;
        }
        if (statusCode != GPSStatusCode.FAIL.getCode() || this.count < this.retryCount) {
            return;
        }
        this.isFinished = true;
        if (reason == null) {
            reason = "time out";
        }
        WebSocketManager.INSTANCE.send("{\"kernel\": { \"gps\": {\"error\": \"" + reason + "\"}}}");
    }
}
