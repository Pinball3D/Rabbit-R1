.class final Landroidx/compose/ui/draw/DrawWithCacheElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "DrawModifier.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001e\u0012\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u00c6\u0003J$\u0010\u000c\u001a\u00020\u00002\u0019\u0008\u0002\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u00c6\u0001J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u000c\u0010\u0019\u001a\u00020\u0017*\u00020\u001aH\u0016R\"\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/ui/draw/DrawWithCacheElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;",
        "onBuildDrawCache",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/draw/CacheDrawScope;",
        "Landroidx/compose/ui/draw/DrawResult;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getOnBuildDrawCache",
        "()Lkotlin/jvm/functions/Function1;",
        "component1",
        "copy",
        "create",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "update",
        "",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
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
.field private final onBuildDrawCache:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "Landroidx/compose/ui/draw/DrawResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "Landroidx/compose/ui/draw/DrawResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onBuildDrawCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/draw/DrawWithCacheElement;->onBuildDrawCache:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/draw/DrawWithCacheElement;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/draw/DrawWithCacheElement;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/draw/DrawWithCacheElement;->onBuildDrawCache:Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/draw/DrawWithCacheElement;->copy(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawWithCacheElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "Landroidx/compose/ui/draw/DrawResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/draw/DrawWithCacheElement;->onBuildDrawCache:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final copy(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawWithCacheElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "Landroidx/compose/ui/draw/DrawResult;",
            ">;)",
            "Landroidx/compose/ui/draw/DrawWithCacheElement;"
        }
    .end annotation

    const-string p0, "onBuildDrawCache"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/compose/ui/draw/DrawWithCacheElement;

    invoke-direct {p0, p1}, Landroidx/compose/ui/draw/DrawWithCacheElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 140
    invoke-virtual {p0}, Landroidx/compose/ui/draw/DrawWithCacheElement;->create()Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public create()Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;
    .locals 2

    .line 144
    new-instance v0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

    new-instance v1, Landroidx/compose/ui/draw/CacheDrawScope;

    invoke-direct {v1}, Landroidx/compose/ui/draw/CacheDrawScope;-><init>()V

    iget-object p0, p0, Landroidx/compose/ui/draw/DrawWithCacheElement;->onBuildDrawCache:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;-><init>(Landroidx/compose/ui/draw/CacheDrawScope;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/draw/DrawWithCacheElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/draw/DrawWithCacheElement;

    iget-object p0, p0, Landroidx/compose/ui/draw/DrawWithCacheElement;->onBuildDrawCache:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Landroidx/compose/ui/draw/DrawWithCacheElement;->onBuildDrawCache:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getOnBuildDrawCache()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "Landroidx/compose/ui/draw/DrawResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/draw/DrawWithCacheElement;->onBuildDrawCache:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/draw/DrawWithCacheElement;->onBuildDrawCache:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawWithCache"

    .line 152
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "onBuildDrawCache"

    iget-object p0, p0, Landroidx/compose/ui/draw/DrawWithCacheElement;->onBuildDrawCache:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DrawWithCacheElement(onBuildDrawCache="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/draw/DrawWithCacheElement;->onBuildDrawCache:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 140
    check-cast p1, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/draw/DrawWithCacheElement;->update(Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/draw/DrawWithCacheElement;->onBuildDrawCache:Lkotlin/jvm/functions/Function1;

    .line 148
    invoke-virtual {p1, p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->setBlock(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
