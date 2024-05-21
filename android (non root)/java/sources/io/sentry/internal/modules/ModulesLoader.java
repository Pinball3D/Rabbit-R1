package io.sentry.internal.modules;

import com.google.android.exoplayer2.C;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public abstract class ModulesLoader implements IModulesLoader {
    public static final String EXTERNAL_MODULES_FILENAME = "sentry-external-modules.txt";
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private Map<String, String> cachedModules = null;
    protected final ILogger logger;

    protected abstract Map<String, String> loadModules();

    public ModulesLoader(ILogger iLogger) {
        this.logger = iLogger;
    }

    @Override // io.sentry.internal.modules.IModulesLoader
    public Map<String, String> getOrLoadModules() {
        Map<String, String> map = this.cachedModules;
        if (map != null) {
            return map;
        }
        Map<String, String> loadModules = loadModules();
        this.cachedModules = loadModules;
        return loadModules;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Map<String, String> parseStream(InputStream inputStream) {
        TreeMap treeMap = new TreeMap();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, UTF_8));
            try {
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    int lastIndexOf = readLine.lastIndexOf(58);
                    treeMap.put(readLine.substring(0, lastIndexOf), readLine.substring(lastIndexOf + 1));
                }
                this.logger.log(SentryLevel.DEBUG, "Extracted %d modules from resources.", Integer.valueOf(treeMap.size()));
                bufferedReader.close();
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            this.logger.log(SentryLevel.ERROR, "Error extracting modules.", e);
        } catch (RuntimeException e2) {
            this.logger.log(SentryLevel.ERROR, e2, "%s file is malformed.", EXTERNAL_MODULES_FILENAME);
        }
        return treeMap;
    }
}
