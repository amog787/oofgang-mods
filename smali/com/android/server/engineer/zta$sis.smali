.class Lcom/android/server/engineer/zta$sis;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/engineer/zta;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/zta$sis;->zta:Lcom/android/server/engineer/zta;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string p0, "EngineerShell_NfcUtils"

    const-string v0, "Get SE Service TIMEOUT"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
