.class Lcom/oneplus/android/server/openid/tsu$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/openid/tsu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/openid/tsu;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/openid/tsu;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/tsu$sis;->zta:Lcom/oneplus/android/server/openid/tsu;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/openid/tsu$sis;->zta:Lcom/oneplus/android/server/openid/tsu;

    invoke-static {p0}, Lcom/oneplus/android/server/openid/tsu;->cno(Lcom/oneplus/android/server/openid/tsu;)V

    :goto_0
    return-void
.end method
