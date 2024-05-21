.class public final Landroidx/compose/material/ripple/RippleContainer;
.super Landroid/view/ViewGroup;
.source "RippleContainer.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRippleContainer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RippleContainer.android.kt\nandroidx/compose/material/ripple/RippleContainer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J0\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0006H\u0014J\u0018\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006H\u0014J\n\u0010\u0019\u001a\u00020\u000f*\u00020\u001aJ\n\u0010\u001b\u001a\u00020\u000c*\u00020\u001aR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/material/ripple/RippleContainer;",
        "Landroid/view/ViewGroup;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "MaxRippleHosts",
        "",
        "nextHostIndex",
        "rippleHostMap",
        "Landroidx/compose/material/ripple/RippleHostMap;",
        "rippleHosts",
        "",
        "Landroidx/compose/material/ripple/RippleHostView;",
        "unusedRippleHosts",
        "onLayout",
        "",
        "changed",
        "",
        "l",
        "t",
        "r",
        "b",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "disposeRippleIfNeeded",
        "Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;",
        "getRippleHostView",
        "material-ripple_release"
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
.field private final MaxRippleHosts:I

.field private nextHostIndex:I

.field private final rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

.field private final rippleHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material/ripple/RippleHostView;",
            ">;"
        }
    .end annotation
.end field

.field private final unusedRippleHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material/ripple/RippleHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    iput v0, p0, Landroidx/compose/material/ripple/RippleContainer;->MaxRippleHosts:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHosts:Ljava/util/List;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->unusedRippleHosts:Ljava/util/List;

    .line 48
    new-instance v2, Landroidx/compose/material/ripple/RippleHostMap;

    invoke-direct {v2}, Landroidx/compose/material/ripple/RippleHostMap;-><init>()V

    iput-object v2, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleContainer;->setClipChildren(Z)V

    .line 62
    new-instance v2, Landroidx/compose/material/ripple/RippleHostView;

    invoke-direct {v2, p1}, Landroidx/compose/material/ripple/RippleHostView;-><init>(Landroid/content/Context;)V

    move-object p1, v2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/RippleContainer;->addView(Landroid/view/View;)V

    .line 63
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput p1, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    .line 70
    sget v0, Landroidx/compose/ui/R$id;->hide_in_inspector_tag:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/compose/material/ripple/RippleContainer;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final disposeRippleIfNeeded(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->resetHostView()V

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    .line 144
    invoke-virtual {v0, p1}, Landroidx/compose/material/ripple/RippleHostMap;->get(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Landroidx/compose/material/ripple/RippleHostView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroidx/compose/material/ripple/RippleHostView;->disposeRipple()V

    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    .line 148
    invoke-virtual {v1, p1}, Landroidx/compose/material/ripple/RippleHostMap;->remove(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)V

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleContainer;->unusedRippleHosts:Ljava/util/List;

    .line 150
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getRippleHostView(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Landroidx/compose/material/ripple/RippleHostView;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    .line 87
    invoke-virtual {v0, p1}, Landroidx/compose/material/ripple/RippleHostMap;->get(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Landroidx/compose/material/ripple/RippleHostView;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->unusedRippleHosts:Ljava/util/List;

    .line 93
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeFirstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHosts:Ljava/util/List;

    .line 98
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 99
    new-instance v0, Landroidx/compose/material/ripple/RippleHostView;

    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/compose/material/ripple/RippleHostView;-><init>(Landroid/content/Context;)V

    .line 101
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/compose/material/ripple/RippleContainer;->addView(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHosts:Ljava/util/List;

    .line 103
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHosts:Ljava/util/List;

    iget v1, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    .line 112
    invoke-virtual {v1, v0}, Landroidx/compose/material/ripple/RippleHostMap;->get(Landroidx/compose/material/ripple/RippleHostView;)Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {v1}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->resetHostView()V

    iget-object v2, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    .line 119
    invoke-virtual {v2, v1}, Landroidx/compose/material/ripple/RippleHostMap;->remove(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)V

    .line 120
    invoke-virtual {v0}, Landroidx/compose/material/ripple/RippleHostView;->disposeRipple()V

    :cond_2
    :goto_0
    iget v1, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    iget v2, p0, Landroidx/compose/material/ripple/RippleContainer;->MaxRippleHosts:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    :cond_4
    :goto_1
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/compose/material/ripple/RippleHostMap;

    .line 133
    invoke-virtual {p0, p1, v0}, Landroidx/compose/material/ripple/RippleHostMap;->set(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;Landroidx/compose/material/ripple/RippleHostView;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1, p1}, Landroidx/compose/material/ripple/RippleContainer;->setMeasuredDimension(II)V

    return-void
.end method
