package com.google.android.exoplayer2.source.ads;

import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaPeriodId;
import com.google.android.exoplayer2.source.ads.AdPlaybackState;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes2.dex */
public final class ServerSideAdInsertionUtil {
    private ServerSideAdInsertionUtil() {
    }

    public static AdPlaybackState addAdGroupToAdPlaybackState(AdPlaybackState adPlaybackState, long j, long j2, long... jArr) {
        long mediaPeriodPositionUsForContent = getMediaPeriodPositionUsForContent(j, -1, adPlaybackState);
        int i = adPlaybackState.removedAdGroupCount;
        while (i < adPlaybackState.adGroupCount && adPlaybackState.getAdGroup(i).timeUs != Long.MIN_VALUE && adPlaybackState.getAdGroup(i).timeUs <= mediaPeriodPositionUsForContent) {
            i++;
        }
        AdPlaybackState withContentResumeOffsetUs = adPlaybackState.withNewAdGroup(i, mediaPeriodPositionUsForContent).withIsServerSideInserted(i, true).withAdCount(i, jArr.length).withAdDurationsUs(i, jArr).withContentResumeOffsetUs(i, j2);
        AdPlaybackState adPlaybackState2 = withContentResumeOffsetUs;
        for (int i2 = 0; i2 < jArr.length && jArr[i2] == 0; i2++) {
            adPlaybackState2 = adPlaybackState2.withSkippedAd(i, i2);
        }
        return correctFollowingAdGroupTimes(adPlaybackState2, i, Util.sum(jArr), j2);
    }

    public static long getStreamPositionUs(Player player, AdPlaybackState adPlaybackState) {
        Timeline currentTimeline = player.getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return -9223372036854775807L;
        }
        Timeline.Period period = currentTimeline.getPeriod(player.getCurrentPeriodIndex(), new Timeline.Period());
        if (!Util.areEqual(period.getAdsId(), adPlaybackState.adsId)) {
            return -9223372036854775807L;
        }
        if (player.isPlayingAd()) {
            return getStreamPositionUsForAd(Util.msToUs(player.getCurrentPosition()), player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup(), adPlaybackState);
        }
        return getStreamPositionUsForContent(Util.msToUs(player.getCurrentPosition()) - period.getPositionInWindowUs(), -1, adPlaybackState);
    }

    public static long getStreamPositionUs(long j, MediaPeriodId mediaPeriodId, AdPlaybackState adPlaybackState) {
        if (mediaPeriodId.isAd()) {
            return getStreamPositionUsForAd(j, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, adPlaybackState);
        }
        return getStreamPositionUsForContent(j, mediaPeriodId.nextAdGroupIndex, adPlaybackState);
    }

    public static long getMediaPeriodPositionUs(long j, MediaPeriodId mediaPeriodId, AdPlaybackState adPlaybackState) {
        if (mediaPeriodId.isAd()) {
            return getMediaPeriodPositionUsForAd(j, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, adPlaybackState);
        }
        return getMediaPeriodPositionUsForContent(j, mediaPeriodId.nextAdGroupIndex, adPlaybackState);
    }

    public static long getStreamPositionUsForAd(long j, int i, int i2, AdPlaybackState adPlaybackState) {
        int i3;
        AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i);
        long j2 = j + adGroup.timeUs;
        int i4 = adPlaybackState.removedAdGroupCount;
        while (true) {
            i3 = 0;
            if (i4 >= i) {
                break;
            }
            AdPlaybackState.AdGroup adGroup2 = adPlaybackState.getAdGroup(i4);
            while (i3 < getAdCountInGroup(adPlaybackState, i4)) {
                j2 += adGroup2.durationsUs[i3];
                i3++;
            }
            j2 -= adGroup2.contentResumeOffsetUs;
            i4++;
        }
        if (i2 < getAdCountInGroup(adPlaybackState, i)) {
            while (i3 < i2) {
                j2 += adGroup.durationsUs[i3];
                i3++;
            }
        }
        return j2;
    }

    public static long getMediaPeriodPositionUsForAd(long j, int i, int i2, AdPlaybackState adPlaybackState) {
        int i3;
        AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i);
        long j2 = j - adGroup.timeUs;
        int i4 = adPlaybackState.removedAdGroupCount;
        while (true) {
            i3 = 0;
            if (i4 >= i) {
                break;
            }
            AdPlaybackState.AdGroup adGroup2 = adPlaybackState.getAdGroup(i4);
            while (i3 < getAdCountInGroup(adPlaybackState, i4)) {
                j2 -= adGroup2.durationsUs[i3];
                i3++;
            }
            j2 += adGroup2.contentResumeOffsetUs;
            i4++;
        }
        if (i2 < getAdCountInGroup(adPlaybackState, i)) {
            while (i3 < i2) {
                j2 -= adGroup.durationsUs[i3];
                i3++;
            }
        }
        return j2;
    }

    public static long getStreamPositionUsForContent(long j, int i, AdPlaybackState adPlaybackState) {
        if (i == -1) {
            i = adPlaybackState.adGroupCount;
        }
        long j2 = 0;
        for (int i2 = adPlaybackState.removedAdGroupCount; i2 < i; i2++) {
            AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i2);
            if (adGroup.timeUs == Long.MIN_VALUE || adGroup.timeUs > j) {
                break;
            }
            long j3 = adGroup.timeUs + j2;
            for (int i3 = 0; i3 < getAdCountInGroup(adPlaybackState, i2); i3++) {
                j2 += adGroup.durationsUs[i3];
            }
            j2 -= adGroup.contentResumeOffsetUs;
            if (adGroup.timeUs + adGroup.contentResumeOffsetUs > j) {
                return Math.max(j3, j + j2);
            }
        }
        return j + j2;
    }

    public static long getMediaPeriodPositionUsForContent(long j, int i, AdPlaybackState adPlaybackState) {
        if (i == -1) {
            i = adPlaybackState.adGroupCount;
        }
        long j2 = 0;
        for (int i2 = adPlaybackState.removedAdGroupCount; i2 < i; i2++) {
            AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i2);
            if (adGroup.timeUs == Long.MIN_VALUE || adGroup.timeUs > j - j2) {
                break;
            }
            for (int i3 = 0; i3 < getAdCountInGroup(adPlaybackState, i2); i3++) {
                j2 += adGroup.durationsUs[i3];
            }
            j2 -= adGroup.contentResumeOffsetUs;
            long j3 = j - j2;
            if (adGroup.timeUs + adGroup.contentResumeOffsetUs > j3) {
                return Math.max(adGroup.timeUs, j3);
            }
        }
        return j - j2;
    }

    public static int getAdCountInGroup(AdPlaybackState adPlaybackState, int i) {
        AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i);
        if (adGroup.count == -1) {
            return 0;
        }
        return adGroup.count;
    }

    private static AdPlaybackState correctFollowingAdGroupTimes(AdPlaybackState adPlaybackState, int i, long j, long j2) {
        long j3 = (-j) + j2;
        while (true) {
            i++;
            if (i >= adPlaybackState.adGroupCount) {
                return adPlaybackState;
            }
            long j4 = adPlaybackState.getAdGroup(i).timeUs;
            if (j4 != Long.MIN_VALUE) {
                adPlaybackState = adPlaybackState.withAdGroupTimeUs(i, j4 + j3);
            }
        }
    }
}
