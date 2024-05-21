.class public Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/ShortcutInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCapabilityBindingParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCapabilityBindings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

.field private mIsConversation:Z

.field private mSliceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V
    .locals 1

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-direct {v0}, Landroidx/core/content/pm/ShortcutInfoCompat;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 598
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 599
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 600
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPackageName:Ljava/lang/String;

    .line 601
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object p0

    .line 602
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/Intent;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 603
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    .line 604
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 605
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 606
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 608
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result p0

    iput p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledReason:I

    .line 614
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    .line 615
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/content/pm/ShortcutInfoCompat;->getPersonsFromExtra(Landroid/os/PersistableBundle;)[Landroidx/core/app/Person;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Landroidx/core/app/Person;

    .line 616
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mUser:Landroid/os/UserHandle;

    .line 617
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide p0

    iput-wide p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLastChangedTimestamp:J

    .line 619
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p0

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsCached:Z

    .line 621
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p0

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDynamic:Z

    .line 622
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p0

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsPinned:Z

    .line 623
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p0

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDeclaredInManifest:Z

    .line 624
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result p0

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsImmutable:Z

    .line 625
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result p0

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsEnabled:Z

    .line 626
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    move-result p0

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mHasKeyFieldsOnly:Z

    .line 627
    invoke-static {p2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getLocusId(Landroid/content/pm/ShortcutInfo;)Landroidx/core/content/LocusIdCompat;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 628
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    iput p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    .line 629
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-direct {v0}, Landroidx/core/content/pm/ShortcutInfoCompat;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 548
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 549
    iput-object p2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/core/content/pm/ShortcutInfoCompat;)V
    .locals 3

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-direct {v0}, Landroidx/core/content/pm/ShortcutInfoCompat;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 557
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 558
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 559
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mPackageName:Ljava/lang/String;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPackageName:Ljava/lang/String;

    .line 560
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/Intent;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 561
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    .line 562
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 563
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 564
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 565
    iget p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledReason:I

    iput p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledReason:I

    .line 566
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 567
    iget-boolean p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    .line 568
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mUser:Landroid/os/UserHandle;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mUser:Landroid/os/UserHandle;

    .line 569
    iget-wide v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mLastChangedTimestamp:J

    iput-wide v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLastChangedTimestamp:J

    .line 570
    iget-boolean p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsCached:Z

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsCached:Z

    .line 571
    iget-boolean p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDynamic:Z

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDynamic:Z

    .line 572
    iget-boolean p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsPinned:Z

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsPinned:Z

    .line 573
    iget-boolean p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDeclaredInManifest:Z

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDeclaredInManifest:Z

    .line 574
    iget-boolean p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsImmutable:Z

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsImmutable:Z

    .line 575
    iget-boolean p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsEnabled:Z

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsEnabled:Z

    .line 576
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 577
    iget-boolean p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    .line 578
    iget-boolean p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mHasKeyFieldsOnly:Z

    iput-boolean p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mHasKeyFieldsOnly:Z

    .line 579
    iget p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    iput p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    .line 580
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Landroidx/core/app/Person;

    if-eqz p0, :cond_0

    .line 581
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Landroidx/core/app/Person;

    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Landroidx/core/app/Person;

    array-length v1, v1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/core/app/Person;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Landroidx/core/app/Person;

    .line 583
    :cond_0
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    if-eqz p0, :cond_1

    .line 584
    new-instance p0, Ljava/util/HashSet;

    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    .line 586
    :cond_1
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    if-eqz p0, :cond_2

    .line 587
    iget-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    iput-object p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 589
    :cond_2
    iget p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mExcludedSurfaces:I

    iput p0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExcludedSurfaces:I

    return-void
.end method


# virtual methods
.method public addCapabilityBinding(Ljava/lang/String;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindings:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindings:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindings:Ljava/util/Set;

    .line 902
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCapabilityBinding(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/pm/ShortcutInfoCompat$Builder;"
        }
    .end annotation

    .line 925
    invoke-virtual {p0, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->addCapabilityBinding(Ljava/lang/String;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 927
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 929
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    .line 931
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    .line 932
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    .line 935
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method

.method public build()Landroidx/core/content/pm/ShortcutInfoCompat;
    .locals 10

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 957
    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 960
    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mIsConversation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 964
    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 965
    new-instance v1, Landroidx/core/content/LocusIdCompat;

    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    iget-object v2, v2, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    :cond_0
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    const/4 v1, 0x1

    .line 967
    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    :cond_1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindings:Ljava/util/Set;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 971
    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 972
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    :cond_2
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 974
    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindings:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 978
    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 979
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    :cond_4
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    .line 981
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    .line 983
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 984
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 986
    iget-object v4, v4, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    .line 987
    invoke-interface {v3, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 986
    invoke-virtual {v4, v1, v3}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 990
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 991
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget-object v7, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 992
    iget-object v7, v7, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v6, :cond_6

    new-array v6, v5, [Ljava/lang/String;

    goto :goto_1

    :cond_6
    new-array v8, v5, [Ljava/lang/String;

    .line 993
    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 992
    :goto_1
    invoke-virtual {v7, v4, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mSliceUri:Landroid/net/Uri;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 998
    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 999
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    :cond_8
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 1001
    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mSliceUri:Landroid/net/Uri;

    invoke-static {v1}, Landroidx/core/net/UriCompat;->toSafeString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraSliceUri"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object p0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    return-object p0

    .line 961
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Shortcut must have an intent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 958
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Shortcut must have a non-empty label"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setActivity(Landroid/content/ComponentName;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 747
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setAlwaysBadged()Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 2

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    const/4 v1, 0x1

    .line 765
    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    return-object p0
.end method

.method public setCategories(Ljava/util/Set;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/pm/ShortcutInfoCompat$Builder;"
        }
    .end annotation

    .line 804
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 805
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 806
    iput-object v0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    return-object p0
.end method

.method public setDisabledMessage(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 669
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setExcludedFromSurfaces(I)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 847
    iput p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExcludedSurfaces:I

    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 873
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 704
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 684
    invoke-virtual {p0, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntents([Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setIntents([Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 695
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    return-object p0
.end method

.method public setIsConversation()Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mIsConversation:Z

    return-object p0
.end method

.method public setLocusId(Landroidx/core/content/LocusIdCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 718
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    return-object p0
.end method

.method public setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 657
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setLongLived()Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    const/4 v1, 0x1

    .line 816
    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    return-object p0
.end method

.method public setLongLived(Z)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 827
    iput-boolean p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    return-object p0
.end method

.method public setPerson(Landroidx/core/app/Person;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/app/Person;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 779
    invoke-virtual {p0, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setPersons([Landroidx/core/app/Person;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPersons([Landroidx/core/app/Person;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 787
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Landroidx/core/app/Person;

    return-object p0
.end method

.method public setRank(I)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 859
    iput p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    return-object p0
.end method

.method public setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 643
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSliceUri(Landroid/net/Uri;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mSliceUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setTransientExtras(Landroid/os/Bundle;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 882
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mTransientExtras:Landroid/os/Bundle;

    return-object p0
.end method
