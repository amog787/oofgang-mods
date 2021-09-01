.class public Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;
.super Ljava/lang/Object;
.source "ContextualCardFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProvider;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$getContextualCards$0(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;->resetDismissedTime(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getContextualCards()Landroid/database/Cursor;
    .locals 11

    .line 44
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long v9, v2, v4

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 49
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v5, v2

    const-string v2, "cards"

    const/4 v3, 0x0

    const-string v4, "dismissed_timestamp < ? OR dismissed_timestamp IS NULL"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "score DESC"

    .line 50
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardFeatureProviderImpl$V84fKcnoWyvn2KgzM2hfP00Ikqk;

    invoke-direct {v1, p0, v9, v10}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardFeatureProviderImpl$V84fKcnoWyvn2KgzM2hfP00Ikqk;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;J)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public synthetic lambda$getContextualCards$0$ContextualCardFeatureProviderImpl(J)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;->lambda$getContextualCards$0(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public markCardAsDismissed(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 59
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 60
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dismissed_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "cards"

    const-string v2, "name=?"

    .line 64
    invoke-virtual {p0, p2, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->DELETE_CARD_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p0
.end method

.method resetDismissedTime(J)I
    .locals 2

    .line 71
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 73
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "dismissed_timestamp"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 77
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "cards"

    const-string p2, "dismissed_timestamp < ? AND dismissed_timestamp IS NOT NULL"

    .line 78
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 79
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Reset "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " records of dismissed time."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextualCardFeatureProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method
