.class public abstract Lcom/chad/library/adapter/base/entity/JSectionEntity;
.super Ljava/lang/Object;
.source "JSectionEntity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/SectionEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemType()I
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/entity/JSectionEntity;->isHeader()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 17
    sget-object p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->Companion:Lcom/chad/library/adapter/base/entity/SectionEntity$Companion;

    const/16 p0, -0x63

    return p0

    .line 20
    :cond_0
    sget-object p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->Companion:Lcom/chad/library/adapter/base/entity/SectionEntity$Companion;

    const/16 p0, -0x64

    return p0
.end method
