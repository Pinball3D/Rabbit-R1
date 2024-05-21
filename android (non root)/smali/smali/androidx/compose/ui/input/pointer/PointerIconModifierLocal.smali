.class final Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;
.super Ljava/lang/Object;
.source "PointerIcon.kt"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerIcon;
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;
.implements Landroidx/compose/ui/modifier/ModifierLocalConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/input/pointer/PointerIcon;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;",
        ">;",
        "Landroidx/compose/ui/modifier/ModifierLocalConsumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointerIcon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointerIcon.kt\nandroidx/compose/ui/input/pointer/PointerIconModifierLocal\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,242:1\n81#2:243\n107#2,2:244\n*S KotlinDebug\n*F\n+ 1 PointerIcon.kt\nandroidx/compose/ui/input/pointer/PointerIconModifierLocal\n*L\n150#1:243\n150#1:244,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u00022\u00020\u0003B+\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u001f\u001a\u00020\tJ\u0006\u0010 \u001a\u00020\tJ\u0012\u0010 \u001a\u00020\t2\u0008\u0010!\u001a\u0004\u0018\u00010\u0000H\u0002J\u0008\u0010\"\u001a\u00020\u0006H\u0002J\u0010\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020%H\u0016J\u0008\u0010&\u001a\u00020\tH\u0002J\u0008\u0010\'\u001a\u00020\tH\u0002J\u0006\u0010(\u001a\u00020\u0006J,\u0010)\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0014\u0010\u0007\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\t0\u0008R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u001c\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0007\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R/\u0010\u0016\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00008B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u0000X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0018\u00a8\u0006*"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;",
        "Landroidx/compose/ui/input/pointer/PointerIcon;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider;",
        "Landroidx/compose/ui/modifier/ModifierLocalConsumer;",
        "icon",
        "overrideDescendants",
        "",
        "onSetIcon",
        "Lkotlin/Function1;",
        "",
        "(Landroidx/compose/ui/input/pointer/PointerIcon;ZLkotlin/jvm/functions/Function1;)V",
        "isHovered",
        "()Z",
        "setHovered",
        "(Z)V",
        "isPaused",
        "setPaused",
        "key",
        "Landroidx/compose/ui/modifier/ProvidableModifierLocal;",
        "getKey",
        "()Landroidx/compose/ui/modifier/ProvidableModifierLocal;",
        "<set-?>",
        "parentInfo",
        "getParentInfo",
        "()Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;",
        "setParentInfo",
        "(Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;)V",
        "parentInfo$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "value",
        "getValue",
        "enter",
        "exit",
        "parent",
        "hasOverride",
        "onModifierLocalsUpdated",
        "scope",
        "Landroidx/compose/ui/modifier/ModifierLocalReadScope;",
        "pause",
        "reassignIcon",
        "shouldUpdatePointerIcon",
        "updateValues",
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
.field private icon:Landroidx/compose/ui/input/pointer/PointerIcon;

.field private isHovered:Z

.field private isPaused:Z

.field private final key:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;",
            ">;"
        }
    .end annotation
.end field

.field private onSetIcon:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerIcon;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private overrideDescendants:Z

.field private final parentInfo$delegate:Landroidx/compose/runtime/MutableState;

.field private final value:Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/PointerIcon;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerIcon;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerIcon;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSetIcon"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    iput-boolean p2, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->overrideDescendants:Z

    iput-object p3, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->onSetIcon:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    const/4 p2, 0x2

    .line 150
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->parentInfo$delegate:Landroidx/compose/runtime/MutableState;

    .line 158
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerIconKt;->access$getModifierLocalPointerIcon$p()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->key:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    iput-object p0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->value:Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    return-void
.end method

.method private final exit(Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->isHovered:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->onSetIcon:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    .line 198
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 200
    :cond_0
    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->reassignIcon()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->isHovered:Z

    return-void
.end method

.method private final getParentInfo()Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->parentInfo$delegate:Landroidx/compose/runtime/MutableState;

    .line 150
    check-cast p0, Landroidx/compose/runtime/State;

    .line 243
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    return-object p0
.end method

.method private final hasOverride()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->overrideDescendants:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 179
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->getParentInfo()Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->hasOverride()Z

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->isPaused:Z

    .line 220
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->getParentInfo()Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->pause()V

    :cond_0
    return-void
.end method

.method private final reassignIcon()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->isPaused:Z

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->isHovered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->onSetIcon:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 209
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->getParentInfo()Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->onSetIcon:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    .line 212
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->getParentInfo()Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->reassignIcon()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final setParentInfo(Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->parentInfo$delegate:Landroidx/compose/runtime/MutableState;

    .line 244
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->isHovered:Z

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->isPaused:Z

    if-nez v0, :cond_1

    .line 185
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->getParentInfo()Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->pause()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->onSetIcon:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 186
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final exit()V
    .locals 1

    .line 191
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->getParentInfo()Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->exit(Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;)V

    return-void
.end method

.method public getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->key:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object p0
.end method

.method public getValue()Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->value:Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->getValue()Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    move-result-object p0

    return-object p0
.end method

.method public final isHovered()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->isHovered:Z

    return p0
.end method

.method public final isPaused()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->isPaused:Z

    return p0
.end method

.method public onModifierLocalsUpdated(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V
    .locals 2

    const-string/jumbo v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->getParentInfo()Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    move-result-object v0

    .line 163
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerIconKt;->access$getModifierLocalPointerIcon$p()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-interface {p1, v1}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->setParentInfo(Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;)V

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->getParentInfo()Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    move-result-object p1

    if-nez p1, :cond_0

    .line 168
    invoke-direct {p0, v0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->exit(Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;)V

    .line 169
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal$onModifierLocalsUpdated$1$1;->INSTANCE:Landroidx/compose/ui/input/pointer/PointerIconModifierLocal$onModifierLocalsUpdated$1$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->onSetIcon:Lkotlin/jvm/functions/Function1;

    :cond_0
    return-void
.end method

.method public final setHovered(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->isHovered:Z

    return-void
.end method

.method public final setPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->isPaused:Z

    return-void
.end method

.method public final shouldUpdatePointerIcon()Z
    .locals 0

    .line 174
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->getParentInfo()Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 175
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->hasOverride()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final updateValues(Landroidx/compose/ui/input/pointer/PointerIcon;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerIcon;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerIcon;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSetIcon"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 228
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->isHovered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->isPaused:Z

    if-nez v0, :cond_0

    .line 230
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    iput-boolean p2, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->overrideDescendants:Z

    iput-object p3, p0, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->onSetIcon:Lkotlin/jvm/functions/Function1;

    return-void
.end method
