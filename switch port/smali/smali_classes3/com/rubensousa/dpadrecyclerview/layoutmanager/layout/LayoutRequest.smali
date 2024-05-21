.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;
.super Ljava/lang/Object;
.source "LayoutRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J/\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00042\u0019\u0008\u0004\u0010/\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020-00\u00a2\u0006\u0002\u00081H\u0086\u0008\u00f8\u0001\u0000J\u0006\u00102\u001a\u00020-J6\u00103\u001a\u00020-2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u001c2\u0006\u00104\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020&J\u0006\u00105\u001a\u00020\u001cJ\u0006\u00106\u001a\u00020\u001cJ\u0006\u00107\u001a\u00020-J\u000e\u00108\u001a\u00020-2\u0006\u00109\u001a\u00020\u0004J/\u0010:\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00042\u0019\u0008\u0004\u0010/\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020-00\u00a2\u0006\u0002\u00081H\u0086\u0008\u00f8\u0001\u0000J\u000e\u0010;\u001a\u00020-2\u0006\u00109\u001a\u00020\u0004J\u000e\u0010<\u001a\u00020-2\u0006\u0010=\u001a\u00020\u0004J\u0016\u0010>\u001a\u00020-2\u0006\u0010?\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u0004J\u000e\u0010A\u001a\u00020-2\u0006\u0010B\u001a\u00020\u0004J\u000e\u0010C\u001a\u00020-2\u0006\u0010D\u001a\u00020\u001cJ\u000e\u0010E\u001a\u00020-2\u0006\u0010D\u001a\u00020\u001cJ\u000e\u0010F\u001a\u00020-2\u0006\u0010G\u001a\u00020\u001cJ\u000e\u0010H\u001a\u00020-2\u0006\u0010I\u001a\u00020\u001cJ\u0008\u0010J\u001a\u00020KH\u0016R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u001e\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007R\u001e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007R\u001e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0007R\u001e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0007R\u001e\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u001e\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001eR\u001e\u0010 \u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001eR\u001e\u0010!\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001eR\u001e\u0010\"\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001eR\u001e\u0010#\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001eR\u001e\u0010$\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0007R\u001e\u0010\'\u001a\u00020&2\u0006\u0010\u0003\u001a\u00020&@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u001e\u0010*\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u001c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001e\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006L"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;",
        "",
        "()V",
        "<set-?>",
        "",
        "checkpoint",
        "getCheckpoint",
        "()I",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;",
        "currentItemDirection",
        "getCurrentItemDirection",
        "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;",
        "currentPosition",
        "getCurrentPosition",
        "defaultItemDirection",
        "getDefaultItemDirection",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;",
        "direction",
        "getDirection",
        "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;",
        "extraLayoutSpaceEnd",
        "getExtraLayoutSpaceEnd",
        "extraLayoutSpaceStart",
        "getExtraLayoutSpaceStart",
        "fillSpace",
        "getFillSpace",
        "gravity",
        "getGravity",
        "",
        "isInfinite",
        "()Z",
        "isLayingOutScrap",
        "isLoopingAllowed",
        "isLoopingStart",
        "isRecyclingEnabled",
        "isVertical",
        "itemCount",
        "getItemCount",
        "Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;",
        "loopDirection",
        "getLoopDirection",
        "()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;",
        "reverseLayout",
        "getReverseLayout",
        "append",
        "",
        "referencePosition",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "clear",
        "init",
        "infinite",
        "isAppending",
        "isPrepending",
        "moveToNextPosition",
        "offsetCheckpoint",
        "offset",
        "prepend",
        "setCheckpoint",
        "setCurrentPosition",
        "position",
        "setExtraLayoutSpace",
        "start",
        "end",
        "setFillSpace",
        "space",
        "setIsLoopingAllowed",
        "isLooping",
        "setIsLoopingStart",
        "setLayingOutScrap",
        "layoutScrap",
        "setRecyclingEnabled",
        "enabled",
        "toString",
        "",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private checkpoint:I

.field private currentItemDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

.field private currentPosition:I

.field private defaultItemDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

.field private direction:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

.field private extraLayoutSpaceEnd:I

.field private extraLayoutSpaceStart:I

.field private fillSpace:I

.field private gravity:I

.field private isInfinite:Z

.field private isLayingOutScrap:Z

.field private isLoopingAllowed:Z

.field private isLoopingStart:Z

.field private isRecyclingEnabled:Z

.field private isVertical:Z

.field private itemCount:I

.field private loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

.field private reverseLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->direction:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    .line 34
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->TAIL:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->defaultItemDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    .line 38
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->TAIL:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentItemDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isRecyclingEnabled:Z

    const v1, 0x800003

    iput v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->gravity:I

    iput-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isVertical:Z

    .line 81
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;->NONE:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    return-void
.end method

.method public static final synthetic access$setCurrentItemDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentItemDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    return-void
.end method

