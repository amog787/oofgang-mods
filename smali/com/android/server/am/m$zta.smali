.class Lcom/android/server/am/m$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/m;


# direct methods
.method constructor <init>(Lcom/android/server/am/m;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/m$zta;->zta:Lcom/android/server/am/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/lqr;->n:Z

    if-eqz v0, :cond_0

    const-string v0, "StartAppDiagnosisUtil"

    const-string v1, "start checking today\'s file and expired files"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/m$zta;->zta:Lcom/android/server/am/m;

    invoke-static {v0}, Lcom/android/server/am/m;->zta(Lcom/android/server/am/m;)V

    iget-object v0, p0, Lcom/android/server/am/m$zta;->zta:Lcom/android/server/am/m;

    invoke-static {v0}, Lcom/android/server/am/m;->you(Lcom/android/server/am/m;)V

    iget-object v0, p0, Lcom/android/server/am/m$zta;->zta:Lcom/android/server/am/m;

    invoke-static {v0}, Lcom/android/server/am/m;->sis(Lcom/android/server/am/m;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/m$zta;->zta:Lcom/android/server/am/m;

    invoke-static {v2}, Lcom/android/server/am/m;->tsu(Lcom/android/server/am/m;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
