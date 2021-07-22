.class Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PersistentHitStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/PersistentHitStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UrlDatabaseHelper"
.end annotation


# instance fields
.field private mBadDatabase:Z

.field private mLastDatabaseCheckTime:J

.field final synthetic this$0:Lcom/google/tagmanager/PersistentHitStore;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/PersistentHitStore;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 558
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 560
    invoke-direct {p0, p2, p3, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/16 p1, 0x0

    .line 548
    iput-wide p1, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mLastDatabaseCheckTime:J

    return-void
.end method

.method private tablePresent(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9

    const/4 p0, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "SQLITE_MASTER"

    const-string v1, "name"

    .line 577
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "name=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 584
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 590
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 586
    :catch_0
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error querying for table "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 590
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method private validateColumnsPresent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string p0, "SELECT * FROM gtm_hits WHERE 0"

    const/4 v0, 0x0

    .line 658
    invoke-virtual {p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 660
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 662
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 663
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 664
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const-string p0, "hit_id"

    .line 670
    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "hit_url"

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "hit_time"

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "hit_first_send_time"

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 677
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 678
    :cond_1
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const-string p1, "Database has extra columns"

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 674
    :cond_2
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const-string p1, "Database column missing"

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    .line 667
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 604
    iget-boolean v0, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mBadDatabase:Z

    if-eqz v0, :cond_1

    .line 608
    iget-wide v0, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mLastDatabaseCheckTime:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    invoke-static {v2}, Lcom/google/tagmanager/PersistentHitStore;->access$100(Lcom/google/tagmanager/PersistentHitStore;)Lcom/google/tagmanager/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 610
    :cond_0
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database creation failed"

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 614
    iput-boolean v1, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mBadDatabase:Z

    .line 615
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    invoke-static {v1}, Lcom/google/tagmanager/PersistentHitStore;->access$100(Lcom/google/tagmanager/PersistentHitStore;)Lcom/google/tagmanager/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mLastDatabaseCheckTime:J

    .line 617
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 620
    :catch_0
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    invoke-static {v1}, Lcom/google/tagmanager/PersistentHitStore;->access$400(Lcom/google/tagmanager/PersistentHitStore;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    invoke-static {v2}, Lcom/google/tagmanager/PersistentHitStore;->access$300(Lcom/google/tagmanager/PersistentHitStore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_1
    if-nez v0, :cond_2

    .line 623
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    .line 625
    iput-boolean v1, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mBadDatabase:Z

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 684
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/FutureApis;->setOwnerOnlyReadWrite(Ljava/lang/String;)Z

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 633
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "PRAGMA journal_mode=memory"

    .line 634
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 637
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_0
    :goto_0
    const-string v0, "gtm_hits"

    .line 642
    invoke-direct {p0, v0, p1}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->tablePresent(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    invoke-static {}, Lcom/google/tagmanager/PersistentHitStore;->access$500()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 645
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->validateColumnsPresent(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
