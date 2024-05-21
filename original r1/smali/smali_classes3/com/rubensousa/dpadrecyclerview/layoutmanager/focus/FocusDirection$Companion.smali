.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;
.super Ljava/lang/Object;
.source "FocusDirection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0007J \u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;",
        "",
        "()V",
        "from",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;",
        "direction",
        "",
        "isVertical",
        "",
        "reverseLayout",
        "getAbsoluteDirection",
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
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(IZZ)Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;->getAbsoluteDirection(IZZ)I

    move-result p0

    const/4 p1, 0x0

    const/16 v0, 0x82

    const/16 v1, 0x42

    const/16 v2, 0x21

    const/16 v3, 0x11

    if-eqz p2, :cond_8

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 64
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 69
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 63
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_7

    .line 66
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_7
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_8
    if-eq p0, v3, :cond_f

    if-eq p0, v2, :cond_d

    if-eq p0, v1, :cond_b

    if-eq p0, v0, :cond_9

    goto :goto_0

    :cond_9
    if-eqz p3, :cond_a

    .line 82
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_a
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_b
    if-eqz p3, :cond_c

    .line 79
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_c
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_d
    if-eqz p3, :cond_e

    .line 81
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_e
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_f
    if-eqz p3, :cond_10

    .line 76
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    goto :goto_0

    :cond_10
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    :goto_0
    return-object p1
.end method

.method public final getAbsoluteDirection(IZZ)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eq p1, p0, :cond_0

    return p1

    :cond_0
    if-eqz p2, :cond_2

    if-ne p1, v0, :cond_1

    const/16 p0, 0x82

    goto :goto_1

    :cond_1
    const/16 p0, 0x21

    goto :goto_1

    :cond_2
    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, p3

    if-eqz p0, :cond_4

    const/16 p0, 0x42

    goto :goto_1

    :cond_4
    const/16 p0, 0x11

    :goto_1
    return p0
.end method
