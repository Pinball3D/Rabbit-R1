package com.google.android.exoplayer2.metadata;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.dvbsi.AppInfoTableDecoder;
import com.google.android.exoplayer2.metadata.emsg.EventMessageDecoder;
import com.google.android.exoplayer2.metadata.icy.IcyDecoder;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder;
import com.google.android.exoplayer2.metadata.scte35.SpliceInfoDecoder;

/* loaded from: classes2.dex */
public interface MetadataDecoderFactory {
    public static final MetadataDecoderFactory DEFAULT = new MetadataDecoderFactory() { // from class: com.google.android.exoplayer2.metadata.MetadataDecoderFactory.1
        @Override // com.google.android.exoplayer2.metadata.MetadataDecoderFactory
        public boolean supportsFormat(Format format) {
            String str = format.sampleMimeType;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
        }

        @Override // com.google.android.exoplayer2.metadata.MetadataDecoderFactory
        public MetadataDecoder createDecoder(Format format) {
            String str = format.sampleMimeType;
            if (str != null) {
                str.hashCode();
                char c = 65535;
                switch (str.hashCode()) {
                    case -1354451219:
                        if (str.equals("application/vnd.dvb.ait")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1348231605:
                        if (str.equals("application/x-icy")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1248341703:
                        if (str.equals("application/id3")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 1154383568:
                        if (str.equals("application/x-emsg")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 1652648887:
                        if (str.equals("application/x-scte35")) {
                            c = 4;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        return new AppInfoTableDecoder();
                    case 1:
                        return new IcyDecoder();
                    case 2:
                        return new Id3Decoder();
                    case 3:
                        return new EventMessageDecoder();
                    case 4:
                        return new SpliceInfoDecoder();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    };

    MetadataDecoder createDecoder(Format format);

    boolean supportsFormat(Format format);
}
