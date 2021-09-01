.class Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickPaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quickpay/QuickPaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInstallAndUninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;->this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 603
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 604
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 605
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 606
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const-string p2, "com.tencent.mm"

    .line 609
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "com.eg.android.AlipayGphone"

    .line 610
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "net.one97.paytm"

    .line 611
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 612
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;->this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

    invoke-static {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->access$200(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V

    :cond_3
    return-void
.end method
