.class Lcom/oneplus/server/hypnus/zta$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/hypnus/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/server/hypnus/zta;


# direct methods
.method constructor <init>(Lcom/oneplus/server/hypnus/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/hypnus/zta$zta;->zta:Lcom/oneplus/server/hypnus/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "HypnusDaemonUtil"

    const-string v1, "HypnusDaemonUtil binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/server/hypnus/zta$zta;->zta:Lcom/oneplus/server/hypnus/zta;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/server/hypnus/zta;->zta(Lcom/oneplus/server/hypnus/zta;Landroid/os/IBinder;)Landroid/os/IBinder;

    return-void
.end method
