package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ShapeGroupParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("nm", "hd", "it");

    private ShapeGroupParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ShapeGroup parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        ArrayList arrayList = new ArrayList();
        String str = null;
        boolean z = false;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(NAMES);
            if (selectName == 0) {
                str = jsonReader.nextString();
            } else if (selectName == 1) {
                z = jsonReader.nextBoolean();
            } else if (selectName == 2) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    ContentModel parse = ContentModelParser.parse(jsonReader, lottieComposition);
                    if (parse != null) {
                        arrayList.add(parse);
                    }
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
        return new ShapeGroup(str, arrayList, z);
    }
}
