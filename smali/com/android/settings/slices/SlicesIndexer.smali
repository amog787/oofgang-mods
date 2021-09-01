.class Lcom/android/settings/slices/SlicesIndexer;
.super Ljava/lang/Object;
.source "SlicesIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings/slices/SlicesIndexer;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/slices/SlicesDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    return-void
.end method


# virtual methods
.method getSliceData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/settings/slices/SlicesIndexer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/slices/SlicesIndexer;->mContext:Landroid/content/Context;

    .line 93
    invoke-interface {v0, p0}, Lcom/android/settings/slices/SlicesFeatureProvider;->getSliceDataConverter(Landroid/content/Context;)Lcom/android/settings/slices/SliceDataConverter;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDataConverter;->getSliceData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected indexSliceData()V
    .locals 6

    .line 64
    iget-object v0, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->isSliceDataIndexed()Z

    move-result v0

    const-string v1, "SlicesIndexer"

    if-eqz v0, :cond_0

    const-string p0, "Slices already indexed - returning."

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 72
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 74
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v4, v0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesIndexer;->getSliceData()Ljava/util/List;

    move-result-object v4

    .line 76
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/slices/SlicesIndexer;->insertSliceData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 78
    iget-object p0, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->setIndexedState()V

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Indexing slices database took: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 86
    throw p0
.end method

.method insertSliceData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/slices/SliceData;

    .line 102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 103
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slice_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "summary"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screentitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getKeywords()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keywords"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getFragmentClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getPreferenceController()Ljava/lang/String;

    move-result-object v1

    const-string v2, "controller"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getSliceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "slice_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getUnavailableSliceSubtitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unavailable_slice_subtitle"

    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->isPublicSlice()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "public_slice"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 p2, 0x0

    const-string v1, "slices_index"

    .line 120
    invoke-virtual {p1, v1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesIndexer;->indexSliceData()V

    return-void
.end method
