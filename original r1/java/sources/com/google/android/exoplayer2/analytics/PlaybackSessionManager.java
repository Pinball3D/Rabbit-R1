package com.google.android.exoplayer2.analytics;

import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.source.MediaSource;

/* loaded from: classes2.dex */
public interface PlaybackSessionManager {

    /* loaded from: classes2.dex */
    public interface Listener {
        void onAdPlaybackStarted(AnalyticsListener.EventTime eventTime, String str, String str2);

        void onSessionActive(AnalyticsListener.EventTime eventTime, String str);

        void onSessionCreated(AnalyticsListener.EventTime eventTime, String str);

        void onSessionFinished(AnalyticsListener.EventTime eventTime, String str, boolean z);
    }

    boolean belongsToSession(AnalyticsListener.EventTime eventTime, String str);

    void finishAllSessions(AnalyticsListener.EventTime eventTime);

    String getActiveSessionId();

    String getSessionForMediaPeriodId(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId);

    void setListener(Listener listener);

    void updateSessions(AnalyticsListener.EventTime eventTime);

    void updateSessionsWithDiscontinuity(AnalyticsListener.EventTime eventTime, int i);

    void updateSessionsWithTimelineChange(AnalyticsListener.EventTime eventTime);
}
