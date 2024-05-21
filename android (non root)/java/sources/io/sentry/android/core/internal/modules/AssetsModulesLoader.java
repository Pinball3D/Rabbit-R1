package io.sentry.android.core.internal.modules;

import android.content.Context;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.internal.modules.ModulesLoader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class AssetsModulesLoader extends ModulesLoader {
    private final Context context;

    public AssetsModulesLoader(Context context, ILogger iLogger) {
        super(iLogger);
        this.context = context;
    }

    @Override // io.sentry.internal.modules.ModulesLoader
    protected Map<String, String> loadModules() {
        TreeMap treeMap = new TreeMap();
        try {
            InputStream open = this.context.getAssets().open(ModulesLoader.EXTERNAL_MODULES_FILENAME);
            try {
                Map<String, String> parseStream = parseStream(open);
                if (open != null) {
                    open.close();
                }
                return parseStream;
            } finally {
            }
        } catch (FileNotFoundException unused) {
            this.logger.log(SentryLevel.INFO, "%s file was not found.", ModulesLoader.EXTERNAL_MODULES_FILENAME);
            return treeMap;
        } catch (IOException e) {
            this.logger.log(SentryLevel.ERROR, "Error extracting modules.", e);
            return treeMap;
        }
    }
}
