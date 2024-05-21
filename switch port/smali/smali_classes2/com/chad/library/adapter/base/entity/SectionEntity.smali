.class public interface abstract Lcom/chad/library/adapter/base/entity/SectionEntity;
.super Ljava/lang/Object;
.source "SectionEntity.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/entity/SectionEntity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008f\u0018\u0000 \t2\u00020\u0001:\u0001\tR\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\n\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/entity/SectionEntity;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "isHeader",
        "",
        "()Z",
        "itemType",
        "",
        "getItemType",
        "()I",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/chad/library/adapter/base/entity/SectionEntity$Companion;

.field public static final HEADER_TYPE:I = -0x63

.field public static final NORMAL_TYPE:I = -0x64


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/chad/library/adapter/base/entity/SectionEntity$Companion;->$$INSTANCE:Lcom/chad/library/adapter/base/entity/SectionEntity$Companion;

    sput-object v0, Lcom/chad/library/adapter/base/entity/SectionEntity;->Companion:Lcom/chad/library/adapter/base/entity/SectionEntity$Companion;

    return-void
.end method


# virtual methods
.method public getItemType()I
    .locals 0

    .line 17
    invoke-interface {p0}, Lcom/chad/library/adapter/base/entity/SectionEntity;->isHeader()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, -0x63

    goto :goto_0

    :cond_0
    const/16 p0, -0x64

    :goto_0
    return p0
.end method

.method public abstract isHeader()Z
.end method