.method public static final synthetic access$setCurrentPosition$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentPosition:I

    return-void
.end method

.method public static final synthetic access$setDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->direction:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    return-void
.end method


# virtual methods
.method public final append(ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->clear()V

    .line 194
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-static {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)V

    .line 195
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getDefaultItemDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentItemDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;)V

    .line 196
    invoke-static {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentPosition$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;I)V

    .line 197
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->moveToNextPosition()V

    .line 198
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentPosition:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->extraLayoutSpaceEnd:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->extraLayoutSpaceStart:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->fillSpace:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->checkpoint:I

    return-void
.end method

.method public final getCheckpoint()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->checkpoint:I

    return p0
.end method

.method public final getCurrentItemDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentItemDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    return-object p0
.end method

.method public final getCurrentPosition()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentPosition:I

    return p0
.end method

.method public final getDefaultItemDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->defaultItemDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    return-object p0
.end method

.method public final getDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->direction:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    return-object p0
.end method

.method public final getExtraLayoutSpaceEnd()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->extraLayoutSpaceEnd:I

    return p0
.end method

.method public final getExtraLayoutSpaceStart()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->extraLayoutSpaceStart:I

    return p0
.end method

.method public final getFillSpace()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->fillSpace:I

    return p0
.end method

.method public final getGravity()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->gravity:I

    return p0
.end method

.method public final getItemCount()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->itemCount:I

    return p0
.end method

.method public final getLoopDirection()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    return-object p0
.end method

.method public final getReverseLayout()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->reverseLayout:Z

    return p0
.end method

.method public final init(IIZZZLcom/rubensousa/dpadrecyclerview/DpadLoopDirection;)V
    .locals 1

    const-string v0, "loopDirection"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->itemCount:I

    iput-boolean p4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->reverseLayout:Z

    iput p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->gravity:I

    iput-boolean p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isVertical:Z

    iput-boolean p5, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isInfinite:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isRecyclingEnabled:Z

    if-eqz p4, :cond_0

    .line 108
    sget-object p2, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->HEAD:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    goto :goto_0

    .line 110
    :cond_0
    sget-object p2, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->TAIL:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    :goto_0
    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->defaultItemDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    if-nez p5, :cond_1

    iput-object p6, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    goto :goto_1

    .line 116
    :cond_1
    sget-object p2, Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;->NONE:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    :goto_1
    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->defaultItemDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentItemDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isLoopingAllowed:Z

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isLoopingStart:Z

    return-void
.end method

.method public final isAppending()Z
    .locals 1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->direction:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    .line 173
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInfinite()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isInfinite:Z

    return p0
.end method

.method public final isLayingOutScrap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isLayingOutScrap:Z

    return p0
.end method

.method public final isLoopingAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isLoopingAllowed:Z

    return p0
.end method

.method public final isLoopingStart()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isLoopingStart:Z

    return p0
.end method

.method public final isPrepending()Z
    .locals 1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->direction:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    .line 171
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->START:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRecyclingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isRecyclingEnabled:Z

    return p0
.end method

.method public final isVertical()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isVertical:Z

    return p0
.end method

.method public final moveToNextPosition()V
    .locals 3

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentPosition:I

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentItemDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    .line 152
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->getValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentPosition:I

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    .line 153
    sget-object v1, Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;->NONE:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isLoopingAllowed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentPosition:I

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->itemCount:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentPosition:I

    return-void

    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->loopDirection:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    .line 162
    sget-object v1, Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;->MIN_MAX:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->itemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentPosition:I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isLoopingStart:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->itemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentPosition:I

    iput-boolean v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isLoopingStart:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final offsetCheckpoint(I)V
    .locals 1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->checkpoint:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->checkpoint:I

    return-void
.end method

.method public final prepend(ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->clear()V

    .line 203
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->START:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-static {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)V

    .line 204
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getDefaultItemDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->opposite()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentItemDirection$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;)V

    .line 205
    invoke-static {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->access$setCurrentPosition$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;I)V

    .line 206
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->moveToNextPosition()V

    .line 207
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setCheckpoint(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->checkpoint:I

    return-void
.end method

.method public final setCurrentPosition(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentPosition:I

    return-void
.end method

.method public final setExtraLayoutSpace(II)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->extraLayoutSpaceStart:I

    iput p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->extraLayoutSpaceEnd:I

    return-void
.end method

.method public final setFillSpace(I)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->fillSpace:I

    return-void
.end method

.method public final setIsLoopingAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isLoopingAllowed:Z

    return-void
.end method

.method public final setIsLoopingStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isLoopingStart:Z

    return-void
.end method

.method public final setLayingOutScrap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isLayingOutScrap:Z

    return-void
.end method

.method public final setRecyclingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isRecyclingEnabled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutRequest(direction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->direction:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fillSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->fillSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->checkpoint:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
