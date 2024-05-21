package com.google.android.exoplayer2.trackselection;

import android.util.Pair;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.RendererConfiguration;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;

/* loaded from: classes2.dex */
public abstract class MappingTrackSelector extends TrackSelector {
    private MappedTrackInfo currentMappedTrackInfo;

    public final MappedTrackInfo getCurrentMappedTrackInfo() {
        return this.currentMappedTrackInfo;
    }

    protected abstract Pair<RendererConfiguration[], ExoTrackSelection[]> selectTracks(MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) throws ExoPlaybackException;

    /* loaded from: classes2.dex */
    public static final class MappedTrackInfo {
        public static final int RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS = 2;
        public static final int RENDERER_SUPPORT_NO_TRACKS = 0;
        public static final int RENDERER_SUPPORT_PLAYABLE_TRACKS = 3;
        public static final int RENDERER_SUPPORT_UNSUPPORTED_TRACKS = 1;
        private final int rendererCount;
        private final int[][][] rendererFormatSupports;
        private final int[] rendererMixedMimeTypeAdaptiveSupports;
        private final String[] rendererNames;
        private final TrackGroupArray[] rendererTrackGroups;
        private final int[] rendererTrackTypes;
        private final TrackGroupArray unmappedTrackGroups;

        @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes2.dex */
        public @interface RendererSupport {
        }

        public int getRendererCount() {
            return this.rendererCount;
        }

        public TrackGroupArray getUnmappedTrackGroups() {
            return this.unmappedTrackGroups;
        }

        MappedTrackInfo(String[] strArr, int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.rendererNames = strArr;
            this.rendererTrackTypes = iArr;
            this.rendererTrackGroups = trackGroupArrayArr;
            this.rendererFormatSupports = iArr3;
            this.rendererMixedMimeTypeAdaptiveSupports = iArr2;
            this.unmappedTrackGroups = trackGroupArray;
            this.rendererCount = iArr.length;
        }

        public String getRendererName(int i) {
            return this.rendererNames[i];
        }

        public int getRendererType(int i) {
            return this.rendererTrackTypes[i];
        }

        public TrackGroupArray getTrackGroups(int i) {
            return this.rendererTrackGroups[i];
        }

        public int getRendererSupport(int i) {
            int i2 = 0;
            for (int[] iArr : this.rendererFormatSupports[i]) {
                for (int i3 : iArr) {
                    int formatSupport = RendererCapabilities.getFormatSupport(i3);
                    int i4 = 1;
                    if (formatSupport != 0 && formatSupport != 1 && formatSupport != 2) {
                        if (formatSupport != 3) {
                            if (formatSupport == 4) {
                                return 3;
                            }
                            throw new IllegalStateException();
                        }
                        i4 = 2;
                    }
                    i2 = Math.max(i2, i4);
                }
            }
            return i2;
        }

