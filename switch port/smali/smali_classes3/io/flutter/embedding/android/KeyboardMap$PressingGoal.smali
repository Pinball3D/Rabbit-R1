.class public Lio/flutter/embedding/android/KeyboardMap$PressingGoal;
.super Ljava/lang/Object;
.source "KeyboardMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/KeyboardMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PressingGoal"
.end annotation


# instance fields
.field public final keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

.field public final mask:I


# direct methods
.method public constructor <init>(I[Lio/flutter/embedding/android/KeyboardMap$KeyPair;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->mask:I

    iput-object p2, p0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    return-void
.end method
