.class Landroidx/work/impl/utils/StatusRunnable$2;
.super Landroidx/work/impl/utils/StatusRunnable;
.source "StatusRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/StatusRunnable;->forUUID(Landroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)Landroidx/work/impl/utils/StatusRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/utils/StatusRunnable<",
        "Landroidx/work/WorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/util/UUID;

.field final synthetic val$workManager:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$workManager",
            "val$id"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/impl/utils/StatusRunnable$2;->val$workManager:Landroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Landroidx/work/impl/utils/StatusRunnable$2;->val$id:Ljava/util/UUID;

    .line 99
    invoke-direct {p0}, Landroidx/work/impl/utils/StatusRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method runInternal()Landroidx/work/WorkInfo;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/utils/StatusRunnable$2;->val$workManager:Landroidx/work/impl/WorkManagerImpl;

    .line 102
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    iget-object p0, p0, Landroidx/work/impl/utils/StatusRunnable$2;->val$id:Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/work/impl/model/WorkSpecDao;->getWorkStatusPojoForId(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->toWorkInfo()Landroidx/work/WorkInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method bridge synthetic runInternal()Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0}, Landroidx/work/impl/utils/StatusRunnable$2;->runInternal()Landroidx/work/WorkInfo;

    move-result-object p0

    return-object p0
.end method
