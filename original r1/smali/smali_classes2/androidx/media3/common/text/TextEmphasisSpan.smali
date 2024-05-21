.class public final Landroidx/media3/common/text/TextEmphasisSpan;
.super Ljava/lang/Object;
.source "TextEmphasisSpan.java"

# interfaces
.implements Landroidx/media3/common/text/LanguageFeatureSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/text/TextEmphasisSpan$MarkFill;,
        Landroidx/media3/common/text/TextEmphasisSpan$MarkShape;
    }
.end annotation


# static fields
.field public static final MARK_FILL_FILLED:I = 0x1

.field public static final MARK_FILL_OPEN:I = 0x2

.field public static final MARK_FILL_UNKNOWN:I = 0x0

.field public static final MARK_SHAPE_CIRCLE:I = 0x1

.field public static final MARK_SHAPE_DOT:I = 0x2

.field public static final MARK_SHAPE_NONE:I = 0x0

.field public static final MARK_SHAPE_SESAME:I = 0x3


# instance fields
.field public markFill:I

.field public markShape:I

.field public final position:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/text/TextEmphasisSpan;->markShape:I

    iput p2, p0, Landroidx/media3/common/text/TextEmphasisSpan;->markFill:I

    iput p3, p0, Landroidx/media3/common/text/TextEmphasisSpan;->position:I

    return-void
.end method
