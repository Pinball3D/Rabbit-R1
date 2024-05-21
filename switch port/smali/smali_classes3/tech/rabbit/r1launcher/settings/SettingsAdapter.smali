.class public final Ltech/rabbit/r1launcher/settings/SettingsAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SettingsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ltech/rabbit/r1launcher/settings/SettingItems;",
        "Ltech/rabbit/r1launcher/settings/holder/BaseHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsAdapter.kt\ntech/rabbit/r1launcher/settings/SettingsAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,29:1\n1#2:30\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nH\u0014\u00a8\u0006\u0010"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/SettingsAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Ltech/rabbit/r1launcher/settings/SettingItems;",
        "Ltech/rabbit/r1launcher/settings/holder/BaseHolder;",
        "()V",
        "convert",
        "",
        "holder",
        "item",
        "getDefItemViewType",
        "",
        "position",
        "onCreateDefViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "app_productionEnvRelease"
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
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, v2, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Ltech/rabbit/r1launcher/settings/holder/BaseHolder;

    check-cast p2, Ltech/rabbit/r1launcher/settings/SettingItems;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/SettingsAdapter;->convert(Ltech/rabbit/r1launcher/settings/holder/BaseHolder;Ltech/rabbit/r1launcher/settings/SettingItems;)V

    return-void
.end method

.method protected convert(Ltech/rabbit/r1launcher/settings/holder/BaseHolder;Ltech/rabbit/r1launcher/settings/SettingItems;)V
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "item"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1, p2}, Ltech/rabbit/r1launcher/settings/holder/BaseHolder;->setModelToHolder(Ltech/rabbit/r1launcher/settings/SettingItems;)V

    .line 25
    invoke-virtual {p1, p2}, Ltech/rabbit/r1launcher/settings/holder/BaseHolder;->onBind(Ltech/rabbit/r1launcher/settings/SettingItems;)V

    :cond_0
    return-void
.end method

.method protected getDefItemViewType(I)I
    .locals 0

    .line 11
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/SettingsAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/SettingItems;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/SettingItems;->getHolderClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/SettingsAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Ltech/rabbit/r1launcher/settings/holder/BaseHolder;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-object p0
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Ltech/rabbit/r1launcher/settings/holder/BaseHolder;
    .locals 3

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ltech/rabbit/r1launcher/settings/SettingItems;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ltech/rabbit/r1launcher/settings/SettingItems;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/settings/SettingItems;->getHolderClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->hashCode()I

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ltech/rabbit/r1launcher/settings/SettingItems;

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/settings/SettingItems;->getHolderClass()Ljava/lang/Class;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/view/View;

    aput-object v2, p2, v1

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 19
    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/settings/SettingItems;->getItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "newInstance(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ltech/rabbit/r1launcher/settings/holder/BaseHolder;

    return-object p0

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "View Type is wrong, viewType = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
