package androidx.media3.exoplayer.upstream;

import androidx.media3.exoplayer.upstream.SlidingPercentile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* loaded from: classes2.dex */
public class SlidingPercentile {
    private static final int MAX_RECYCLED_SAMPLES = 5;
    private static final int SORT_ORDER_BY_INDEX = 1;
    private static final int SORT_ORDER_BY_VALUE = 0;
    private static final int SORT_ORDER_NONE = -1;
    private final int maxWeight;
    private int nextSampleIndex;
    private int recycledSampleCount;
    private int totalWeight;
    private static final Comparator<Sample> INDEX_COMPARATOR = new Comparator() { // from class: androidx.media3.exoplayer.upstream.SlidingPercentile$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return SlidingPercentile.lambda$static$0((SlidingPercentile.Sample) obj, (SlidingPercentile.Sample) obj2);
        }
    };
    private static final Comparator<Sample> VALUE_COMPARATOR = new Comparator() { // from class: androidx.media3.exoplayer.upstream.SlidingPercentile$$ExternalSyntheticLambda1
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int compare;
            compare = Float.compare(((SlidingPercentile.Sample) obj).value, ((SlidingPercentile.Sample) obj2).value);
            return compare;
        }
    };
    private final Sample[] recycledSamples = new Sample[5];
    private final ArrayList<Sample> samples = new ArrayList<>();
    private int currentSortOrder = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int lambda$static$0(Sample sample, Sample sample2) {
        return sample.index - sample2.index;
    }

    public SlidingPercentile(int i) {
        this.maxWeight = i;
    }

    public void reset() {
        this.samples.clear();
        this.currentSortOrder = -1;
        this.nextSampleIndex = 0;
        this.totalWeight = 0;
    }

    public void addSample(int i, float f) {
        Sample sample;
        ensureSortedByIndex();
        int i2 = this.recycledSampleCount;
        if (i2 > 0) {
            Sample[] sampleArr = this.recycledSamples;
            int i3 = i2 - 1;
            this.recycledSampleCount = i3;
            sample = sampleArr[i3];
        } else {
            sample = new Sample();
        }
        int i4 = this.nextSampleIndex;
        this.nextSampleIndex = i4 + 1;
        sample.index = i4;
        sample.weight = i;
        sample.value = f;
        this.samples.add(sample);
        this.totalWeight += i;
        while (true) {
            int i5 = this.totalWeight;
            int i6 = this.maxWeight;
            if (i5 <= i6) {
                return;
            }
            int i7 = i5 - i6;
            Sample sample2 = this.samples.get(0);
            if (sample2.weight <= i7) {
                this.totalWeight -= sample2.weight;
                this.samples.remove(0);
                int i8 = this.recycledSampleCount;
                if (i8 < 5) {
                    Sample[] sampleArr2 = this.recycledSamples;
                    this.recycledSampleCount = i8 + 1;
                    sampleArr2[i8] = sample2;
                }
            } else {
                sample2.weight -= i7;
                this.totalWeight -= i7;
            }
        }
    }

    public float getPercentile(float f) {
        ensureSortedByValue();
        float f2 = f * this.totalWeight;
        int i = 0;
        for (int i2 = 0; i2 < this.samples.size(); i2++) {
            Sample sample = this.samples.get(i2);
            i += sample.weight;
            if (i >= f2) {
                return sample.value;
            }
        }
        if (this.samples.isEmpty()) {
            return Float.NaN;
        }
        return this.samples.get(r4.size() - 1).value;
    }

    private void ensureSortedByIndex() {
        if (this.currentSortOrder != 1) {
            Collections.sort(this.samples, INDEX_COMPARATOR);
            this.currentSortOrder = 1;
        }
    }

    private void ensureSortedByValue() {
        if (this.currentSortOrder != 0) {
            Collections.sort(this.samples, VALUE_COMPARATOR);
            this.currentSortOrder = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Sample {
        public int index;
        public float value;
        public int weight;

        private Sample() {
        }
    }
}
