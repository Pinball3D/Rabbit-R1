package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.extractor.ts.Ac3Extractor;
import com.google.android.exoplayer2.extractor.ts.Ac4Extractor;
import com.google.android.exoplayer2.extractor.ts.AdtsExtractor;
import com.google.android.exoplayer2.extractor.ts.DefaultTsPayloadReaderFactory;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.FileTypes;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.common.primitives.Ints;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class DefaultHlsExtractorFactory implements HlsExtractorFactory {
    private static final int[] DEFAULT_EXTRACTOR_ORDER = {8, 13, 11, 2, 0, 1, 7};
    private final boolean exposeCea608WhenMissingDeclarations;
    private final int payloadReaderFactoryFlags;

    @Override // com.google.android.exoplayer2.source.hls.HlsExtractorFactory
    public /* bridge */ /* synthetic */ HlsMediaChunkExtractor createExtractor(Uri uri, Format format, List list, TimestampAdjuster timestampAdjuster, Map map, ExtractorInput extractorInput, PlayerId playerId) throws IOException {
        return createExtractor(uri, format, (List<Format>) list, timestampAdjuster, (Map<String, List<String>>) map, extractorInput, playerId);
    }

    public DefaultHlsExtractorFactory() {
        this(0, true);
    }

    public DefaultHlsExtractorFactory(int i, boolean z) {
        this.payloadReaderFactoryFlags = i;
        this.exposeCea608WhenMissingDeclarations = z;
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsExtractorFactory
    public BundledHlsMediaChunkExtractor createExtractor(Uri uri, Format format, List<Format> list, TimestampAdjuster timestampAdjuster, Map<String, List<String>> map, ExtractorInput extractorInput, PlayerId playerId) throws IOException {
        int inferFileTypeFromMimeType = FileTypes.inferFileTypeFromMimeType(format.sampleMimeType);
        int inferFileTypeFromResponseHeaders = FileTypes.inferFileTypeFromResponseHeaders(map);
        int inferFileTypeFromUri = FileTypes.inferFileTypeFromUri(uri);
        int[] iArr = DEFAULT_EXTRACTOR_ORDER;
        ArrayList arrayList = new ArrayList(iArr.length);
        addFileTypeIfValidAndNotPresent(inferFileTypeFromMimeType, arrayList);
        addFileTypeIfValidAndNotPresent(inferFileTypeFromResponseHeaders, arrayList);
        addFileTypeIfValidAndNotPresent(inferFileTypeFromUri, arrayList);
        for (int i : iArr) {
            addFileTypeIfValidAndNotPresent(i, arrayList);
        }
        extractorInput.resetPeekPosition();
        Extractor extractor = null;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            int intValue = ((Integer) arrayList.get(i2)).intValue();
            Extractor extractor2 = (Extractor) Assertions.checkNotNull(createExtractorByFileType(intValue, format, list, timestampAdjuster));
            if (sniffQuietly(extractor2, extractorInput)) {
                return new BundledHlsMediaChunkExtractor(extractor2, format, timestampAdjuster);
            }
            if (extractor == null && (intValue == inferFileTypeFromMimeType || intValue == inferFileTypeFromResponseHeaders || intValue == inferFileTypeFromUri || intValue == 11)) {
                extractor = extractor2;
            }
        }
        return new BundledHlsMediaChunkExtractor((Extractor) Assertions.checkNotNull(extractor), format, timestampAdjuster);
    }

    private static void addFileTypeIfValidAndNotPresent(int i, List<Integer> list) {
        if (Ints.indexOf(DEFAULT_EXTRACTOR_ORDER, i) == -1 || list.contains(Integer.valueOf(i))) {
            return;
        }
        list.add(Integer.valueOf(i));
    }

    private Extractor createExtractorByFileType(int i, Format format, List<Format> list, TimestampAdjuster timestampAdjuster) {
        if (i == 0) {
            return new Ac3Extractor();
        }
        if (i == 1) {
            return new Ac4Extractor();
        }
        if (i == 2) {
            return new AdtsExtractor();
        }
        if (i == 7) {
            return new Mp3Extractor(0, 0L);
        }
        if (i == 8) {
            return createFragmentedMp4Extractor(timestampAdjuster, format, list);
        }
        if (i == 11) {
            return createTsExtractor(this.payloadReaderFactoryFlags, this.exposeCea608WhenMissingDeclarations, format, list, timestampAdjuster);
        }
        if (i != 13) {
            return null;
        }
        return new WebvttExtractor(format.language, timestampAdjuster);
    }

    private static TsExtractor createTsExtractor(int i, boolean z, Format format, List<Format> list, TimestampAdjuster timestampAdjuster) {
        int i2 = i | 16;
        if (list != null) {
            i2 = i | 48;
        } else if (z) {
            list = Collections.singletonList(new Format.Builder().setSampleMimeType("application/cea-608").build());
        } else {
            list = Collections.emptyList();
        }
        String str = format.codecs;
        if (!TextUtils.isEmpty(str)) {
            if (!MimeTypes.containsCodecsCorrespondingToMimeType(str, "audio/mp4a-latm")) {
                i2 |= 2;
            }
            if (!MimeTypes.containsCodecsCorrespondingToMimeType(str, "video/avc")) {
                i2 |= 4;
            }
        }
        return new TsExtractor(2, timestampAdjuster, new DefaultTsPayloadReaderFactory(i2, list));
    }

    private static FragmentedMp4Extractor createFragmentedMp4Extractor(TimestampAdjuster timestampAdjuster, Format format, List<Format> list) {
        int i = isFmp4Variant(format) ? 4 : 0;
        if (list == null) {
            list = Collections.emptyList();
        }
        return new FragmentedMp4Extractor(i, timestampAdjuster, null, list);
    }

    private static boolean isFmp4Variant(Format format) {
        Metadata metadata = format.metadata;
        if (metadata == null) {
            return false;
        }
        for (int i = 0; i < metadata.length(); i++) {
            if (metadata.get(i) instanceof HlsTrackMetadataEntry) {
                return !((HlsTrackMetadataEntry) r2).variantInfos.isEmpty();
            }
        }
        return false;
    }

    private static boolean sniffQuietly(Extractor extractor, ExtractorInput extractorInput) throws IOException {
        try {
            boolean sniff = extractor.sniff(extractorInput);
            extractorInput.resetPeekPosition();
            return sniff;
        } catch (EOFException unused) {
            extractorInput.resetPeekPosition();
            return false;
        } catch (Throwable th) {
            extractorInput.resetPeekPosition();
            throw th;
        }
    }
}
