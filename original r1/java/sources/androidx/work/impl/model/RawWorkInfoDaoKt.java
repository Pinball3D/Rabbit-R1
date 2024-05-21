package androidx.work.impl.model;

import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.work.WorkInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;

/* compiled from: RawWorkInfoDao.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"getWorkInfoPojosFlow", "Lkotlinx/coroutines/flow/Flow;", "", "Landroidx/work/WorkInfo;", "Landroidx/work/impl/model/RawWorkInfoDao;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "query", "Landroidx/sqlite/db/SupportSQLiteQuery;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class RawWorkInfoDaoKt {
    public static final Flow<List<WorkInfo>> getWorkInfoPojosFlow(RawWorkInfoDao rawWorkInfoDao, CoroutineDispatcher dispatcher, SupportSQLiteQuery query) {
        Intrinsics.checkNotNullParameter(rawWorkInfoDao, "<this>");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(query, "query");
        return WorkSpecDaoKt.dedup(rawWorkInfoDao.getWorkInfoPojosFlow(query), dispatcher);
    }
}
