.class Lcom/oneplus/settings/receiver/SettingsReceiver$2;
.super Ljava/lang/Object;
.source "SettingsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/receiver/SettingsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/receiver/SettingsReceiver;Landroid/content/Context;)V
    .locals 0

    .line 206
    iput-object p2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 210
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const/16 v1, 0x3e7

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$2;->val$context:Landroid/content/Context;

    const-string v2, "com.google.android.gms"

    invoke-static {v0, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->installMultiApp(Landroid/content/Context;Ljava/lang/String;I)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$2;->val$context:Landroid/content/Context;

    const-string v2, "org.ifaa.aidl.manager"

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object p0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {p0, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->installMultiApp(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$2;->val$context:Landroid/content/Context;

    const-string v0, "com.oneplus.ifaaservice"

    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->installMultiApp(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
