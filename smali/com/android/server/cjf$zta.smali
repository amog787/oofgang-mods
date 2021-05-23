.class Lcom/android/server/cjf$zta;
.super Lcom/android/server/cjf$igw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cjf;->registerObserver(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/cjf;


# direct methods
.method constructor <init>(Lcom/android/server/cjf;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cjf$zta;->sis:Lcom/android/server/cjf;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cjf$igw;-><init>(Lcom/android/server/cjf;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method zta(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cjf$zta;->sis:Lcom/android/server/cjf;

    invoke-static {v0}, Lcom/android/server/cjf;->zta(Lcom/android/server/cjf;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/cjf$zta;->sis:Lcom/android/server/cjf;

    invoke-static {p0, p1}, Lcom/android/server/cjf;->you(Lcom/android/server/cjf;Z)Z

    invoke-static {}, Lcom/android/server/cjf;->sis()Lcom/android/server/cjf$bio;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/cjf;->sis()Lcom/android/server/cjf$bio;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/cjf$bio;->tsu()V

    :cond_0
    return-void
.end method
