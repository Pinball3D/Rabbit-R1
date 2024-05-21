.class public final Landroidx/work/impl/model/SystemIdInfoKt;
.super Ljava/lang/Object;
.source "SystemIdInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "systemIdInfo",
        "Landroidx/work/impl/model/SystemIdInfo;",
        "generationalId",
        "Landroidx/work/impl/model/WorkGenerationalId;",
        "systemId",
        "",
        "work-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final systemIdInfo(Landroidx/work/impl/model/WorkGenerationalId;I)Landroidx/work/impl/model/SystemIdInfo;
    .locals 2

    const-string v0, "generationalId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroidx/work/impl/model/SystemIdInfo;

    invoke-virtual {p0}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/work/impl/model/WorkGenerationalId;->getGeneration()I

    move-result p0

    invoke-direct {v0, v1, p0, p1}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
