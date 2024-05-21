.class public Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;
.super Ljava/lang/Object;
.source "KeyboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/KeyboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharacterCombiner"
.end annotation


# instance fields
.field private combiningCharacter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->combiningCharacter:I

    return-void
.end method


# virtual methods
.method applyCombiningCharacterToBaseCharacter(I)Ljava/lang/Character;
    .locals 2

    int-to-char v0, p1

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    iget v1, p0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->combiningCharacter:I

    if-eqz v1, :cond_0

    .line 92
    invoke-static {v1, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result p1

    iput p1, p0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->combiningCharacter:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->combiningCharacter:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->combiningCharacter:I

    if-eqz v1, :cond_3

    .line 100
    invoke-static {v1, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result p1

    if-lez p1, :cond_2

    int-to-char v0, p1

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->combiningCharacter:I

    .line 108
    :cond_3
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method
