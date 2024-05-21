.class public final Landroidx/compose/material3/ListItemType$Companion;
.super Ljava/lang/Object;
.source "ListItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/ListItemType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0000\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u000b\u0010\u0006\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/material3/ListItemType$Companion;",
        "",
        "()V",
        "OneLine",
        "Landroidx/compose/material3/ListItemType;",
        "getOneLine-AlXitO8",
        "()I",
        "I",
        "ThreeLine",
        "getThreeLine-AlXitO8",
        "TwoLine",
        "getTwoLine-AlXitO8",
        "getListItemType",
        "hasOverline",
        "",
        "hasSupporting",
        "getListItemType-7AlIA9s$material3_release",
        "(ZZ)I",
        "material3_release"
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

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/ListItemType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getListItemType-7AlIA9s$material3_release(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 422
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemType$Companion;->getThreeLine-AlXitO8()I

    move-result p0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 424
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemType$Companion;->getOneLine-AlXitO8()I

    move-result p0

    goto :goto_1

    .line 423
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/material3/ListItemType$Companion;->getTwoLine-AlXitO8()I

    move-result p0

    :goto_1
    return p0
.end method

.method public final getOneLine-AlXitO8()I
    .locals 0

    .line 412
    invoke-static {}, Landroidx/compose/material3/ListItemType;->access$getOneLine$cp()I

    move-result p0

    return p0
.end method

.method public final getThreeLine-AlXitO8()I
    .locals 0

    .line 418
    invoke-static {}, Landroidx/compose/material3/ListItemType;->access$getThreeLine$cp()I

    move-result p0

    return p0
.end method

.method public final getTwoLine-AlXitO8()I
    .locals 0

    .line 415
    invoke-static {}, Landroidx/compose/material3/ListItemType;->access$getTwoLine$cp()I

    move-result p0

    return p0
.end method
