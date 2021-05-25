.class Lcom/oneplus/server/zta$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/zta;->t(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/server/zta;


# direct methods
.method constructor <init>(Lcom/oneplus/server/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/zta$you;->zta:Lcom/oneplus/server/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/zta$you;->zta:Lcom/oneplus/server/zta;

    invoke-static {v0}, Lcom/oneplus/server/zta;->lqr(Lcom/oneplus/server/zta;)Z

    move-result v1

    const-string v2, "Take the initiative in retrieving online config"

    invoke-static {v0, v1, v2}, Lcom/oneplus/server/zta;->vju(Lcom/oneplus/server/zta;ZLjava/lang/String;)V

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/oneplus/server/zta$you;->zta:Lcom/oneplus/server/zta;

    invoke-static {v1}, Lcom/oneplus/server/zta;->bud(Lcom/oneplus/server/zta;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "DynamicVsync"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/server/zta$you;->zta:Lcom/oneplus/server/zta;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oneplus/server/zta;->les(Lcom/oneplus/server/zta;Lorg/json/JSONArray;)V

    return-void
.end method
