.class Landroidx/core/app/NotificationCompat$CarExtender$Api20Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api20Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addExtras(Landroid/app/RemoteInput$Builder;Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;
    .locals 0

    .line 8347
    invoke-virtual {p0, p1}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object p0

    return-object p0
.end method

.method static build(Landroid/app/RemoteInput$Builder;)Landroid/app/RemoteInput;
    .locals 0

    .line 8298
    invoke-virtual {p0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object p0

    return-object p0
.end method

.method static castToParcelable(Landroid/app/RemoteInput;)Landroid/os/Parcelable;
    .locals 0

    return-object p0
.end method

.method static createBuilder(Ljava/lang/String;)Landroid/app/RemoteInput$Builder;
    .locals 1

    .line 8293
    new-instance v0, Landroid/app/RemoteInput$Builder;

    invoke-direct {v0, p0}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getAllowFreeFormInput(Landroid/app/RemoteInput;)Z
    .locals 0

    .line 8330
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result p0

    return p0
.end method

.method static getChoices(Landroid/app/RemoteInput;)[Ljava/lang/CharSequence;
    .locals 0

    .line 8308
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getExtras(Landroid/app/RemoteInput;)Landroid/os/Bundle;
    .locals 0

    .line 8341
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static getLabel(Landroid/app/RemoteInput;)Ljava/lang/CharSequence;
    .locals 0

    .line 8319
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getResultKey(Landroid/app/RemoteInput;)Ljava/lang/String;
    .locals 0

    .line 8303
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static setAllowFreeFormInput(Landroid/app/RemoteInput$Builder;Z)Landroid/app/RemoteInput$Builder;
    .locals 0

    .line 8336
    invoke-virtual {p0, p1}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setChoices(Landroid/app/RemoteInput$Builder;[Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .locals 0

    .line 8314
    invoke-virtual {p0, p1}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setLabel(Landroid/app/RemoteInput$Builder;Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .locals 0

    .line 8325
    invoke-virtual {p0, p1}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object p0

    return-object p0
.end method
