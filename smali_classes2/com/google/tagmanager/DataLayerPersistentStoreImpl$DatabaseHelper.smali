.class Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataLayerPersistentStoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 388
    iput-object p1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 390
    invoke-direct {p0, p2, p3, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private tablePresent(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9

    const/4 p0, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "SQLITE_MASTER"

    const-string v1, "name"

    .line 407
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

    .line 414
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 420
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 416
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

    .line 420
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

    const-string p0, "SELECT * FROM datalayer WHERE 0"

    const/4 v0, 0x0

    .line 475
    invoke-virtual {p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 477
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 479
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 480
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 481
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const-string p0, "key"

    .line 487
    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "value"

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "ID"

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "expires"

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 494
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 495
    :cond_1
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const-string p1, "Database has extra columns"

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 491
    :cond_2
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const-string p1, "Database column missing"

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    .line 484
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 436
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->this$0:Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    invoke-static {v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->access$300(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_tagmanager.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 442
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 501
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/FutureApis;->setOwnerOnlyReadWrite(Ljava/lang/String;)Z

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "PRAGMA journal_mode=memory"

    .line 452
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 455
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_0
    :goto_0
    const-string v0, "datalayer"

    .line 460
    invoke-direct {p0, v0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->tablePresent(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    invoke-static {}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->access$400()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->validateColumnsPresent(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
