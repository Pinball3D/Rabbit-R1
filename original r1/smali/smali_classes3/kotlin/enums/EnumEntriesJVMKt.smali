.class public final Lkotlin/enums/EnumEntriesJVMKt;
.super Ljava/lang/Object;
.source "EnumEntriesJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0000\u001a!\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0010\u0008\u0000\u0010\u0002\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0081\u0008\u00a8\u0006\u0004"
    }
    d2 = {
        "enumEntriesIntrinsic",
        "Lkotlin/enums/EnumEntries;",
        "T",
        "",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic enumEntriesIntrinsic()Lkotlin/enums/EnumEntries;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>()",
            "Lkotlin/enums/EnumEntries<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x5

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Enum;

    .line 16
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    return-object v0
.end method
