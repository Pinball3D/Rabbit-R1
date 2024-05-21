.class public abstract Landroidx/databinding/ViewDataBinding;
.super Landroidx/databinding/BaseObservable;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ViewDataBinding$OnStartListener;,
        Landroidx/databinding/ViewDataBinding$IncludedLayouts;,
        Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;,
        Landroidx/databinding/ViewDataBinding$LiveDataListener;,
        Landroidx/databinding/ViewDataBinding$WeakMapListener;,
        Landroidx/databinding/ViewDataBinding$WeakListListener;,
        Landroidx/databinding/ViewDataBinding$WeakPropertyListener;
    }
.end annotation


# static fields
.field private static final BINDING_NUMBER_START:I = 0x8

.field public static final BINDING_TAG_PREFIX:Ljava/lang/String; = "binding_"

.field private static final CREATE_LIST_LISTENER:Landroidx/databinding/CreateWeakListener;

.field private static final CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/CreateWeakListener;

.field private static final CREATE_MAP_LISTENER:Landroidx/databinding/CreateWeakListener;

.field private static final CREATE_PROPERTY_LISTENER:Landroidx/databinding/CreateWeakListener;

.field private static final HALTED:I = 0x2

.field private static final REBIND:I = 0x1

.field private static final REBIND_NOTIFIER:Landroidx/databinding/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "Landroidx/databinding/OnRebindCallback;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final REBOUND:I = 0x3

.field private static final ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

.field static SDK_INT:I

.field private static final USE_CHOREOGRAPHER:Z

.field private static final sReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mBindingComponent:Landroidx/databinding/DataBindingComponent;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContainingBinding:Landroidx/databinding/ViewDataBinding;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mInLiveDataRegisterObserver:Z

.field protected mInStateFlowRegisterObserver:Z

