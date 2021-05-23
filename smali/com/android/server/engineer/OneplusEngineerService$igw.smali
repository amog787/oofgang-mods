.class final Lcom/android/server/engineer/OneplusEngineerService$igw;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "igw"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/engineer/OneplusEngineerService;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$igw;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    const-string p1, "OneplusEngineerService"

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$igw;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->igw(Lcom/android/server/engineer/OneplusEngineerService;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/engineer/OneplusEngineerService;->sis(Lcom/android/server/engineer/OneplusEngineerService;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0xf4278

    const/16 p2, 0x200

    new-array v0, p2, [B

    invoke-static {p0, v0, p2}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    :try_start_0
    const-string p2, "sys.oem.production.login.mode"

    const-string v0, ""

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set download mode property caught exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reset download model flag result = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
