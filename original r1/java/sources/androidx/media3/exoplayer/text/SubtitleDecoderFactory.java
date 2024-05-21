package androidx.media3.exoplayer.text;

import androidx.media3.common.Format;
import androidx.media3.extractor.text.SubtitleDecoder;
import androidx.media3.extractor.text.cea.Cea608Decoder;
import androidx.media3.extractor.text.cea.Cea708Decoder;
import androidx.media3.extractor.text.dvb.DvbDecoder;
import androidx.media3.extractor.text.pgs.PgsDecoder;
import androidx.media3.extractor.text.ssa.SsaDecoder;
import androidx.media3.extractor.text.subrip.SubripDecoder;
import androidx.media3.extractor.text.ttml.TtmlDecoder;
import androidx.media3.extractor.text.tx3g.Tx3gDecoder;
import androidx.media3.extractor.text.webvtt.Mp4WebvttDecoder;
import androidx.media3.extractor.text.webvtt.WebvttDecoder;

/* loaded from: classes2.dex */
public interface SubtitleDecoderFactory {
    public static final SubtitleDecoderFactory DEFAULT = new SubtitleDecoderFactory() { // from class: androidx.media3.exoplayer.text.SubtitleDecoderFactory.1
        @Override // androidx.media3.exoplayer.text.SubtitleDecoderFactory
        public boolean supportsFormat(Format format) {
            String str = format.sampleMimeType;
            return "text/vtt".equals(str) || "text/x-ssa".equals(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-subrip".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/cea-608".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/cea-708".equals(str) || "application/dvbsubs".equals(str) || "application/pgs".equals(str) || "text/x-exoplayer-cues".equals(str);
        }

        @Override // androidx.media3.exoplayer.text.SubtitleDecoderFactory
        public SubtitleDecoder createDecoder(Format format) {
            String str = format.sampleMimeType;
            if (str != null) {
                str.hashCode();
                char c = 65535;
                switch (str.hashCode()) {
                    case -1351681404:
                        if (str.equals("application/dvbsubs")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1248334819:
                        if (str.equals("application/pgs")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1026075066:
                        if (str.equals("application/x-mp4-vtt")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1004728940:
                        if (str.equals("text/vtt")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 691401887:
                        if (str.equals("application/x-quicktime-tx3g")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 822864842:
                        if (str.equals("text/x-ssa")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 930165504:
                        if (str.equals("application/x-mp4-cea-608")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1201784583:
                        if (str.equals("text/x-exoplayer-cues")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 1566015601:
                        if (str.equals("application/cea-608")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 1566016562:
                        if (str.equals("application/cea-708")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 1668750253:
                        if (str.equals("application/x-subrip")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case 1693976202:
                        if (str.equals("application/ttml+xml")) {
                            c = 11;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        return new DvbDecoder(format.initializationData);
                    case 1:
                        return new PgsDecoder();
                    case 2:
                        return new Mp4WebvttDecoder();
                    case 3:
                        return new WebvttDecoder();
                    case 4:
                        return new Tx3gDecoder(format.initializationData);
                    case 5:
                        return new SsaDecoder(format.initializationData);
                    case 6:
                    case '\b':
                        return new Cea608Decoder(str, format.accessibilityChannel, 16000L);
                    case 7:
                        return new ExoplayerCuesDecoder();
                    case '\t':
                        return new Cea708Decoder(format.accessibilityChannel, format.initializationData);
                    case '\n':
                        return new SubripDecoder();
                    case 11:
                        return new TtmlDecoder();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    };

    SubtitleDecoder createDecoder(Format format);

    boolean supportsFormat(Format format);
}
