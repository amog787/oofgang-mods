.class Lcom/google/tagmanager/PersistentHitStore;
.super Ljava/lang/Object;
.source "PersistentHitStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;,
        Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;
    }
.end annotation


# static fields
.field private static final CREATE_HITS_TABLE:Ljava/lang/String;

.field static final HITS_TABLE:Ljava/lang/String; = "gtm_hits"

.field static final HIT_FIRST_DISPATCH_TIME:Ljava/lang/String; = "hit_first_send_time"

.field static final HIT_ID:Ljava/lang/String; = "hit_id"

.field static final HIT_TIME:Ljava/lang/String; = "hit_time"

.field static final HIT_URL:Ljava/lang/String; = "hit_url"


# instance fields
.field private mClock:Lcom/google/tagmanager/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "gtm_hits"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hit_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hit_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hit_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hit_first_send_time"

    aput-object v2, v0, v1

    const-string v1, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL,\'%s\' INTEGER NOT NULL);"

    .line 55
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/PersistentHitStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    .line 105
    iput-object p3, p0, Lcom/google/tagmanager/PersistentHitStore;->mDatabaseName:Ljava/lang/String;

    .line 107
    new-instance p1, Lcom/google/tagmanager/PersistentHitStore$1;

    invoke-direct {p1, p0}, Lcom/google/tagmanager/PersistentHitStore$1;-><init>(Lcom/google/tagmanager/PersistentHitStore;)V

    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    .line 113
    new-instance p1, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    iget-object p2, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/tagmanager/PersistentHitStore;->mDatabaseName:Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;-><init>(Lcom/google/tagmanager/PersistentHitStore;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    .line 114
    new-instance p1, Lcom/google/tagmanager/SimpleNetworkDispatcher;

    new-instance p2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object p3, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;-><init>(Lcom/google/tagmanager/PersistentHitStore;)V

    invoke-direct {p1, p2, p3, v0}, Lcom/google/tagmanager/SimpleNetworkDispatcher;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/PersistentHitStore;)Lcom/google/tagmanager/Clock;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/tagmanager/PersistentHitStore;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDatabaseName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/tagmanager/PersistentHitStore;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/tagmanager/PersistentHitStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getDbHelper()Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    return-object p0
.end method

.method getHelper()Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    return-object p0
.end method

.method public setClock(Lcom/google/tagmanager/Clock;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    return-void
.end method

.method setDispatcher(Lcom/google/tagmanager/Dispatcher;)V
    .locals 0

    return-void
.end method

.method setLastDeleteStaleHitsTime(J)V
    .locals 0

    return-void
.end method
