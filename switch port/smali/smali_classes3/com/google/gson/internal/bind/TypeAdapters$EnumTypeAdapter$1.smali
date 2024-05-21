.class Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;

.field final synthetic val$field:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;Ljava/lang/reflect/Field;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;->this$0:Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;

    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;->val$field:Ljava/lang/reflect/Field;

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 786
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;->run()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Void;
    .locals 1

    iget-object p0, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;->val$field:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    .line 788
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p0, 0x0

    return-object p0
.end method
