.class public final Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;
.super Lcom/oneplus/android/server/heytapbusiness/tsu/zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/android/server/heytapbusiness/tsu/zta<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final rtg:Ljava/lang/String; = "OpHeytapBusiness[login]"

.field private static final ssp:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta$zta;

    invoke-direct {v0}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta$zta;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->ssp:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;-><init>()V

    return-void
.end method

.method public static kth()Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->ssp:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;

    return-object v0
.end method


# virtual methods
.method public varargs bio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public varargs cno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    monitor-enter p3

    :try_start_0
    iget-object p4, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result p4

    const/16 v0, 0x14

    if-le p4, v0, :cond_1

    iget-object p4, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    invoke-virtual {p4}, Landroid/util/ArrayMap;->clear()V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public igw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_1
    const-string p0, "com.nearme.instant.platform"

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic rtg(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->igw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sis()Ljava/lang/String;
    .locals 0

    const-string p0, "login"

    return-object p0
.end method

.method public bridge synthetic ssp(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->wtn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic tsu(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->bio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public wtn(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.nearme.instant.platform"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public you(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "login={"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", replace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "}"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic zta(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->cno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
