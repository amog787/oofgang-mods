.class Lcom/android/server/cjf$bio$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cjf$bio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/cjf$bio;


# direct methods
.method constructor <init>(Lcom/android/server/cjf$bio;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cjf$bio$zta;->zta:Lcom/android/server/cjf$bio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/cjf$bio$zta;->zta:Lcom/android/server/cjf$bio;

    invoke-virtual {p0}, Lcom/android/server/cjf$bio;->tsu()V

    return-void
.end method
