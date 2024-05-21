.class public final Landroidx/compose/material3/RichTooltipColors;
.super Ljava/lang/Object;
.source "Tooltip.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B(\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u001c\u0010\u0006\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u000b\u0010\tR\u001c\u0010\u0004\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u000c\u0010\tR\u001c\u0010\u0005\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\r\u0010\t\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/material3/RichTooltipColors;",
        "",
        "containerColor",
        "Landroidx/compose/ui/graphics/Color;",
        "contentColor",
        "titleContentColor",
        "actionContentColor",
        "(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getActionContentColor-0d7_KjU",
        "()J",
        "J",
        "getContainerColor-0d7_KjU",
        "getContentColor-0d7_KjU",
        "getTitleContentColor-0d7_KjU",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field public static final $stable:I


# instance fields
.field private final actionContentColor:J

.field private final containerColor:J

.field private final contentColor:J

.field private final titleContentColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(JJJJ)V
    .locals 0

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/RichTooltipColors;->containerColor:J

    iput-wide p3, p0, Landroidx/compose/material3/RichTooltipColors;->contentColor:J

    iput-wide p5, p0, Landroidx/compose/material3/RichTooltipColors;->titleContentColor:J

    iput-wide p7, p0, Landroidx/compose/material3/RichTooltipColors;->actionContentColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroidx/compose/material3/RichTooltipColors;-><init>(JJJJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 407
    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/RichTooltipColors;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Landroidx/compose/material3/RichTooltipColors;->containerColor:J

    .line 409
    check-cast p1, Landroidx/compose/material3/RichTooltipColors;

    iget-wide v5, p1, Landroidx/compose/material3/RichTooltipColors;->containerColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/material3/RichTooltipColors;->contentColor:J

    .line 410
    iget-wide v5, p1, Landroidx/compose/material3/RichTooltipColors;->contentColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/compose/material3/RichTooltipColors;->titleContentColor:J

    .line 411
    iget-wide v5, p1, Landroidx/compose/material3/RichTooltipColors;->titleContentColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Landroidx/compose/material3/RichTooltipColors;->actionContentColor:J

    .line 412
    iget-wide p0, p1, Landroidx/compose/material3/RichTooltipColors;->actionContentColor:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getActionContentColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/RichTooltipColors;->actionContentColor:J

    return-wide v0
.end method

.method public final getContainerColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/RichTooltipColors;->containerColor:J

    return-wide v0
.end method

.method public final getContentColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/RichTooltipColors;->contentColor:J

    return-wide v0
.end method

.method public final getTitleContentColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/RichTooltipColors;->titleContentColor:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/material3/RichTooltipColors;->containerColor:J

    .line 418
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material3/RichTooltipColors;->contentColor:J

    .line 419
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material3/RichTooltipColors;->titleContentColor:J

    .line 420
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material3/RichTooltipColors;->actionContentColor:J

    .line 421
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
