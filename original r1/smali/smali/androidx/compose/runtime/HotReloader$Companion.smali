.class public final Landroidx/compose/runtime/HotReloader$Companion;
.super Ljava/lang/Object;
.source "Composition.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/HotReloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010\u0003\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u0005J\u0013\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0000\u00a2\u0006\u0002\u0008\tJ\u0015\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008\rJ\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0001H\u0002J\u0010\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0002J\u0015\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0001H\u0000\u00a2\u0006\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/runtime/HotReloader$Companion;",
        "",
        "()V",
        "clearErrors",
        "",
        "clearErrors$runtime_release",
        "getCurrentErrors",
        "",
        "Landroidx/compose/runtime/RecomposerErrorInfo;",
        "getCurrentErrors$runtime_release",
        "invalidateGroupsWithKey",
        "key",
        "",
        "invalidateGroupsWithKey$runtime_release",
        "loadStateAndCompose",
        "token",
        "saveStateAndDispose",
        "context",
        "simulateHotReload",
        "simulateHotReload$runtime_release",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/HotReloader$Companion;-><init>()V

    return-void
.end method

.method private final loadStateAndCompose(Ljava/lang/Object;)V
    .locals 0

    .line 1202
    sget-object p0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Recomposer$Companion;->loadStateAndComposeForHotReload$runtime_release(Ljava/lang/Object;)V

    return-void
.end method

.method private final saveStateAndDispose(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1196
    sget-object p0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer$Companion;->saveStateAndDisposeForHotReload$runtime_release()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearErrors$runtime_release()V
    .locals 0

    .line 1222
    sget-object p0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer$Companion;->clearErrors$runtime_release()V

    return-void
.end method

.method public final getCurrentErrors$runtime_release()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposerErrorInfo;",
            ">;"
        }
    .end annotation

    .line 1217
    sget-object p0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer$Companion;->getCurrentErrors$runtime_release()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invalidateGroupsWithKey$runtime_release(I)V
    .locals 0

    .line 1212
    sget-object p0, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Recomposer$Companion;->invalidateGroupsWithKey$runtime_release(I)V

    return-void
.end method

.method public final simulateHotReload$runtime_release(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    invoke-direct {p0, p1}, Landroidx/compose/runtime/HotReloader$Companion;->saveStateAndDispose(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/HotReloader$Companion;->loadStateAndCompose(Ljava/lang/Object;)V

    return-void
.end method
