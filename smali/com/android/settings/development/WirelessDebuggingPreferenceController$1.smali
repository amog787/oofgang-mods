.class Lcom/android/settings/development/WirelessDebuggingPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "WirelessDebuggingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/WirelessDebuggingPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/WirelessDebuggingPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/WirelessDebuggingPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController$1;->this$0:Lcom/android/settings/development/WirelessDebuggingPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController$1;->this$0:Lcom/android/settings/development/WirelessDebuggingPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->access$000(Lcom/android/settings/development/WirelessDebuggingPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
