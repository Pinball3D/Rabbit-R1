package androidx.work.impl.utils;

import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.work.WorkInfo;
import androidx.work.WorkQuery;
import androidx.work.impl.model.WorkTypeConverters;
import io.sentry.protocol.MetricSummary;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RawQueries.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u001a\n\u0010\u0007\u001a\u00020\b*\u00020\t¨\u0006\n"}, d2 = {"bindings", "", "builder", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", MetricSummary.JsonKeys.COUNT, "", "toRawQuery", "Landroidx/sqlite/db/SupportSQLiteQuery;", "Landroidx/work/WorkQuery;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class RawQueries {
    public static final SupportSQLiteQuery toRawQuery(WorkQuery workQuery) {
        String str;
        Intrinsics.checkNotNullParameter(workQuery, "<this>");
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder("SELECT * FROM workspec");
        List<WorkInfo.State> states = workQuery.getStates();
        Intrinsics.checkNotNullExpressionValue(states, "states");
        String str2 = " AND";
        if (!states.isEmpty()) {
            List<WorkInfo.State> states2 = workQuery.getStates();
            Intrinsics.checkNotNullExpressionValue(states2, "states");
            List<WorkInfo.State> list = states2;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            for (WorkInfo.State state : list) {
                Intrinsics.checkNotNull(state);
                arrayList2.add(Integer.valueOf(WorkTypeConverters.stateToInt(state)));
            }
            ArrayList arrayList3 = arrayList2;
            sb.append(" WHERE state IN (");
            bindings(sb, arrayList3.size());
            sb.append(")");
            arrayList.addAll(arrayList3);
            str = " AND";
        } else {
            str = " WHERE";
        }
        List<UUID> ids = workQuery.getIds();
        Intrinsics.checkNotNullExpressionValue(ids, "ids");
        if (!ids.isEmpty()) {
            List<UUID> ids2 = workQuery.getIds();
            Intrinsics.checkNotNullExpressionValue(ids2, "ids");
            List<UUID> list2 = ids2;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                arrayList4.add(((UUID) it.next()).toString());
            }
            sb.append(str.concat(" id IN ("));
            bindings(sb, workQuery.getIds().size());
            sb.append(")");
            arrayList.addAll(arrayList4);
            str = " AND";
        }
        List<String> tags = workQuery.getTags();
        Intrinsics.checkNotNullExpressionValue(tags, "tags");
        if (!tags.isEmpty()) {
            sb.append(str.concat(" id IN (SELECT work_spec_id FROM worktag WHERE tag IN ("));
            bindings(sb, workQuery.getTags().size());
            sb.append("))");
            List<String> tags2 = workQuery.getTags();
            Intrinsics.checkNotNullExpressionValue(tags2, "tags");
            arrayList.addAll(tags2);
        } else {
            str2 = str;
        }
        List<String> uniqueWorkNames = workQuery.getUniqueWorkNames();
        Intrinsics.checkNotNullExpressionValue(uniqueWorkNames, "uniqueWorkNames");
        if (!uniqueWorkNames.isEmpty()) {
            sb.append(str2.concat(" id IN (SELECT work_spec_id FROM workname WHERE name IN ("));
            bindings(sb, workQuery.getUniqueWorkNames().size());
            sb.append("))");
            List<String> uniqueWorkNames2 = workQuery.getUniqueWorkNames();
            Intrinsics.checkNotNullExpressionValue(uniqueWorkNames2, "uniqueWorkNames");
            arrayList.addAll(uniqueWorkNames2);
        }
        sb.append(";");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "builder.toString()");
        return new SimpleSQLiteQuery(sb2, arrayList.toArray(new Object[0]));
    }

    private static final void bindings(StringBuilder sb, int i) {
        if (i <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add("?");
        }
        sb.append(CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, null, 62, null));
    }
}
