package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class FontCharacterParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("ch", "size", "w", "style", "fFamily", "data");
    private static final JsonReader.Options DATA_NAMES = JsonReader.Options.of("shapes");

    private FontCharacterParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FontCharacter parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        double d = 0.0d;
        String str = null;
        String str2 = null;
        char c = 0;
        double d2 = 0.0d;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(NAMES);
            if (selectName == 0) {
                c = jsonReader.nextString().charAt(0);
            } else if (selectName == 1) {
                d2 = jsonReader.nextDouble();
            } else if (selectName == 2) {
                d = jsonReader.nextDouble();
            } else if (selectName == 3) {
                str = jsonReader.nextString();
            } else if (selectName == 4) {
                str2 = jsonReader.nextString();
            } else if (selectName == 5) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    if (jsonReader.selectName(DATA_NAMES) == 0) {
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            arrayList.add((ShapeGroup) ContentModelParser.parse(jsonReader, lottieComposition));
                        }
                        jsonReader.endArray();
                    } else {
                        jsonReader.skipName();
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
            } else {
                jsonReader.skipName();
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return new FontCharacter(arrayList, c, d2, d, str, str2);
    }
}
