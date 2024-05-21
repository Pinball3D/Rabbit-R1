.class public final Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion$DEFAULT$1;
.super Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;
.source "DpadSpanSizeLookup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion$DEFAULT$1",
        "Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;",
        "getSpanGroupIndex",
        "",
        "position",
        "spanCount",
        "getSpanIndex",
        "getSpanSize",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanGroupIndex(II)I
    .locals 0

    .line 56
    div-int/2addr p1, p2

    return p1
.end method

.method public getSpanIndex(II)I
    .locals 0

    .line 52
    rem-int/2addr p1, p2

    return p1
.end method

.method public getSpanSize(I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
