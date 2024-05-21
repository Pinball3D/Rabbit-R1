.class Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;
.super Ljava/lang/Object;
.source "AccessibilityViewEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityViewEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectionAccessors"
.end annotation


# instance fields
.field private final childNodeIdsField:Ljava/lang/reflect/Field;

.field private final getChildId:Ljava/lang/reflect/Method;

.field private final getParentNodeId:Ljava/lang/reflect/Method;

.field private final getRecordSourceNodeId:Ljava/lang/reflect/Method;

.field private final getSourceNodeId:Ljava/lang/reflect/Method;

.field private final longArrayGetIndex:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 10

    const-string v0, "getSourceNodeId"

    const-string v1, "AccessibilityBridge"

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 446
    :try_start_0
    const-class v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "can\'t invoke AccessibilityNodeInfo#getSourceNodeId with reflection"

    .line 448
    invoke-static {v1, v4}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 451
    :goto_0
    :try_start_1
    const-class v5, Landroid/view/accessibility/AccessibilityRecord;

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "can\'t invoke AccessibiiltyRecord#getSourceNodeId with reflection"

    .line 453
    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 471
    :goto_1
    :try_start_2
    const-class v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v6, "mChildNodeIds"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x1

    .line 472
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v7, "android.util.LongArray"

    .line 475
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "get"

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v2

    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v2, "can\'t access childNodeIdsField with reflection"

    .line 480
    invoke-static {v1, v2}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    move-object v5, v1

    :goto_2
    iput-object v4, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getSourceNodeId:Ljava/lang/reflect/Method;

    iput-object v3, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getParentNodeId:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getRecordSourceNodeId:Ljava/lang/reflect/Method;

    iput-object v3, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getChildId:Ljava/lang/reflect/Method;

    iput-object v5, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->childNodeIdsField:Ljava/lang/reflect/Field;

    iput-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->longArrayGetIndex:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/view/AccessibilityViewEmbedder$1;)V
    .locals 0

    .line 429
    invoke-direct {p0}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 0

    .line 429
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(J)I
    .locals 0

    .line 429
    invoke-static {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getVirtualNodeId(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 0

    .line 429
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getParentNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;
    .locals 0

    .line 429
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getChildId(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;
    .locals 0

    .line 429
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getRecordSourceNodeId(Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private getChildId(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;
    .locals 5

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getChildId:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->childNodeIdsField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->longArrayGetIndex:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "AccessibilityBridge"

    if-eqz v0, :cond_2

    :try_start_0
    new-array p0, v3, [Ljava/lang/Object;

    .line 519
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v2

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "The getChildId method threw an exception when invoked."

    .line 528
    invoke-static {v4, p1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Failed to access getChildId method."

    .line 526
    invoke-static {v4, p1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->longArrayGetIndex:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->childNodeIdsField:Ljava/lang/reflect/Field;

    .line 532
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    const-string p1, "The longArrayGetIndex method threw an exception when invoked."

    .line 541
    invoke-static {v4, p1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p0

    const-string p1, "Failed to access longArrayGetIndex method or the childNodeId field."

    .line 539
    invoke-static {v4, p1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method private getParentNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 3

    const-string v0, "AccessibilityBridge"

    iget-object p0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getParentNodeId:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 551
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "The getParentNodeId method threw an exception when invoked."

    .line 560
    invoke-static {v0, v1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v1, "Failed to access getParentNodeId method."

    .line 558
    invoke-static {v0, v1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 565
    :cond_0
    :goto_0
    invoke-static {p1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->yoinkParentIdFromParcel(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private getRecordSourceNodeId(Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;
    .locals 3

    const-string v0, "AccessibilityBridge"

    iget-object p0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getRecordSourceNodeId:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 621
    invoke-virtual {p0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "The getRecordSourceNodeId method threw an exception when invoked."

    .line 625
    invoke-static {v0, p1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Failed to access the getRecordSourceNodeId method."

    .line 623
    invoke-static {v0, p1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method private getSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 3

    const-string v0, "AccessibilityBridge"

    iget-object p0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->getSourceNodeId:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 503
    invoke-virtual {p0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "The getSourceNodeId method threw an exception when invoked."

    .line 507
    invoke-static {v0, p1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Failed to access getSourceNodeId method."

    .line 505
    invoke-static {v0, p1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method private static getVirtualNodeId(J)I
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static isBitSet(JI)Z
    .locals 2

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static yoinkParentIdFromParcel(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .locals 4

    .line 583
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    .line 584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 585
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 586
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 591
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 594
    invoke-static {v2, v3, v1}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->isBitSet(JI)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 595
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    :cond_0
    const/4 p0, 0x1

    .line 597
    invoke-static {v2, v3, p0}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->isBitSet(JI)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 598
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    :cond_1
    const/4 p0, 0x2

    .line 600
    invoke-static {v2, v3, p0}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->isBitSet(JI)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    :cond_2
    const/4 p0, 0x3

    .line 603
    invoke-static {v2, v3, p0}, Lio/flutter/view/AccessibilityViewEmbedder$ReflectionAccessors;->isBitSet(JI)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 607
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method
