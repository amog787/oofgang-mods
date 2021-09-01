.class final Lcom/google/common/io/Closer$SuppressingSuppressor;
.super Ljava/lang/Object;
.source "Closer.java"

# interfaces
.implements Lcom/google/common/io/Closer$Suppressor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 262
    new-instance v0, Lcom/google/common/io/Closer$SuppressingSuppressor;

    invoke-direct {v0}, Lcom/google/common/io/Closer$SuppressingSuppressor;-><init>()V

    .line 268
    invoke-static {}, Lcom/google/common/io/Closer$SuppressingSuppressor;->getAddSuppressed()Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAddSuppressed()Ljava/lang/reflect/Method;
    .locals 5

    .line 272
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method
