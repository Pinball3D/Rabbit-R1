.class Lcom/google/gson/internal/bind/TypeAdapters$35$1;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters$35;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/internal/bind/TypeAdapters$35;

.field final synthetic val$requestedType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/bind/TypeAdapters$35;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$35$1;->this$0:Lcom/google/gson/internal/bind/TypeAdapters$35;

    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$35$1;->val$requestedType:Ljava/lang/Class;

    .line 902
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$35$1;->this$0:Lcom/google/gson/internal/bind/TypeAdapters$35;

    .line 908
    iget-object v0, v0, Lcom/google/gson/internal/bind/TypeAdapters$35;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$35$1;->val$requestedType:Ljava/lang/Class;

    .line 909
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/gson/internal/bind/TypeAdapters$35$1;->val$requestedType:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " but was "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 911
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT1;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/gson/internal/bind/TypeAdapters$35$1;->this$0:Lcom/google/gson/internal/bind/TypeAdapters$35;

    .line 904
    iget-object p0, p0, Lcom/google/gson/internal/bind/TypeAdapters$35;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
