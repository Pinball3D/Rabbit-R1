package com.journeyapps.barcodescanner;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class DefaultDecoderFactory implements DecoderFactory {
    private String characterSet;
    private Collection<BarcodeFormat> decodeFormats;
    private Map<DecodeHintType, ?> hints;
    private int scanType;

    public DefaultDecoderFactory() {
    }

    public DefaultDecoderFactory(Collection<BarcodeFormat> collection) {
        this.decodeFormats = collection;
    }

    public DefaultDecoderFactory(Collection<BarcodeFormat> collection, Map<DecodeHintType, ?> map, String str, int i) {
        this.decodeFormats = collection;
        this.hints = map;
        this.characterSet = str;
        this.scanType = i;
    }

    @Override // com.journeyapps.barcodescanner.DecoderFactory
    public Decoder createDecoder(Map<DecodeHintType, ?> map) {
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        enumMap.putAll(map);
        Map<DecodeHintType, ?> map2 = this.hints;
        if (map2 != null) {
            enumMap.putAll(map2);
        }
        if (this.decodeFormats != null) {
            enumMap.put((EnumMap) DecodeHintType.POSSIBLE_FORMATS, (DecodeHintType) this.decodeFormats);
        }
        if (this.characterSet != null) {
            enumMap.put((EnumMap) DecodeHintType.CHARACTER_SET, (DecodeHintType) this.characterSet);
        }
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        multiFormatReader.setHints(enumMap);
        int i = this.scanType;
        if (i == 0) {
            return new Decoder(multiFormatReader);
        }
        if (i == 1) {
            return new InvertedDecoder(multiFormatReader);
        }
        if (i == 2) {
            return new MixedDecoder(multiFormatReader);
        }
        return new Decoder(multiFormatReader);
    }
}
