.class public Lcom/chad/library/adapter/base/module/BaseUpFetchModule;
.super Ljava/lang/Object;
.source "UpFetchModule.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/listener/UpFetchListenerImp;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0017J\u0012\u0010\u0018\u001a\u00020\u00152\u0008\u0010\u0019\u001a\u0004\u0018\u00010\rH\u0016R\u0016\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\tR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/module/BaseUpFetchModule;",
        "Lcom/chad/library/adapter/base/listener/UpFetchListenerImp;",
        "baseQuickAdapter",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V",
        "isUpFetchEnable",
        "",
        "()Z",
        "setUpFetchEnable",
        "(Z)V",
        "isUpFetching",
        "setUpFetching",
        "mUpFetchListener",
        "Lcom/chad/library/adapter/base/listener/OnUpFetchListener;",
        "startUpFetchPosition",
        "",
        "getStartUpFetchPosition",
        "()I",
        "setStartUpFetchPosition",
        "(I)V",
        "autoUpFetch",
        "",
        "position",
        "autoUpFetch$com_github_CymChad_brvah",
        "setOnUpFetchListener",
        "listener",
        "com.github.CymChad.brvah"
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
.field private final baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;"
        }
    .end annotation
.end field

.field private isUpFetchEnable:Z

.field private isUpFetching:Z

.field private mUpFetchListener:Lcom/chad/library/adapter/base/listener/OnUpFetchListener;

.field private startUpFetchPosition:I


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    const/4 p1, 0x1

    iput p1, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->startUpFetchPosition:I

    return-void
.end method


# virtual methods
.method public final autoUpFetch$com_github_CymChad_brvah(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->isUpFetchEnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->isUpFetching:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->startUpFetchPosition:I

    if-gt p1, v0, :cond_1

    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->mUpFetchListener:Lcom/chad/library/adapter/base/listener/OnUpFetchListener;

    if-eqz p0, :cond_1

    .line 43
    invoke-interface {p0}, Lcom/chad/library/adapter/base/listener/OnUpFetchListener;->onUpFetch()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getStartUpFetchPosition()I
    .locals 0

    iget p0, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->startUpFetchPosition:I

    return p0
.end method

.method public final isUpFetchEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->isUpFetchEnable:Z

    return p0
.end method

.method public final isUpFetching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->isUpFetching:Z

    return p0
.end method

.method public setOnUpFetchListener(Lcom/chad/library/adapter/base/listener/OnUpFetchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->mUpFetchListener:Lcom/chad/library/adapter/base/listener/OnUpFetchListener;

    return-void
.end method

.method public final setStartUpFetchPosition(I)V
    .locals 0

    iput p1, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->startUpFetchPosition:I

    return-void
.end method

.method public final setUpFetchEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->isUpFetchEnable:Z

    return-void
.end method

.method public final setUpFetching(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->isUpFetching:Z

    return-void
.end method
