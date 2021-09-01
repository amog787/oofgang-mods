.class Lcom/oneplus/settings/packageuninstaller/EventResultPersister;
.super Ljava/lang/Object;
.source "EventResultPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;,
        Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EventResultPersister"


# instance fields
.field private mCounter:I

.field private mIsPersistScheduled:Z

.field private mIsPersistingStateValid:Z

.field private final mLock:Ljava/lang/Object;

.field private final mResults:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultsFile:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 10

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 139
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    const p1, -0x7fffffff

    .line 140
    iput p1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    .line 142
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 144
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 146
    invoke-static {v0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 147
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 148
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "results"

    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "counter"

    .line 150
    invoke-static {v0, v1}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    goto :goto_1

    :cond_0
    const-string v2, "result"

    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "id"

    .line 152
    invoke-static {v0, v1}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    const-string v2, "status"

    .line 153
    invoke-static {v0, v2}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    const-string v2, "legacyStatus"

    .line 154
    invoke-static {v0, v2}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    const-string v2, "statusMessage"

    .line 155
    invoke-static {v0, v2}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 157
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    new-instance v9, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;-><init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;IILjava/lang/String;Lcom/oneplus/settings/packageuninstaller/EventResultPersister$1;)V

    invoke-virtual {v2, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    :goto_1
    invoke-static {v0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has two results"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unexpected tag"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz p1, :cond_5

    .line 168
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_4

    .line 142
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 169
    :catch_0
    iget-object p1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 170
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->writeState()V

    :cond_5
    :goto_3
    return-void
.end method

.method private synthetic lambda$writeState$0()V
    .locals 9

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    .line 233
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x1

    .line 234
    iput-boolean v3, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistingStateValid:Z

    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 239
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    .line 241
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 242
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 243
    invoke-interface {v6, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "results"

    .line 245
    invoke-interface {v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "counter"

    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_1

    const-string v7, "result"

    .line 250
    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "id"

    .line 252
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 251
    invoke-interface {v6, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "status"

    .line 254
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    iget v8, v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->status:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 253
    invoke-interface {v6, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "legacyStatus"

    .line 256
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    iget v8, v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->legacyStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 255
    invoke-interface {v6, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    iget-object v7, v7, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->message:Ljava/lang/String;

    if-eqz v7, :cond_0

    const-string v7, "statusMessage"

    .line 259
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;

    iget-object v8, v8, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResult;->message:Ljava/lang/String;

    .line 258
    invoke-interface {v6, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v7, "result"

    .line 261
    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "results"

    .line 264
    invoke-interface {v6, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 265
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 267
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_2
    if-eqz v4, :cond_2

    .line 270
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 273
    :cond_2
    sget-object v2, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error writing results"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 279
    :goto_3
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_3
    iget-boolean v2, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistingStateValid:Z

    if-eqz v2, :cond_3

    .line 281
    iput-boolean v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistScheduled:Z

    .line 282
    monitor-exit v1

    return-void

    .line 284
    :cond_3
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 235
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private static nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method private static readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeState()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 220
    :try_start_0
    iput-boolean v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistingStateValid:Z

    .line 222
    iget-boolean v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistScheduled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 223
    iput-boolean v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mIsPersistScheduled:Z

    .line 225
    new-instance v1, Lcom/oneplus/settings/packageuninstaller/-$$Lambda$EventResultPersister$zHzPUvQ151m1efiCPydr8fc75IA;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/packageuninstaller/-$$Lambda$EventResultPersister$zHzPUvQ151m1efiCPydr8fc75IA;-><init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 288
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getNewId()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 84
    iget v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    .line 85
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->writeState()V

    .line 87
    iget p0, p0, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->mCounter:I

    add-int/lit8 p0, p0, -0x1

    monitor-exit v0

    return p0

    .line 81
    :cond_0
    new-instance v1, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;-><init>(Lcom/oneplus/settings/packageuninstaller/EventResultPersister;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$writeState$0$EventResultPersister()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->lambda$writeState$0()V

    return-void
.end method
