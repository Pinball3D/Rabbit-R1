package com.google.android.exoplayer2.text.ttml;

import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.util.Util;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class TtmlSubtitle implements Subtitle {
    private final long[] eventTimesUs;
    private final Map<String, TtmlStyle> globalStyles;
    private final Map<String, String> imageMap;
    private final Map<String, TtmlRegion> regionMap;
    private final TtmlNode root;

    Map<String, TtmlStyle> getGlobalStyles() {
        return this.globalStyles;
    }

    TtmlNode getRoot() {
        return this.root;
    }

    public TtmlSubtitle(TtmlNode ttmlNode, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2, Map<String, String> map3) {
        this.root = ttmlNode;
        this.regionMap = map2;
        this.imageMap = map3;
        this.globalStyles = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.eventTimesUs = ttmlNode.getEventTimesUs();
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int binarySearchCeil = Util.binarySearchCeil(this.eventTimesUs, j, false, false);
        if (binarySearchCeil < this.eventTimesUs.length) {
            return binarySearchCeil;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.eventTimesUs.length;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        return this.eventTimesUs[i];
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j) {
        return this.root.getCues(j, this.globalStyles, this.regionMap, this.imageMap);
    }
}
