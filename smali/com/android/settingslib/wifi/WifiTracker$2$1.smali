.class Lcom/android/settingslib/wifi/WifiTracker$2$1;
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
.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker$2;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 966
    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 969
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "avoid_bad_wifi_connection_dialog_button_clicked"

    const-string/jumbo v1, "yes"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 970
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 971
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