.field private mIsExecutingPendingBindings:Z

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private mLocalFieldObservers:[Landroidx/databinding/WeakListener;

.field private mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

.field private mPendingRebind:Z

.field private mRebindCallbacks:Landroidx/databinding/CallbackRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry<",
            "Landroidx/databinding/OnRebindCallback;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mRebindHalted:Z

.field private final mRebindRunnable:Ljava/lang/Runnable;

.field private final mRoot:Landroid/view/View;

.field private mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/databinding/ViewDataBinding;->SDK_INT:I

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    .line 95
    new-instance v0, Landroidx/databinding/ViewDataBinding$1;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$1;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_PROPERTY_LISTENER:Landroidx/databinding/CreateWeakListener;

    .line 110
    new-instance v0, Landroidx/databinding/ViewDataBinding$2;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$2;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_LIST_LISTENER:Landroidx/databinding/CreateWeakListener;

    .line 125
    new-instance v0, Landroidx/databinding/ViewDataBinding$3;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$3;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_MAP_LISTENER:Landroidx/databinding/CreateWeakListener;

    .line 140
    new-instance v0, Landroidx/databinding/ViewDataBinding$4;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$4;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/CreateWeakListener;

    .line 153
    new-instance v0, Landroidx/databinding/ViewDataBinding$5;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$5;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->REBIND_NOTIFIER:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    .line 173
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 181
    new-instance v0, Landroidx/databinding/ViewDataBinding$6;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$6;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method protected constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V
    .locals 1

    .line 308
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    .line 201
    new-instance v0, Landroidx/databinding/ViewDataBinding$7;

    invoke-direct {v0, p0}, Landroidx/databinding/ViewDataBinding$7;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mBindingComponent:Landroidx/databinding/DataBindingComponent;

    .line 310
    new-array p1, p3, [Landroidx/databinding/WeakListener;

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    iput-object p2, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    .line 312
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-boolean p1, Landroidx/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    if-eqz p1, :cond_0

    .line 316
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    .line 317
    new-instance p1, Landroidx/databinding/ViewDataBinding$8;

    invoke-direct {p1, p0}, Landroidx/databinding/ViewDataBinding$8;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 325
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    :goto_0
    return-void

    .line 313
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 333
    invoke-static {p1}, Landroidx/databinding/ViewDataBinding;->checkAndCastToBindingComponent(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$002(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    return p1
.end method

.method static synthetic access$100(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$202(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    return p1
.end method

.method static synthetic access$300()V
    .locals 0

    .line 67
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->processReferenceQueue()V

    return-void
.end method

.method static synthetic access$400(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    sget-object v0, Landroidx/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method protected static bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 737
    invoke-static {p0}, Landroidx/databinding/ViewDataBinding;->checkAndCastToBindingComponent(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    move-result-object p0

    .line 736
    invoke-static {p0, p1, p2}, Landroidx/databinding/DataBindingUtil;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method private static checkAndCastToBindingComponent(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 340
    :cond_0
    instance-of v0, p0, Landroidx/databinding/DataBindingComponent;

    if-eqz v0, :cond_1

    .line 346
    check-cast p0, Landroidx/databinding/DataBindingComponent;

    return-object p0

    .line 341
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private executeBindingsInternal()V
    .locals 4

    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    .line 498
    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 504
    invoke-virtual {v2, p0, v0, v3}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    const/4 v2, 0x2

    .line 508
    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    if-nez v0, :cond_3

    .line 512
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executeBindings()V

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 514
    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_3
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    return-void
.end method

.method protected static executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    .line 526
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding;->executeBindingsInternal()V

    return-void
.end method

.method private static findIncludeIndex(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;I)I
    .locals 2

    const/16 v0, 0x2f

    .line 1317
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1318
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1320
    iget-object p2, p2, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layouts:[[Ljava/lang/String;

    aget-object p2, p2, p3

    .line 1321
    array-length p3, p2

    :goto_0
    if-ge p1, p3, :cond_1

    .line 1323
    aget-object v0, p2, p1

    .line 1324
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static findLastMatching(Landroid/view/ViewGroup;I)I
    .locals 8

    .line 1332
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1333
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1334
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1335
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1337
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v4, p1, 0x1

    :goto_0
    if-ge v4, v3, :cond_3

    .line 1340
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1341
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1342
    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 1343
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1344
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_1

    return p1

    .line 1347
    :cond_1
    invoke-static {v5, v2}, Landroidx/databinding/ViewDataBinding;->isNumeric(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    move p1, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method static getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 564
    sget v0, Landroidx/databinding/library/R$id;->dataBinding:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/databinding/ViewDataBinding;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBuildSdkInt()I
    .locals 1

    sget v0, Landroidx/databinding/ViewDataBinding;->SDK_INT:I

    return v0
.end method

.method protected static getColorFromResource(Landroid/view/View;I)I
    .locals 0

    .line 837
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method protected static getColorStateListFromResource(Landroid/view/View;I)Landroid/content/res/ColorStateList;
    .locals 0

    .line 846
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method protected static getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 855
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected static getFrom(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TT;>;TK;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1127
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static getFromArray([BI)B
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 895
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 898
    :cond_0
    aget-byte p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static getFromArray([CI)C
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 927
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    aget-char p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static getFromArray([DI)D
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 991
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 994
    :cond_0
    aget-wide p0, p0, p1

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method protected static getFromArray([FI)F
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 975
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 978
    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static getFromArray([II)I
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 943
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 946
    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static getFromArray([JI)J
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 959
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 962
    :cond_0
    aget-wide p0, p0, p1

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method protected static getFromArray([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 863
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 866
    :cond_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static getFromArray([SI)S
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 911
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 914
    :cond_0
    aget-short p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static getFromArray([ZI)Z
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 879
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    aget-boolean p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static getFromList(Landroid/util/SparseIntArray;I)I
    .locals 0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1093
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static getFromList(Landroid/util/SparseLongArray;I)J
    .locals 0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1110
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method protected static getFromList(Landroid/util/LongSparseArray;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LongSparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 1043
    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static getFromList(Landroid/util/SparseArray;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1026
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static getFromList(Landroidx/collection/LongSparseArray;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 1060
    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static getFromList(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1007
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1010
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static getFromList(Landroid/util/SparseBooleanArray;I)Z
    .locals 0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1077
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1414
    invoke-static {p4}, Landroidx/databinding/ViewDataBinding;->checkAndCastToBindingComponent(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    move-result-object p4

    .line 1409
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method private static isNumeric(Ljava/lang/String;I)Z
    .locals 3

    .line 1356
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_2

    .line 1361
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 1231
    invoke-static/range {p1 .. p1}, Landroidx/databinding/ViewDataBinding;->getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 1235
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1236
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v9, "layout"

    const/4 v2, -0x1

    const/4 v11, 0x1

    if-eqz p5, :cond_5

    if-eqz v1, :cond_5

    .line 1238
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x5f

    .line 1239
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_4

    add-int/2addr v3, v11

    .line 1240
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->isNumeric(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1241
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->parseTagInt(Ljava/lang/String;I)I

    move-result v1

    .line 1242
    aget-object v3, p2, v1

    if-nez v3, :cond_2

    .line 1243
    aput-object v0, p2, v1

    :cond_2
    if-nez v7, :cond_3

    move v1, v2

    :cond_3
    move v3, v11

    goto :goto_1

    :cond_4
    move v1, v2

    const/4 v3, 0x0

    :goto_1
    move v12, v1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_8

    const-string v3, "binding_"

    .line 1250
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget v3, Landroidx/databinding/ViewDataBinding;->BINDING_NUMBER_START:I

    .line 1251
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->parseTagInt(Ljava/lang/String;I)I

    move-result v1

    .line 1252
    aget-object v3, p2, v1

    if-nez v3, :cond_6

    .line 1253
    aput-object v0, p2, v1

    :cond_6
    if-nez v7, :cond_7

    move v1, v2

    :cond_7
    move v12, v1

    move v3, v11

    goto :goto_2

    :cond_8
    move v12, v2

    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_9

    .line 1262
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    if-lez v1, :cond_9

    if-eqz v8, :cond_9

    .line 1265
    invoke-virtual {v8, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ltz v1, :cond_9

    aget-object v2, p2, v1

    if-nez v2, :cond_9

    .line 1267
    aput-object v0, p2, v1

    .line 1272
    :cond_9
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    .line 1273
    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroup;

    .line 1274
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge v0, v14, :cond_e

    .line 1277
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ltz v12, :cond_c

    .line 1279
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 1280
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "_0"

    .line 1281
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1282
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_c

    .line 1284
    invoke-static {v3, v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->findIncludeIndex(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;I)I

    move-result v3

    if-ltz v3, :cond_c

    add-int/lit8 v1, v3, 0x1

    .line 1289
    iget-object v4, v7, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->indexes:[[I

    aget-object v4, v4, v12

    aget v4, v4, v3

    .line 1290
    iget-object v5, v7, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layoutIds:[[I

    aget-object v5, v5, v12

    aget v3, v5, v3

    .line 1291
    invoke-static {v13, v0}, Landroidx/databinding/ViewDataBinding;->findLastMatching(Landroid/view/ViewGroup;I)I

    move-result v5

    if-ne v5, v0, :cond_a

    .line 1293
    invoke-static {v6, v2, v3}, Landroidx/databinding/DataBindingUtil;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v4

    move v10, v0

    move v0, v11

    move v11, v1

    goto :goto_5

    :cond_a
    sub-int/2addr v5, v0

    add-int/lit8 v15, v5, 0x1

    .line 1297
    new-array v10, v15, [Landroid/view/View;

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v15, :cond_b

    move/from16 p1, v1

    add-int v1, v0, v11

    .line 1299
    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v10, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    goto :goto_4

    :cond_b
    move/from16 p1, v1

    .line 1301
    invoke-static {v6, v10, v3}, Landroidx/databinding/DataBindingUtil;->bind(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    aput-object v1, p2, v4

    add-int/2addr v0, v5

    move/from16 v11, p1

    move v10, v0

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    move v10, v0

    move v11, v1

    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_d

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1309
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    :cond_d
    const/4 v0, 0x1

    add-int/lit8 v1, v10, 0x1

    move/from16 v16, v11

    move v11, v0

    move v0, v1

    move/from16 v1, v16

    goto/16 :goto_3

    :cond_e
    return-void
.end method

.method protected static mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 6

    .line 759
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 760
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    return-object p2
.end method

.method protected static mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 7

    .line 1220
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    move v6, v0

    .line 1221
    :goto_0
    array-length v0, p1

    if-ge v6, v0, :cond_0

    .line 1222
    aget-object v1, p1, v6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method protected static parse(Ljava/lang/String;B)B
    .locals 0

    .line 775
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method protected static parse(Ljava/lang/String;C)C
    .locals 1

    if-eqz p0, :cond_1

    .line 828
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 831
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method protected static parse(Ljava/lang/String;D)D
    .locals 0

    .line 820
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p1
.end method

.method protected static parse(Ljava/lang/String;F)F
    .locals 0

    .line 811
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method protected static parse(Ljava/lang/String;I)I
    .locals 0

    .line 793
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method protected static parse(Ljava/lang/String;J)J
    .locals 0

    .line 802
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p1
.end method

.method protected static parse(Ljava/lang/String;S)S
    .locals 0

    .line 784
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method protected static parse(Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 769
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static parseTagInt(Ljava/lang/String;I)I
    .locals 3

    .line 1375
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    mul-int/lit8 v1, v1, 0xa

    .line 1379
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static processReferenceQueue()V
    .locals 2

    :cond_0
    :goto_0
    sget-object v0, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1390
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1391
    instance-of v1, v0, Landroidx/databinding/WeakListener;

    if-eqz v1, :cond_0

    .line 1392
    check-cast v0, Landroidx/databinding/WeakListener;

    .line 1393
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->unregister()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static safeUnbox(Ljava/lang/Byte;)B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1169
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    :goto_0
    return p0
.end method

.method protected static safeUnbox(Ljava/lang/Character;)C
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1174
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    :goto_0
    return p0
.end method

.method protected static safeUnbox(Ljava/lang/Double;)D
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1179
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method protected static safeUnbox(Ljava/lang/Float;)F
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1184
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method protected static safeUnbox(Ljava/lang/Integer;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1154
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected static safeUnbox(Ljava/lang/Long;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1159
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method protected static safeUnbox(Ljava/lang/Short;)S
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1164
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    :goto_0
    return p0
.end method

.method protected static safeUnbox(Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1189
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method protected static setBindingInverseListener(Landroidx/databinding/ViewDataBinding;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;)V
    .locals 0

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    .line 1143
    check-cast p1, Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1147
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :cond_1
    return-void
.end method

.method protected static setTo(Landroid/util/LongSparseArray;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LongSparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1049
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 1052
    invoke-virtual {p0, v0, v1, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Landroid/util/SparseArray;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1031
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1034
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Landroid/util/SparseBooleanArray;IZ)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1082
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1085
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Landroid/util/SparseIntArray;II)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1098
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Landroid/util/SparseLongArray;IJ)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1116
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1119
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Landroidx/collection/LongSparseArray;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1066
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 1069
    invoke-virtual {p0, v0, v1, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Ljava/util/List;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1015
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1018
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TT;>;TK;TT;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1135
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static setTo([BIB)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 903
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 906
    :cond_0
    aput-byte p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([CIC)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 935
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 938
    :cond_0
    aput-char p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([DID)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 999
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1002
    :cond_0
    aput-wide p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([FIF)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 983
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 986
    :cond_0
    aput p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([III)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 951
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 954
    :cond_0
    aput p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([JIJ)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 967
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 970
    :cond_0
    aput-wide p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 871
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 874
    :cond_0
    aput-object p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([SIS)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 919
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 922
    :cond_0
    aput-short p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([ZIZ)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 887
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 890
    :cond_0
    aput-boolean p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addOnRebindCallback(Landroidx/databinding/OnRebindCallback;)V
    .locals 2

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Landroidx/databinding/CallbackRegistry;

    sget-object v1, Landroidx/databinding/ViewDataBinding;->REBIND_NOTIFIER:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    invoke-direct {v0, v1}, Landroidx/databinding/CallbackRegistry;-><init>(Landroidx/databinding/CallbackRegistry$NotifierCallback;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    :cond_0
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    .line 464
    invoke-virtual {p0, p1}, Landroidx/databinding/CallbackRegistry;->add(Ljava/lang/Object;)V

    return-void
.end method

.method protected ensureBindingComponentIsNotNull(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mBindingComponent:Landroidx/databinding/DataBindingComponent;

    if-eqz v0, :cond_0

    return-void

    .line 702
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Required DataBindingComponent is null in class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ". A BindingAdapter in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 704
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not static and requires an object to use, retrieved from the DataBindingComponent. If you don\'t use an inflation method taking a DataBindingComponent, use DataBindingUtil.setDefaultComponent or make all BindingAdapter methods static."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 709
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract executeBindings()V
.end method

.method public executePendingBindings()V
    .locals 1

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    .line 484
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding;->executeBindingsInternal()V

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    :goto_0
    return-void
.end method

.method forceExecuteBindings()V
    .locals 0

    .line 531
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executeBindings()V

    return-void
.end method

.method public getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object p0
.end method

.method protected getObservedField(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    .line 638
    aget-object p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 642
    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method protected handleFieldChange(ILjava/lang/Object;I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInStateFlowRegisterObserver:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->onFieldChange(ILjava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 591
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract hasPendingBindings()Z
.end method

.method public abstract invalidateAll()V
.end method

.method protected abstract onFieldChange(ILjava/lang/Object;I)Z
.end method

.method protected registerTo(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    .line 721
    aget-object v0, v0, p1

    if-nez v0, :cond_1

    sget-object v0, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 723
    invoke-interface {p3, p0, p1, v0}, Landroidx/databinding/CreateWeakListener;->create(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;

    move-result-object v0

    iget-object p3, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    .line 724
    aput-object v0, p3, p1

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p0, :cond_1

    .line 726
    invoke-virtual {v0, p0}, Landroidx/databinding/WeakListener;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 729
    :cond_1
    invoke-virtual {v0, p2}, Landroidx/databinding/WeakListener;->setTarget(Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnRebindCallback(Landroidx/databinding/OnRebindCallback;)V
    .locals 0

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    if-eqz p0, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Landroidx/databinding/CallbackRegistry;->remove(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected requestRebind()V
    .locals 2

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    .line 615
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 616
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 620
    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    if-eqz v0, :cond_2

    .line 622
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    .line 625
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Landroidx/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 627
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    .line 629
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 625
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected setContainedBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1199
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    :cond_0
    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    .line 418
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    const-string v0, "DataBinding"

    const-string v1, "Setting the fragment as the LifecycleOwner might cause memory leaks because views lives shorter than the Fragment. Consider using Fragment\'s view lifecycle"

    .line 419
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 427
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    if-nez v0, :cond_3

    .line 432
    new-instance v0, Landroidx/databinding/ViewDataBinding$OnStartListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/databinding/ViewDataBinding$OnStartListener;-><init>(Landroidx/databinding/ViewDataBinding;Landroidx/databinding/ViewDataBinding$1;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    .line 434
    :cond_3
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_4
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    .line 436
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p0, v1

    if-eqz v2, :cond_5

    .line 438
    invoke-virtual {v2, p1}, Landroidx/databinding/WeakListener;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected setRootTag(Landroid/view/View;)V
    .locals 1

    .line 353
    sget v0, Landroidx/databinding/library/R$id;->dataBinding:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method protected setRootTag([Landroid/view/View;)V
    .locals 4

    .line 360
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 361
    sget v3, Landroidx/databinding/library/R$id;->dataBinding:I

    invoke-virtual {v2, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract setVariable(ILjava/lang/Object;)Z
.end method

.method public unbind()V
    .locals 3

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    .line 555
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 557
    invoke-virtual {v2}, Landroidx/databinding/WeakListener;->unregister()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected unregisterFrom(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    .line 599
    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    .line 601
    invoke-virtual {p0}, Landroidx/databinding/WeakListener;->unregister()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/lifecycle/LiveData<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/databinding/ViewDataBinding;->CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/CreateWeakListener;

    .line 691
    invoke-virtual {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    .line 694
    throw p1
.end method

.method protected updateRegistration(ILandroidx/databinding/Observable;)Z
    .locals 1

    sget-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_PROPERTY_LISTENER:Landroidx/databinding/CreateWeakListener;

    .line 668
    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result p0

    return p0
.end method

.method protected updateRegistration(ILandroidx/databinding/ObservableList;)Z
    .locals 1

    sget-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_LIST_LISTENER:Landroidx/databinding/CreateWeakListener;

    .line 675
    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result p0

    return p0
.end method

.method protected updateRegistration(ILandroidx/databinding/ObservableMap;)Z
    .locals 1

    sget-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_MAP_LISTENER:Landroidx/databinding/CreateWeakListener;

    .line 682
    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result p0

    return p0
.end method

.method protected updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z
    .locals 2

    if-nez p2, :cond_0

    .line 649
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->unregisterFrom(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    .line 651
    aget-object v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 653
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->registerTo(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)V

    return v1

    .line 656
    :cond_1
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_2

    const/4 p0, 0x0

    return p0

    .line 659
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->unregisterFrom(I)Z

    .line 660
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->registerTo(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)V

    return v1
.end method
