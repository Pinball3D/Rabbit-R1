.class public final Lkotlin/enums/EnumEntriesKt;
.super Ljava/lang/Object;
.source "EnumEntries.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnumEntries.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnumEntries.kt\nkotlin/enums/EnumEntriesKt\n+ 2 EnumEntriesJVM.kt\nkotlin/enums/EnumEntriesJVMKt\n*L\n1#1,91:1\n16#2:92\n*S KotlinDebug\n*F\n+ 1 EnumEntries.kt\nkotlin/enums/EnumEntriesKt\n*L\n31#1:92\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u001a!\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0010\u0008\u0000\u0010\u0002\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0087\u0008\u001a2\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0001\"\u000e\u0008\u0000\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00040\u00032\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00040\u00070\u0006H\u0001\u001a1\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0001\"\u000e\u0008\u0000\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00040\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0007H\u0001\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "enumEntries",
        "Lkotlin/enums/EnumEntries;",
        "T",
        "",
        "E",
        "entriesProvider",
        "Lkotlin/Function0;",
        "",
        "entries",
        "([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;",
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
.method public static final synthetic enumEntries()Lkotlin/enums/EnumEntries;
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

    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Enum;

    .line 92
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    return-object v0
.end method

.method public static final enumEntries(Lkotlin/jvm/functions/Function0;)Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Lkotlin/jvm/functions/Function0<",
            "[TE;>;)",
            "Lkotlin/enums/EnumEntries<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "entriesProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    invoke-direct {v0, p0}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    check-cast v0, Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static final enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>([TE;)",
            "Lkotlin/enums/EnumEntries<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    invoke-direct {v0, p0}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    check-cast v0, Lkotlin/enums/EnumEntries;

    return-object v0
.end method
