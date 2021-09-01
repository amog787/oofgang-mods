.class Lcom/android/settingslib/wifi/WifiTracker$2$2;
.super Ljava/lang/Object;
.source "WifiTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/wifi/WifiTracker$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker$2;Landroid/content/SharedPreferences$Editor;Landroid/content/Context;)V
    .locals 0

    .line 955
    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settingslib/wifi/WifiTracker$2$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 958
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "avoid_bad_wifi_connection_dialog_button_clicked"

    const-string/jumbo v1, "yes"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 959
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 960
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 961
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.WIFI_IP_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 962
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 963
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2$2;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
