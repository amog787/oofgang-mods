.class Lcom/oneplus/server/theme/OnePlusFontController$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/theme/OnePlusFontController;->prepareDebugEnv(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/server/theme/OnePlusFontController;


# direct methods
.method constructor <init>(Lcom/oneplus/server/theme/OnePlusFontController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/theme/OnePlusFontController$you;->zta:Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "Debug CMD Received-------------------"

    invoke-static {p1}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    :try_start_0
    const-string p1, "opfontid"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "userid"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object p0, p0, Lcom/oneplus/server/theme/OnePlusFontController$you;->zta:Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-virtual {p0, p2, p1}, Lcom/oneplus/server/theme/OnePlusFontController;->changeFontForUser(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
