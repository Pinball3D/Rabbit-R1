.class public final synthetic Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/flutter/embedding/android/KeyEmbedderResponder;

.field public final synthetic f$1:Lio/flutter/embedding/android/KeyboardMap$KeyPair;

.field public final synthetic f$2:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/android/KeyEmbedderResponder;Lio/flutter/embedding/android/KeyboardMap$KeyPair;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda2;->f$0:Lio/flutter/embedding/android/KeyEmbedderResponder;

    iput-object p2, p0, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda2;->f$1:Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    iput-object p3, p0, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda2;->f$2:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda2;->f$0:Lio/flutter/embedding/android/KeyEmbedderResponder;

    iget-object v1, p0, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda2;->f$1:Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    iget-object p0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda2;->f$2:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1, p0}, Lio/flutter/embedding/android/KeyEmbedderResponder;->lambda$synchronizePressingKey$1$io-flutter-embedding-android-KeyEmbedderResponder(Lio/flutter/embedding/android/KeyboardMap$KeyPair;Landroid/view/KeyEvent;)V

    return-void
.end method
