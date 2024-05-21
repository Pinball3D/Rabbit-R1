.class public final Landroidx/compose/ui/modifier/MultiLocalMap;
.super Landroidx/compose/ui/modifier/ModifierLocalMap;
.source "ModifierLocalModifierNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B=\u00126\u0010\u0002\u001a\u001c\u0012\u0018\u0008\u0001\u0012\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u00a2\u0006\u0002\u0010\u0007J\u001a\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0090\u0002\u00a2\u0006\u0002\u0008\rJ&\u0010\u000e\u001a\u0004\u0018\u0001H\u000f\"\u0004\u0008\u0000\u0010\u000f2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u0005H\u0090\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J,\u0010\u0012\u001a\u00020\u0013\"\u0004\u0008\u0000\u0010\u000f2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00052\u0006\u0010\u0014\u001a\u0002H\u000fH\u0090\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R \u0010\u0008\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/ui/modifier/MultiLocalMap;",
        "Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "entries",
        "",
        "Lkotlin/Pair;",
        "Landroidx/compose/ui/modifier/ModifierLocal;",
        "",
        "([Lkotlin/Pair;)V",
        "map",
        "Landroidx/compose/runtime/snapshots/SnapshotStateMap;",
        "contains",
        "",
        "key",
        "contains$ui_release",
        "get",
        "T",
        "get$ui_release",
        "(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;",
        "set",
        "",
        "value",
        "set$ui_release",
        "(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lkotlin/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "+",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Landroidx/compose/ui/modifier/ModifierLocalMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateMapOf()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/modifier/MultiLocalMap;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 82
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMap([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public contains$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/modifier/MultiLocalMap;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 94
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/modifier/MultiLocalMap;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 91
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public set$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/modifier/MultiLocalMap;->map:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 86
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
