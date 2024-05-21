package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.content.MergePaths;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes2.dex */
class MergePathsParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("nm", "mm", "hd");

    private MergePathsParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MergePaths parse(JsonReader jsonReader) throws IOException {
        String str = null;
        boolean z = false;
        MergePaths.MergePathsMode mergePathsMode = null;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(NAMES);
            if (selectName == 0) {
                str = jsonReader.nextString();
            } else if (selectName == 1) {
                mergePathsMode = MergePaths.MergePathsMode.forId(jsonReader.nextInt());
            } else if (selectName == 2) {
                z = jsonReader.nextBoolean();
            } else {
                jsonReader.skipName();
                jsonReader.skipValue();
            }
        }
        return new MergePaths(str, mergePathsMode, z);
    }
}
