package com.airbnb.lottie.parser;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class LottieCompositionMoshiParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("w", CmcdHeadersFactory.STREAMING_FORMAT_HLS, "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");
    static JsonReader.Options ASSETS_NAMES = JsonReader.Options.of("id", "layers", "w", CmcdHeadersFactory.STREAMING_FORMAT_HLS, "p", "u");
    private static final JsonReader.Options FONT_NAMES = JsonReader.Options.of("list");
    private static final JsonReader.Options MARKER_NAMES = JsonReader.Options.of("cm", "tm", "dr");

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0043. Please report as an issue. */
    public static LottieComposition parse(JsonReader jsonReader) throws IOException {
        HashMap hashMap;
        ArrayList arrayList;
        JsonReader jsonReader2 = jsonReader;
        float dpScale = Utils.dpScale();
        LongSparseArray<Layer> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList2 = new ArrayList();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        HashMap hashMap4 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        SparseArrayCompat<FontCharacter> sparseArrayCompat = new SparseArrayCompat<>();
        LottieComposition lottieComposition = new LottieComposition();
        jsonReader.beginObject();
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        int i = 0;
        int i2 = 0;
        while (jsonReader.hasNext()) {
            switch (jsonReader2.selectName(NAMES)) {
                case 0:
                    i = jsonReader.nextInt();
                    break;
                case 1:
                    i2 = jsonReader.nextInt();
                    break;
                case 2:
                    f = (float) jsonReader.nextDouble();
                    break;
                case 3:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f2 = ((float) jsonReader.nextDouble()) - 0.01f;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 4:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f3 = (float) jsonReader.nextDouble();
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 5:
                    String[] split = jsonReader.nextString().split("\\.");
                    if (!Utils.isAtLeastVersion(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]), 4, 4, 0)) {
                        lottieComposition.addWarning("Lottie only supports bodymovin >= 4.4.0");
                    }
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 6:
                    parseLayers(jsonReader2, lottieComposition, arrayList2, longSparseArray);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 7:
                    parseAssets(jsonReader2, lottieComposition, hashMap2, hashMap3);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 8:
                    parseFonts(jsonReader2, hashMap4);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 9:
                    parseChars(jsonReader2, lottieComposition, sparseArrayCompat);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 10:
                    parseMarkers(jsonReader2, arrayList3);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                default:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
            }
            jsonReader2 = jsonReader;
        }
        lottieComposition.init(new Rect(0, 0, (int) (i * dpScale), (int) (i2 * dpScale)), f, f2, f3, arrayList2, longSparseArray, hashMap2, hashMap3, Utils.dpScale(), sparseArrayCompat, hashMap4, arrayList3);
        return lottieComposition;
    }

    private static void parseLayers(JsonReader jsonReader, LottieComposition lottieComposition, List<Layer> list, LongSparseArray<Layer> longSparseArray) throws IOException {
        jsonReader.beginArray();
        int i = 0;
        while (jsonReader.hasNext()) {
            Layer parse = LayerParser.parse(jsonReader, lottieComposition);
            if (parse.getLayerType() == Layer.LayerType.IMAGE) {
                i++;
            }
            list.add(parse);
            longSparseArray.put(parse.getId(), parse);
            if (i > 4) {
                Logger.warning("You have " + i + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }
        jsonReader.endArray();
    }

    private static void parseAssets(JsonReader jsonReader, LottieComposition lottieComposition, Map<String, List<Layer>> map, Map<String, LottieImageAsset> map2) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            jsonReader.beginObject();
            int i = 0;
            int i2 = 0;
            String str = null;
            String str2 = null;
            String str3 = null;
            while (jsonReader.hasNext()) {
                int selectName = jsonReader.selectName(ASSETS_NAMES);
                if (selectName == 0) {
                    str = jsonReader.nextString();
                } else if (selectName == 1) {
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        Layer parse = LayerParser.parse(jsonReader, lottieComposition);
                        longSparseArray.put(parse.getId(), parse);
                        arrayList.add(parse);
                    }
                    jsonReader.endArray();
                } else if (selectName == 2) {
                    i = jsonReader.nextInt();
                } else if (selectName == 3) {
                    i2 = jsonReader.nextInt();
                } else if (selectName == 4) {
                    str2 = jsonReader.nextString();
                } else if (selectName == 5) {
                    str3 = jsonReader.nextString();
                } else {
                    jsonReader.skipName();
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            if (str2 != null) {
                LottieImageAsset lottieImageAsset = new LottieImageAsset(i, i2, str, str2, str3);
                map2.put(lottieImageAsset.getId(), lottieImageAsset);
            } else {
                map.put(str, arrayList);
            }
        }
        jsonReader.endArray();
    }

    private static void parseFonts(JsonReader jsonReader, Map<String, Font> map) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.selectName(FONT_NAMES) == 0) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    Font parse = FontParser.parse(jsonReader);
                    map.put(parse.getName(), parse);
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipName();
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
    }

    private static void parseChars(JsonReader jsonReader, LottieComposition lottieComposition, SparseArrayCompat<FontCharacter> sparseArrayCompat) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            FontCharacter parse = FontCharacterParser.parse(jsonReader, lottieComposition);
            sparseArrayCompat.put(parse.hashCode(), parse);
        }
        jsonReader.endArray();
    }

    private static void parseMarkers(JsonReader jsonReader, List<Marker> list) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            float f = 0.0f;
            String str = null;
            float f2 = 0.0f;
            while (jsonReader.hasNext()) {
                int selectName = jsonReader.selectName(MARKER_NAMES);
                if (selectName == 0) {
                    str = jsonReader.nextString();
                } else if (selectName == 1) {
                    f = (float) jsonReader.nextDouble();
                } else if (selectName == 2) {
                    f2 = (float) jsonReader.nextDouble();
                } else {
                    jsonReader.skipName();
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            list.add(new Marker(str, f, f2));
        }
        jsonReader.endArray();
    }
}
