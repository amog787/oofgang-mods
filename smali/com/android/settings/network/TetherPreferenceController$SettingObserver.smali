.class Lcom/android/settings/network/TetherPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "TetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/TetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/TetherPreferenceController;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    .line 255
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "airplane_mode_on"

    .line 256
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 261
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 262
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;->uri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 263
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/TetherPreferenceController;->access$100(Lcom/android/settings/network/TetherPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "airplane_mode_on"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 269
    iget-object p0, p0, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/TetherPreferenceController;->access$200(Lcom/android/settings/network/TetherPreferenceController;)V

    :cond_1
    return-void
.end method
