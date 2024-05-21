.class public Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle$Api24Impl;,
        Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle$Api16Impl;,
        Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle$Api15Impl;
    }
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String; = "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5603
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    return-void
.end method

.method private createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;
    .locals 6

    .line 5690
    sget v0, Landroidx/core/R$layout;->notification_template_custom_big:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5692
    sget v1, Landroidx/core/R$id;->actions:I

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 5697
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 5698
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->getNonContextualActions(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 5701
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v3, 0x3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lez p2, :cond_0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    .line 5706
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {p0, v4}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->generateActionButton(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 5707
    sget v5, Landroidx/core/R$id;->actions:I

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 5712
    :cond_1
    sget p2, Landroidx/core/R$id;->actions:I

    invoke-virtual {v0, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5713
    sget p2, Landroidx/core/R$id;->action_divider:I

    invoke-virtual {v0, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5714
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method private generateActionButton(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .locals 5

    .line 5731
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5732
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 5733
    sget v3, Landroidx/core/R$layout;->notification_action_tombstone:I

    goto :goto_1

    .line 5734
    :cond_1
    sget v3, Landroidx/core/R$layout;->notification_action:I

    :goto_1
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 5735
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5737
    sget v3, Landroidx/core/R$id;->action_image:I

    sget v4, Landroidx/core/R$color;->notification_action_color_filter:I

    .line 5738
    invoke-virtual {p0, v2, v4}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 5737
    invoke-virtual {v1, v3, p0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 5740
    :cond_2
    sget p0, Landroidx/core/R$id;->action_text:I

    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, p0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-nez v0, :cond_3

    .line 5742
    sget p0, Landroidx/core/R$id;->action_container:I

    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p0, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 5745
    :cond_3
    sget p0, Landroidx/core/R$id;->action_container:I

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v1, p0, p1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle$Api15Impl;->setContentDescription(Landroid/widget/RemoteViews;ILjava/lang/CharSequence;)V

    return-object v1
.end method

.method private static getNonContextualActions(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5721
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5722
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/NotificationCompat$Action;

    .line 5723
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action;->isContextual()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5724
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 0

    .line 5629
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p0

    .line 5630
    invoke-static {}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle$Api24Impl;->createDecoratedCustomViewStyle()Landroid/app/Notification$DecoratedCustomViewStyle;

    move-result-object p1

    .line 5629
    invoke-static {p0, p1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle$Api16Impl;->setStyle(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public displayCustomViewInline()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    return-object p0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