        public int getTypeSupport(int i) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.rendererCount; i3++) {
                if (this.rendererTrackTypes[i3] == i) {
                    i2 = Math.max(i2, getRendererSupport(i3));
                }
            }
            return i2;
        }

        public int getCapabilities(int i, int i2, int i3) {
            return this.rendererFormatSupports[i][i2][i3];
        }

        public int getTrackSupport(int i, int i2, int i3) {
            return RendererCapabilities.getFormatSupport(getCapabilities(i, i2, i3));
        }

        public int getAdaptiveSupport(int i, int i2, boolean z) {
            int i3 = this.rendererTrackGroups[i].get(i2).length;
            int[] iArr = new int[i3];
            int i4 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                int trackSupport = getTrackSupport(i, i2, i5);
                if (trackSupport == 4 || (z && trackSupport == 3)) {
                    iArr[i4] = i5;
                    i4++;
                }
            }
            return getAdaptiveSupport(i, i2, Arrays.copyOf(iArr, i4));
        }

        public int getAdaptiveSupport(int i, int i2, int[] iArr) {
            int i3 = 0;
            int i4 = 16;
            String str = null;
            boolean z = false;
            int i5 = 0;
            while (i3 < iArr.length) {
                String str2 = this.rendererTrackGroups[i].get(i2).getFormat(iArr[i3]).sampleMimeType;
                int i6 = i5 + 1;
                if (i5 == 0) {
                    str = str2;
                } else {
                    z |= !Util.areEqual(str, str2);
                }
                i4 = Math.min(i4, RendererCapabilities.getAdaptiveSupport(this.rendererFormatSupports[i][i2][i3]));
                i3++;
                i5 = i6;
            }
            return z ? Math.min(i4, this.rendererMixedMimeTypeAdaptiveSupports[i]) : i4;
        }
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public final void onSelectionActivated(Object obj) {
        this.currentMappedTrackInfo = (MappedTrackInfo) obj;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public final TrackSelectorResult selectTracks(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) throws ExoPlaybackException {
        int[] formatSupport;
        int[] iArr = new int[rendererCapabilitiesArr.length + 1];
        int length = rendererCapabilitiesArr.length + 1;
        TrackGroup[][] trackGroupArr = new TrackGroup[length];
        int[][][] iArr2 = new int[rendererCapabilitiesArr.length + 1][];
        for (int i = 0; i < length; i++) {
            trackGroupArr[i] = new TrackGroup[trackGroupArray.length];
            iArr2[i] = new int[trackGroupArray.length];
        }
        int[] mixedMimeTypeAdaptationSupports = getMixedMimeTypeAdaptationSupports(rendererCapabilitiesArr);
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            TrackGroup trackGroup = trackGroupArray.get(i2);
            int findRenderer = findRenderer(rendererCapabilitiesArr, trackGroup, iArr, trackGroup.type == 5);
            if (findRenderer == rendererCapabilitiesArr.length) {
                formatSupport = new int[trackGroup.length];
            } else {
                formatSupport = getFormatSupport(rendererCapabilitiesArr[findRenderer], trackGroup);
            }
            int i3 = iArr[findRenderer];
            trackGroupArr[findRenderer][i3] = trackGroup;
            iArr2[findRenderer][i3] = formatSupport;
            iArr[findRenderer] = i3 + 1;
        }
        TrackGroupArray[] trackGroupArrayArr = new TrackGroupArray[rendererCapabilitiesArr.length];
        String[] strArr = new String[rendererCapabilitiesArr.length];
        int[] iArr3 = new int[rendererCapabilitiesArr.length];
        for (int i4 = 0; i4 < rendererCapabilitiesArr.length; i4++) {
            int i5 = iArr[i4];
            trackGroupArrayArr[i4] = new TrackGroupArray((TrackGroup[]) Util.nullSafeArrayCopy(trackGroupArr[i4], i5));
            iArr2[i4] = (int[][]) Util.nullSafeArrayCopy(iArr2[i4], i5);
            strArr[i4] = rendererCapabilitiesArr[i4].getName();
            iArr3[i4] = rendererCapabilitiesArr[i4].getTrackType();
        }
        MappedTrackInfo mappedTrackInfo = new MappedTrackInfo(strArr, iArr3, trackGroupArrayArr, mixedMimeTypeAdaptationSupports, iArr2, new TrackGroupArray((TrackGroup[]) Util.nullSafeArrayCopy(trackGroupArr[rendererCapabilitiesArr.length], iArr[rendererCapabilitiesArr.length])));
        Pair<RendererConfiguration[], ExoTrackSelection[]> selectTracks = selectTracks(mappedTrackInfo, iArr2, mixedMimeTypeAdaptationSupports, mediaPeriodId, timeline);
        return new TrackSelectorResult((RendererConfiguration[]) selectTracks.first, (ExoTrackSelection[]) selectTracks.second, TrackSelectionUtil.buildTracks(mappedTrackInfo, (TrackSelection[]) selectTracks.second), mappedTrackInfo);
    }

    private static int findRenderer(RendererCapabilities[] rendererCapabilitiesArr, TrackGroup trackGroup, int[] iArr, boolean z) throws ExoPlaybackException {
        int length = rendererCapabilitiesArr.length;
        int i = 0;
        boolean z2 = true;
        for (int i2 = 0; i2 < rendererCapabilitiesArr.length; i2++) {
            RendererCapabilities rendererCapabilities = rendererCapabilitiesArr[i2];
            int i3 = 0;
            for (int i4 = 0; i4 < trackGroup.length; i4++) {
                i3 = Math.max(i3, RendererCapabilities.getFormatSupport(rendererCapabilities.supportsFormat(trackGroup.getFormat(i4))));
            }
            boolean z3 = iArr[i2] == 0;
            if (i3 > i || (i3 == i && z && !z2 && z3)) {
                length = i2;
                z2 = z3;
                i = i3;
            }
        }
        return length;
    }

    private static int[] getFormatSupport(RendererCapabilities rendererCapabilities, TrackGroup trackGroup) throws ExoPlaybackException {
        int[] iArr = new int[trackGroup.length];
        for (int i = 0; i < trackGroup.length; i++) {
            iArr[i] = rendererCapabilities.supportsFormat(trackGroup.getFormat(i));
        }
        return iArr;
    }

    private static int[] getMixedMimeTypeAdaptationSupports(RendererCapabilities[] rendererCapabilitiesArr) throws ExoPlaybackException {
        int length = rendererCapabilitiesArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = rendererCapabilitiesArr[i].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }
}
