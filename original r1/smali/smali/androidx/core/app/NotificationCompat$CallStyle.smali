.class public Landroidx/core/app/NotificationCompat$CallStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$CallStyle$Api28Impl;,
        Landroidx/core/app/NotificationCompat$CallStyle$Api23Impl;,
        Landroidx/core/app/NotificationCompat$CallStyle$Api31Impl;,
        Landroidx/core/app/NotificationCompat$CallStyle$Api16Impl;,
        Landroidx/core/app/NotificationCompat$CallStyle$Api21Impl;,
        Landroidx/core/app/NotificationCompat$CallStyle$Api24Impl;,
        Landroidx/core/app/NotificationCompat$CallStyle$Api20Impl;,
        Landroidx/core/app/NotificationCompat$CallStyle$CallType;
    }
.end annotation


# static fields
.field public static final CALL_TYPE_INCOMING:I = 0x1

.field public static final CALL_TYPE_ONGOING:I = 0x2

.field public static final CALL_TYPE_SCREENING:I = 0x3

.field public static final CALL_TYPE_UNKNOWN:I = 0x0

.field private static final KEY_ACTION_PRIORITY:Ljava/lang/String; = "key_action_priority"

.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String; = "androidx.core.app.NotificationCompat$CallStyle"


# instance fields
.field private mAnswerButtonColor:Ljava/lang/Integer;

.field private mAnswerIntent:Landroid/app/PendingIntent;

.field private mCallType:I

.field private mDeclineButtonColor:Ljava/lang/Integer;

.field private mDeclineIntent:Landroid/app/PendingIntent;

.field private mHangUpIntent:Landroid/app/PendingIntent;

.field private mIsVideo:Z

.field private mPerson:Landroidx/core/app/Person;

.field private mVerificationIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mVerificationText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4732
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    return-void
.end method

