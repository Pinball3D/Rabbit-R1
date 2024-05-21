package com.google.android.exoplayer2.source.dash;

import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.source.dash.manifest.BaseUrl;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.Iterables;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* loaded from: classes2.dex */
public final class BaseUrlExclusionList {
    private final Map<Integer, Long> excludedPriorities;
    private final Map<String, Long> excludedServiceLocations;
    private final Random random;
    private final Map<List<Pair<String, Integer>>, BaseUrl> selectionsTaken;

    public BaseUrlExclusionList() {
        this(new Random());
    }

    BaseUrlExclusionList(Random random) {
        this.selectionsTaken = new HashMap();
        this.random = random;
        this.excludedServiceLocations = new HashMap();
        this.excludedPriorities = new HashMap();
    }

    public void exclude(BaseUrl baseUrl, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime() + j;
        addExclusion(baseUrl.serviceLocation, elapsedRealtime, this.excludedServiceLocations);
        if (baseUrl.priority != Integer.MIN_VALUE) {
            addExclusion(Integer.valueOf(baseUrl.priority), elapsedRealtime, this.excludedPriorities);
        }
    }

    public BaseUrl selectBaseUrl(List<BaseUrl> list) {
        List<BaseUrl> applyExclusions = applyExclusions(list);
        if (applyExclusions.size() < 2) {
            return (BaseUrl) Iterables.getFirst(applyExclusions, null);
        }
        Collections.sort(applyExclusions, new Comparator() { // from class: com.google.android.exoplayer2.source.dash.BaseUrlExclusionList$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compareBaseUrl;
                compareBaseUrl = BaseUrlExclusionList.compareBaseUrl((BaseUrl) obj, (BaseUrl) obj2);
                return compareBaseUrl;
            }
        });
        ArrayList arrayList = new ArrayList();
        int i = applyExclusions.get(0).priority;
        int i2 = 0;
        while (true) {
            if (i2 >= applyExclusions.size()) {
                break;
            }
            BaseUrl baseUrl = applyExclusions.get(i2);
            if (i != baseUrl.priority) {
                if (arrayList.size() == 1) {
                    return applyExclusions.get(0);
                }
            } else {
                arrayList.add(new Pair(baseUrl.serviceLocation, Integer.valueOf(baseUrl.weight)));
                i2++;
            }
        }
        BaseUrl baseUrl2 = this.selectionsTaken.get(arrayList);
        if (baseUrl2 != null) {
            return baseUrl2;
        }
        BaseUrl selectWeighted = selectWeighted(applyExclusions.subList(0, arrayList.size()));
        this.selectionsTaken.put(arrayList, selectWeighted);
        return selectWeighted;
    }

    public int getPriorityCountAfterExclusion(List<BaseUrl> list) {
        HashSet hashSet = new HashSet();
        List<BaseUrl> applyExclusions = applyExclusions(list);
        for (int i = 0; i < applyExclusions.size(); i++) {
            hashSet.add(Integer.valueOf(applyExclusions.get(i).priority));
        }
        return hashSet.size();
    }

    public static int getPriorityCount(List<BaseUrl> list) {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < list.size(); i++) {
            hashSet.add(Integer.valueOf(list.get(i).priority));
        }
        return hashSet.size();
    }

    public void reset() {
        this.excludedServiceLocations.clear();
        this.excludedPriorities.clear();
        this.selectionsTaken.clear();
    }

    private List<BaseUrl> applyExclusions(List<BaseUrl> list) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        removeExpiredExclusions(elapsedRealtime, this.excludedServiceLocations);
        removeExpiredExclusions(elapsedRealtime, this.excludedPriorities);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            BaseUrl baseUrl = list.get(i);
            if (!this.excludedServiceLocations.containsKey(baseUrl.serviceLocation) && !this.excludedPriorities.containsKey(Integer.valueOf(baseUrl.priority))) {
                arrayList.add(baseUrl);
            }
        }
        return arrayList;
    }

    private BaseUrl selectWeighted(List<BaseUrl> list) {
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            i += list.get(i2).weight;
        }
        int nextInt = this.random.nextInt(i);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            BaseUrl baseUrl = list.get(i4);
            i3 += baseUrl.weight;
            if (nextInt < i3) {
                return baseUrl;
            }
        }
        return (BaseUrl) Iterables.getLast(list);
    }

    private static <T> void addExclusion(T t, long j, Map<T, Long> map) {
        if (map.containsKey(t)) {
            j = Math.max(j, ((Long) Util.castNonNull(map.get(t))).longValue());
        }
        map.put(t, Long.valueOf(j));
    }

    private static <T> void removeExpiredExclusions(long j, Map<T, Long> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<T, Long> entry : map.entrySet()) {
            if (entry.getValue().longValue() <= j) {
                arrayList.add(entry.getKey());
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            map.remove(arrayList.get(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int compareBaseUrl(BaseUrl baseUrl, BaseUrl baseUrl2) {
        int compare = Integer.compare(baseUrl.priority, baseUrl2.priority);
        return compare != 0 ? compare : baseUrl.serviceLocation.compareTo(baseUrl2.serviceLocation);
    }
}
