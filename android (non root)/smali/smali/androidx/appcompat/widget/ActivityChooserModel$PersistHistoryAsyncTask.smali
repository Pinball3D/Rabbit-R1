.class final Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserModel;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserModel;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    .line 1041
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1038
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 14

    const-string v0, "historical-record"

    const-string v1, "historical-records"

    const-string v2, "Error writing historical record file: "

    const/4 v3, 0x0

    .line 1046
    aget-object v4, p1, v3

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x1

    .line 1047
    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/String;

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    .line 1052
    iget-object v7, v7, Landroidx/appcompat/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1058
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 1061
    :try_start_1
    invoke-interface {v7, p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v8, "UTF-8"

    .line 1062
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1063
    invoke-interface {v7, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1065
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    move v9, v3

    :goto_0
    if-ge v9, v8, :cond_0

    .line 1067
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    .line 1068
    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "activity"

    .line 1069
    iget-object v12, v10, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 1070
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    .line 1069
    invoke-interface {v7, v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "time"

    .line 1071
    iget-wide v12, v10, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "weight"

    .line 1072
    iget v10, v10, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1073
    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1079
    :cond_0
    invoke-interface {v7, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1080
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    .line 1092
    iput-boolean v5, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz p1, :cond_1

    .line 1095
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1090
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    .line 1092
    iput-boolean v5, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1088
    :try_start_4
    sget-object v1, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    .line 1092
    iput-boolean v5, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :catch_2
    move-exception v0

    .line 1086
    :try_start_5
    sget-object v1, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    .line 1092
    iput-boolean v5, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :catch_3
    :cond_1
    :goto_2
    return-object v6

    :goto_3
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iput-boolean v5, p0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz p1, :cond_2

    .line 1095
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1100
    :catch_4
    :cond_2
    throw v0

    :catch_5
    move-exception p0

    .line 1054
    sget-object v0, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6
.end method
