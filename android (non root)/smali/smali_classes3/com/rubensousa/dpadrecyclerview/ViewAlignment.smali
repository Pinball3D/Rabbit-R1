.class public interface abstract Lcom/rubensousa/dpadrecyclerview/ViewAlignment;
.super Ljava/lang/Object;
.source "ViewAlignment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/ViewAlignment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008f\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0005R\u0012\u0010\u000c\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0005R\u0012\u0010\r\u001a\u00020\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/ViewAlignment;",
        "",
        "alignToBaseline",
        "",
        "getAlignToBaseline",
        "()Z",
        "fraction",
        "",
        "getFraction",
        "()F",
        "includePadding",
        "getIncludePadding",
        "isFractionEnabled",
        "offset",
        "",
        "getOffset",
        "()I",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/rubensousa/dpadrecyclerview/ViewAlignment$Companion;

.field public static final DEFAULT_FRACTION:F = 0.5f

.field public static final DEFAULT_OFFSET:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/ViewAlignment$Companion;->$$INSTANCE:Lcom/rubensousa/dpadrecyclerview/ViewAlignment$Companion;

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/ViewAlignment;->Companion:Lcom/rubensousa/dpadrecyclerview/ViewAlignment$Companion;

    return-void
.end method


# virtual methods
.method public abstract getAlignToBaseline()Z
.end method

.method public abstract getFraction()F
.end method

.method public abstract getIncludePadding()Z
.end method

.method public abstract getOffset()I
.end method

.method public abstract isFractionEnabled()Z
.end method
