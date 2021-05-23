.class Lcom/android/server/engineer/zta$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/engineer/zta;->gck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/engineer/zta;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/zta$zta;->zta:Lcom/android/server/engineer/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/engineer/zta$zta;->zta:Lcom/android/server/engineer/zta;

    invoke-static {p0}, Lcom/android/server/engineer/zta;->zta(Lcom/android/server/engineer/zta;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "EngineerShell_NfcUtils"

    const-string v1, "init: establish SE Service failed, because be interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
