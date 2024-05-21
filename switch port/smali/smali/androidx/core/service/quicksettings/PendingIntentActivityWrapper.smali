.class public Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;
.super Ljava/lang/Object;
.source "PendingIntentActivityWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFlags:I

.field private final mIntent:Landroid/content/Intent;

.field private final mIsMutable:Z

.field private final mOptions:Landroid/os/Bundle;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Z)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mContext:Landroid/content/Context;

    iput p2, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mRequestCode:I

    iput-object p3, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mIntent:Landroid/content/Intent;

    iput p4, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mFlags:I

    iput-object p5, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mOptions:Landroid/os/Bundle;

    iput-boolean p6, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mIsMutable:Z

    .line 69
    invoke-direct {p0}, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->createPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/Intent;IZ)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    .line 56
    invoke-direct/range {v0 .. v6}, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;-><init>(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method private createPendingIntent()Landroid/app/PendingIntent;
    .locals 6

    iget-object v4, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mOptions:Landroid/os/Bundle;

    if-nez v4, :cond_0

    iget-object v0, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mContext:Landroid/content/Context;

    iget v1, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mRequestCode:I

    iget-object v2, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mIntent:Landroid/content/Intent;

    iget v3, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mFlags:I

    iget-boolean p0, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mIsMutable:Z

    .line 102
    invoke-static {v0, v1, v2, v3, p0}, Landroidx/core/app/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mContext:Landroid/content/Context;

    iget v1, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mRequestCode:I

    iget-object v2, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mIntent:Landroid/content/Intent;

    iget v3, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mFlags:I

    iget-boolean v5, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mIsMutable:Z

    .line 105
    invoke-static/range {v0 .. v5}, Landroidx/core/app/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Z)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mFlags:I

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getOptions()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getRequestCode()I
    .locals 0

    iget p0, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mRequestCode:I

    return p0
.end method

.method public isMutable()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->mIsMutable:Z

    return p0
.end method
