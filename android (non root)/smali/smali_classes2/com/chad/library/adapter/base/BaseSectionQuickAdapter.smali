.class public abstract Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "BaseSectionQuickAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/chad/library/adapter/base/entity/SectionEntity;",
        "VH:",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "TT;TVH;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005B-\u0008\u0016\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bB#\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000cJ\u001d\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00028\u0000H$\u00a2\u0006\u0002\u0010\u0011J+\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00028\u00002\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\nH\u0014\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0007H\u0014J\u001d\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00028\u00012\u0006\u0010\u001a\u001a\u00020\u0007H\u0016\u00a2\u0006\u0002\u0010\u001bJ+\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00028\u00012\u0006\u0010\u001a\u001a\u00020\u00072\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\nH\u0016\u00a2\u0006\u0002\u0010\u001cJ\u0012\u0010\u001d\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007H\u0004R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;",
        "T",
        "Lcom/chad/library/adapter/base/entity/SectionEntity;",
        "VH",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "sectionHeadResId",
        "",
        "layoutResId",
        "data",
        "",
        "(IILjava/util/List;)V",
        "(ILjava/util/List;)V",
        "convertHeader",
        "",
        "helper",
        "item",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionEntity;)V",
        "payloads",
        "",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionEntity;Ljava/util/List;)V",
        "isFixedViewType",
        "",
        "type",
        "onBindViewHolder",
        "holder",
        "position",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V",
        "setNormalLayout",
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


# instance fields
.field private final sectionHeadResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p3}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;-><init>(ILjava/util/List;)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->setNormalLayout(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;-><init>(IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    iput p1, p0, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->sectionHeadResId:I

    const/16 p2, -0x63

    .line 26
    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->addItemType(II)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected abstract convertHeader(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionEntity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;TT;)V"
        }
    .end annotation
.end method

.method protected convertHeader(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionEntity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;TT;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p0, "helper"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "item"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "payloads"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected isFixedViewType(I)Z
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->isFixedViewType(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, -0x63

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 14
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chad/library/adapter/base/entity/SectionEntity;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->convertHeader(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionEntity;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, -0x63

    if-ne v0, v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chad/library/adapter/base/entity/SectionEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->convertHeader(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionEntity;Ljava/util/List;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method protected final setNormalLayout(I)V
    .locals 1

    const/16 v0, -0x64

    .line 50
    invoke-virtual {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->addItemType(II)V

    return-void
.end method
