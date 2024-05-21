package io.sentry.android.core.internal.util;

import io.sentry.util.FileUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class CpuInfoUtils {
    static final String CPUINFO_MAX_FREQ_PATH = "cpufreq/cpuinfo_max_freq";
    private static final String SYSTEM_CPU_PATH = "/sys/devices/system/cpu";
    private static final CpuInfoUtils instance = new CpuInfoUtils();
    private final List<Integer> cpuMaxFrequenciesMhz = new ArrayList();

    public static CpuInfoUtils getInstance() {
        return instance;
    }

    String getSystemCpuPath() {
        return SYSTEM_CPU_PATH;
    }

    private CpuInfoUtils() {
    }

    public synchronized List<Integer> readMaxFrequencies() {
        if (!this.cpuMaxFrequenciesMhz.isEmpty()) {
            return this.cpuMaxFrequenciesMhz;
        }
        File[] listFiles = new File(getSystemCpuPath()).listFiles();
        if (listFiles == null) {
            return new ArrayList();
        }
        for (File file : listFiles) {
            if (file.getName().matches("cpu[0-9]+")) {
                File file2 = new File(file, CPUINFO_MAX_FREQ_PATH);
                if (file2.exists() && file2.canRead()) {
                    try {
                        String readText = FileUtils.readText(file2);
                        if (readText != null) {
                            this.cpuMaxFrequenciesMhz.add(Integer.valueOf((int) (Long.parseLong(readText.trim()) / 1000)));
                        }
                    } catch (IOException | NumberFormatException unused) {
                    }
                }
            }
        }
        return this.cpuMaxFrequenciesMhz;
    }

    public void setCpuMaxFrequencies(List<Integer> list) {
        this.cpuMaxFrequenciesMhz.clear();
        this.cpuMaxFrequenciesMhz.addAll(list);
    }

    final void clear() {
        this.cpuMaxFrequenciesMhz.clear();
    }
}
