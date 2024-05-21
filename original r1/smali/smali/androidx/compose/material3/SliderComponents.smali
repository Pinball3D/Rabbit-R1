.class final enum Landroidx/compose/material3/SliderComponents;
.super Ljava/lang/Enum;
.source "Slider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/material3/SliderComponents;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/material3/SliderComponents;",
        "",
        "(Ljava/lang/String;I)V",
        "THUMB",
        "TRACK",
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


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/material3/SliderComponents;

.field public static final enum THUMB:Landroidx/compose/material3/SliderComponents;

.field public static final enum TRACK:Landroidx/compose/material3/SliderComponents;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/material3/SliderComponents;
    .locals 2

    sget-object v0, Landroidx/compose/material3/SliderComponents;->THUMB:Landroidx/compose/material3/SliderComponents;

    sget-object v1, Landroidx/compose/material3/SliderComponents;->TRACK:Landroidx/compose/material3/SliderComponents;

    filled-new-array {v0, v1}, [Landroidx/compose/material3/SliderComponents;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1459
    new-instance v0, Landroidx/compose/material3/SliderComponents;

    const-string v1, "THUMB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/SliderComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/SliderComponents;->THUMB:Landroidx/compose/material3/SliderComponents;

    .line 1460
    new-instance v0, Landroidx/compose/material3/SliderComponents;

    const-string v1, "TRACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/SliderComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/SliderComponents;->TRACK:Landroidx/compose/material3/SliderComponents;

    invoke-static {}, Landroidx/compose/material3/SliderComponents;->$values()[Landroidx/compose/material3/SliderComponents;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SliderComponents;->$VALUES:[Landroidx/compose/material3/SliderComponents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1458
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material3/SliderComponents;
    .locals 1

    const-class v0, Landroidx/compose/material3/SliderComponents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/SliderComponents;

    return-object p0
.end method

.method public static values()[Landroidx/compose/material3/SliderComponents;
    .locals 1

    sget-object v0, Landroidx/compose/material3/SliderComponents;->$VALUES:[Landroidx/compose/material3/SliderComponents;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/material3/SliderComponents;

    return-object v0
.end method
