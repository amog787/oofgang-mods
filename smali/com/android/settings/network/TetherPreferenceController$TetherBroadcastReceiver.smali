.class Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/TetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/TetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/network/TetherPreferenceController;->updateSummary()V

    return-void
.end method
