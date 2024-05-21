.class public abstract Landroidx/work/WorkRequest;
.super Ljava/lang/Object;
.source "WorkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkRequest$Builder;,
        Landroidx/work/WorkRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008&\u0018\u0000 \u00142\u00020\u0001:\u0002\u0013\u0014B%\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u00088G\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0019\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u00020\u00058\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/work/WorkRequest;",
        "",
        "id",
        "Ljava/util/UUID;",
        "workSpec",
        "Landroidx/work/impl/model/WorkSpec;",
        "tags",
        "",
        "",
        "(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V",
        "getId",
        "()Ljava/util/UUID;",
        "stringId",
        "getStringId",
        "()Ljava/lang/String;",
        "getTags",
        "()Ljava/util/Set;",
        "getWorkSpec",
        "()Landroidx/work/impl/model/WorkSpec;",
        "Builder",
        "Companion",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/work/WorkRequest$Companion;

.field public static final DEFAULT_BACKOFF_DELAY_MILLIS:J = 0x7530L

.field public static final MAX_BACKOFF_MILLIS:J = 0x112a880L

.field public static final MIN_BACKOFF_MILLIS:J = 0x2710L


# instance fields
.field private final id:Ljava/util/UUID;

.field private final tags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final workSpec:Landroidx/work/impl/model/WorkSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/WorkRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/WorkRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/WorkRequest;->Companion:Landroidx/work/WorkRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/work/impl/model/WorkSpec;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workSpec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkRequest;->id:Ljava/util/UUID;

    iput-object p2, p0, Landroidx/work/WorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iput-object p3, p0, Landroidx/work/WorkRequest;->tags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getId()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Landroidx/work/WorkRequest;->id:Ljava/util/UUID;

    return-object p0
.end method

.method public final getStringId()Ljava/lang/String;
    .locals 1

    .line 60
    invoke-virtual {p0}, Landroidx/work/WorkRequest;->getId()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "id.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTags()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/WorkRequest;->tags:Ljava/util/Set;

    return-object p0
.end method

.method public final getWorkSpec()Landroidx/work/impl/model/WorkSpec;
    .locals 0

    iget-object p0, p0, Landroidx/work/WorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    return-object p0
.end method