.method private constructor <init>(ILandroidx/core/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1

    .line 4817
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    if-eqz p2, :cond_0

    .line 4818
    invoke-virtual {p2}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mCallType:I

    iput-object p2, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mPerson:Landroidx/core/app/Person;

    iput-object p5, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    return-void

    .line 4819
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "person must have a non-empty a name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    .line 4740
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 4741
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$CallStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    return-void
.end method

.method public static forIncomingCall(Landroidx/core/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$CallStyle;
    .locals 7

    .line 4758
    new-instance v6, Landroidx/core/app/NotificationCompat$CallStyle;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-string v0, "declineIntent is required"

    .line 4760
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/app/PendingIntent;

    const-string p1, "answerIntent is required"

    .line 4761
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/app/PendingIntent;

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroidx/core/app/NotificationCompat$CallStyle;-><init>(ILandroidx/core/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v6
.end method

.method public static forOngoingCall(Landroidx/core/app/Person;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$CallStyle;
    .locals 7

    .line 4778
    new-instance v6, Landroidx/core/app/NotificationCompat$CallStyle;

    const/4 v1, 0x2

    const-string v0, "hangUpIntent is required"

    .line 4779
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroidx/core/app/NotificationCompat$CallStyle;-><init>(ILandroidx/core/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v6
.end method

.method public static forScreeningCall(Landroidx/core/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$CallStyle;
    .locals 7

    .line 4800
    new-instance v6, Landroidx/core/app/NotificationCompat$CallStyle;

    const/4 v1, 0x3

    const-string v0, "hangUpIntent is required"

    .line 4801
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    const-string p1, "answerIntent is required"

    .line 4803
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/app/PendingIntent;

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroidx/core/app/NotificationCompat$CallStyle;-><init>(ILandroidx/core/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v6
.end method

.method private getDefaultText()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mCallType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5090
    :cond_0
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/core/R$string;->call_notification_screening_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5087
    :cond_1
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/core/R$string;->call_notification_ongoing_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5084
    :cond_2
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/core/R$string;->call_notification_incoming_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isActionAddedByCallStyle(Landroidx/core/app/NotificationCompat$Action;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 5156
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "key_action_priority"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Action;
    .locals 2

    if-nez p3, :cond_0

    .line 5139
    iget-object p3, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p3, p3, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-static {p3, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 5141
    :cond_0
    new-instance p4, Landroid/text/SpannableStringBuilder;

    invoke-direct {p4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5142
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5143
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p4, p2, v1, p3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5146
    new-instance p2, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 5147
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    invoke-direct {p2, p0, p4, p5}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 5148
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p0

    .line 5149
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "key_action_priority"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method private makeAnswerAction()Landroidx/core/app/NotificationCompat$Action;
    .locals 9

    .line 5119
    sget v0, Landroidx/core/R$drawable;->ic_call_answer_video_low:I

    .line 5120
    sget v0, Landroidx/core/R$drawable;->ic_call_answer_low:I

    .line 5122
    sget v0, Landroidx/core/R$drawable;->ic_call_answer_video:I

    .line 5123
    sget v1, Landroidx/core/R$drawable;->ic_call_answer:I

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    iget-boolean v2, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mIsVideo:Z

    if-eqz v2, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 5128
    sget v0, Landroidx/core/R$string;->call_notification_answer_video_action:I

    goto :goto_1

    .line 5129
    :cond_2
    sget v0, Landroidx/core/R$string;->call_notification_answer_action:I

    :goto_1
    move v5, v0

    iget-object v6, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    sget v7, Landroidx/core/R$color;->call_notification_answer_color:I

    iget-object v8, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    move-object v3, p0

    .line 5126
    invoke-direct/range {v3 .. v8}, Landroidx/core/app/NotificationCompat$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private makeNegativeAction()Landroidx/core/app/NotificationCompat$Action;
    .locals 7

    .line 5099
    sget v0, Landroidx/core/R$drawable;->ic_call_decline_low:I

    .line 5101
    sget v2, Landroidx/core/R$drawable;->ic_call_decline:I

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 5104
    sget v3, Landroidx/core/R$string;->call_notification_hang_up_action:I

    iget-object v4, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    sget v5, Landroidx/core/R$color;->call_notification_decline_color:I

    iget-object v6, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/core/app/NotificationCompat$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object p0

    return-object p0

    .line 5109
    :cond_0
    sget v3, Landroidx/core/R$string;->call_notification_decline_action:I

    iget-object v4, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    sget v5, Landroidx/core/R$color;->call_notification_decline_color:I

    iget-object v6, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/core/app/NotificationCompat$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 4944
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    const-string v0, "android.callType"

    iget v1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mCallType:I

    .line 4948
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "android.callIsVideo"

    iget-boolean v1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mIsVideo:Z

    .line 4949
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mPerson:Landroidx/core/app/Person;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mPerson:Landroidx/core/app/Person;

    .line 4953
    invoke-virtual {v0}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$CallStyle$Api28Impl;->castToParcelable(Landroid/app/Person;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "android.callPerson"

    .line 4952
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mVerificationIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mVerificationIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 4960
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 4961
    invoke-virtual {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 4960
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$CallStyle$Api23Impl;->castToParcelable(Landroid/graphics/drawable/Icon;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "android.verificationIcon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    const-string v0, "android.verificationText"

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 4967
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "android.answerIntent"

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    .line 4968
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "android.declineIntent"

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    .line 4969
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "android.hangUpIntent"

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    .line 4970
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const-string v1, "android.answerColor"

    .line 4972
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    if-eqz p0, :cond_3

    const-string v0, "android.declineColor"

    .line 4975
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 3

    iget v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mCallType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const-string v0, "NotifCompat"

    .line 5009
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5010
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized call type in CallStyle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mCallType:I

    .line 5011
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5010
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mPerson:Landroidx/core/app/Person;

    .line 5005
    invoke-virtual {v0}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1, v2}, Landroidx/core/app/NotificationCompat$CallStyle$Api31Impl;->forScreeningCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mPerson:Landroidx/core/app/Person;

    .line 5001
    invoke-virtual {v0}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompat$CallStyle$Api31Impl;->forOngoingCall(Landroid/app/Person;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mPerson:Landroidx/core/app/Person;

    .line 4997
    invoke-virtual {v0}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1, v2}, Landroidx/core/app/NotificationCompat$CallStyle$Api31Impl;->forIncomingCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_7

    .line 5016
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/app/NotificationCompat$CallStyle$Api16Impl;->setBuilder(Landroid/app/Notification$CallStyle;Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 5018
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/app/NotificationCompat$CallStyle$Api31Impl;->setAnswerButtonColorHint(Landroid/app/Notification$CallStyle;I)Landroid/app/Notification$CallStyle;

    :cond_4
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    if-eqz p1, :cond_5

    .line 5021
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/app/NotificationCompat$CallStyle$Api31Impl;->setDeclineButtonColorHint(Landroid/app/Notification$CallStyle;I)Landroid/app/Notification$CallStyle;

    :cond_5
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 5023
    invoke-static {v0, p1}, Landroidx/core/app/NotificationCompat$CallStyle$Api31Impl;->setVerificationText(Landroid/app/Notification$CallStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$CallStyle;

    iget-object p1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mVerificationIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_6

    .line 5025
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 5026
    invoke-virtual {p1, v1}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 5025
    invoke-static {v0, p1}, Landroidx/core/app/NotificationCompat$CallStyle$Api31Impl;->setVerificationIcon(Landroid/app/Notification$CallStyle;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$CallStyle;

    :cond_6
    iget-boolean p0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mIsVideo:Z

    .line 5028
    invoke-static {v0, p0}, Landroidx/core/app/NotificationCompat$CallStyle$Api31Impl;->setIsVideo(Landroid/app/Notification$CallStyle;Z)Landroid/app/Notification$CallStyle;

    :cond_7
    return-void
.end method

.method public displayCustomViewInline()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getActionsListWithSystemActions()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .line 5170
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$CallStyle;->makeNegativeAction()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    .line 5171
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$CallStyle;->makeAnswerAction()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    .line 5175
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5177
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5182
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_4

    .line 5184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/app/NotificationCompat$Action;

    .line 5185
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->isContextual()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5187
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5188
    :cond_1
    invoke-direct {p0, v5}, Landroidx/core/app/NotificationCompat$CallStyle;->isActionAddedByCallStyle(Landroidx/core/app/NotificationCompat$Action;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    if-le v4, v3, :cond_3

    .line 5195
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    if-ne v4, v3, :cond_0

    .line 5201
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-lt v4, v3, :cond_5

    .line 5208
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v2
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "androidx.core.app.NotificationCompat$CallStyle"

    return-object p0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 3

    .line 4909
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V

    const-string v0, "android.callType"

    .line 4911
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mCallType:I

    const-string v0, "android.callIsVideo"

    .line 4912
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mIsVideo:Z

    const-string v0, "android.callPerson"

    .line 4914
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4917
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    .line 4915
    invoke-static {v0}, Landroidx/core/app/Person;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mPerson:Landroidx/core/app/Person;

    goto :goto_0

    :cond_0
    const-string v0, "android.callPersonCompat"

    .line 4918
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4919
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/Person;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mPerson:Landroidx/core/app/Person;

    :cond_1
    :goto_0
    const-string v0, "android.verificationIcon"

    .line 4921
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4922
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mVerificationIcon:Landroidx/core/graphics/drawable/IconCompat;

    goto :goto_1

    :cond_2
    const-string v0, "android.verificationIconCompat"

    .line 4924
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4927
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4926
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createFromBundle(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mVerificationIcon:Landroidx/core/graphics/drawable/IconCompat;

    :cond_3
    :goto_1
    const-string v0, "android.verificationText"

    .line 4929
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    const-string v0, "android.answerIntent"

    .line 4930
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    const-string v0, "android.declineIntent"

    .line 4931
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    const-string v0, "android.hangUpIntent"

    .line 4932
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    const-string v0, "android.answerColor"

    .line 4933
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 4934
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    const-string v0, "android.declineColor"

    .line 4935
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4936
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    iput-object v2, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    return-void
.end method

.method public setAnswerButtonColorHint(I)Landroidx/core/app/NotificationCompat$CallStyle;
    .locals 0

    .line 4877
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDeclineButtonColorHint(I)Landroidx/core/app/NotificationCompat$CallStyle;
    .locals 0

    .line 4889
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setIsVideo(Z)Landroidx/core/app/NotificationCompat$CallStyle;
    .locals 0

    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mIsVideo:Z

    return-object p0
.end method

.method public setVerificationIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$CallStyle;
    .locals 0

    .line 4856
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mVerificationIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public setVerificationIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/app/NotificationCompat$CallStyle;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4846
    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mVerificationIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public setVerificationText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$CallStyle;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    return-object p0
.end method
